//Copyright (C)2014-2024 GOWIN Semiconductor Corporation.
//All rights reserved.
//File Title: Timing Constraints file
//Tool Version: V1.9.9.01 (64-bit) 
//Created Time: 2024-04-13 19:14:42
create_clock -name JTAG_CLK -period 50 -waveform {0 25} [get_ports {tck_pad_i}]
create_clock -name LJTAG_CLK -period 50 -waveform {0 25} [get_ports {LJTAG_TCK}]
create_clock -name CLK_20M -period 50 -waveform {0 25} [get_nets {clk_gen/clk_20M}]
create_generated_clock -name MEMORY_CLK -source [get_nets {clk_gen/clk_20M}] -master_clock CLK_20M -divide_by 4 -multiply_by 40 [get_nets {ddr_intf_clk}]
create_generated_clock -name UI_CLK -source [get_nets {ddr_intf_clk}] -master_clock MEMORY_CLK -divide_by 4 -multiply_by 1 [get_nets {ddr_ui_clk}]
create_generated_clock -name CORE_CLK -source [get_nets {clk_gen/clk_20M}] -master_clock CLK_20M -divide_by 16 -multiply_by 40 [get_nets {core_clk}]
create_generated_clock -name CPU_CLK -source [get_nets {clk_gen/clk_20M}] -master_clock CLK_20M -divide_by 100 -multiply_by 40 [get_nets {clk_gen/PLL/cpu_clk}]
set_clock_groups -asynchronous -group [get_clocks {JTAG_CLK}] -group [get_clocks {CLK_20M MEMORY_CLK UI_CLK CORE_CLK CPU_CLK}]
set_clock_groups -asynchronous -group [get_clocks {CLK_20M}] -group [get_clocks {JTAG_CLK MEMORY_CLK UI_CLK CORE_CLK CPU_CLK}]
set_clock_groups -asynchronous -group [get_clocks {MEMORY_CLK}] -group [get_clocks {UI_CLK CORE_CLK CPU_CLK}]
set_clock_groups -asynchronous -group [get_clocks {UI_CLK}] -group [get_clocks {JTAG_CLK MEMORY_CLK CORE_CLK CPU_CLK}]
set_clock_groups -asynchronous -group [get_clocks {CORE_CLK}] -group [get_clocks {JTAG_CLK MEMORY_CLK UI_CLK CPU_CLK}]
set_clock_groups -asynchronous -group [get_clocks {CPU_CLK}] -group [get_clocks {JTAG_CLK CLK_20M MEMORY_CLK UI_CLK CORE_CLK}]
