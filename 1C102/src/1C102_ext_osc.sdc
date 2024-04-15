//Copyright (C)2014-2024 GOWIN Semiconductor Corporation.
//All rights reserved.
//File Title: Timing Constraints file
//Tool Version: V1.9.9.01 (64-bit) 
//Created Time: 2024-04-13 19:14:42
create_clock -name tck_pad -period 50 -waveform {0 25} [get_ports {tck_pad_i}]
create_clock -name CLK_50M -period 20 -waveform {0 10} [get_ports {sys_clk}]
create_generated_clock -name CPU_CLK -source [get_ports {sys_clk}] -master_clock CLK_50M -divide_by 100 -multiply_by 16 [get_nets {clk_gen/cpu_clk}]
create_generated_clock -name MEMORY_CLK -source [get_ports {sys_clk}] -master_clock CLK_50M -divide_by 4 -multiply_by 16 [get_nets {ddr_intf_clk}]
create_generated_clock -name UI_CLK -source [get_nets {ddr_intf_clk}] -master_clock MEMORY_CLK -divide_by 4 -multiply_by 1 [get_nets {ddr_ui_clk}]
set_clock_groups -asynchronous -group [get_clocks {tck_pad}] -group [get_clocks {UI_CLK CLK_50M}]
set_clock_groups -asynchronous -group [get_clocks {MEMORY_CLK}] -group [get_clocks {UI_CLK}]
set_clock_groups -asynchronous -group [get_clocks {CLK_50M}] -group [get_clocks {UI_CLK MEMORY_CLK}]
