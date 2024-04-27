//Copyright (C)2014-2024 GOWIN Semiconductor Corporation.
//All rights reserved.
//File Title: Timing Constraints file
//Tool Version: V1.9.9 (64-bit) 
//Created Time: 2024-04-26 23:32:14
create_clock -name LJTAG_CLK -period 50 -waveform {0 25} [get_ports {LJTAG_TCK}]
create_clock -name JTAG_CLK -period 50 -waveform {0 25} [get_ports {tck_pad_i}]
create_clock -name SD_INIT_CLK -period 4000 -waveform {0 2000} [get_nets {div_clk}]
create_clock -name CLK_50M -period 20 -waveform {0 10} [get_ports {sys_clk}]
create_generated_clock -name MEMORY_CLK -source [get_ports {sys_clk}] -master_clock CLK_50M -divide_by 4 -multiply_by 16 [get_nets {ddr_intf_clk}]
create_generated_clock -name UI_CLK -source [get_nets {ddr_intf_clk}] -master_clock MEMORY_CLK -divide_by 4 -multiply_by 1 [get_nets {ddr_ui_clk}]
create_generated_clock -name CPU_CLK -source [get_ports {sys_clk}] -master_clock CLK_50M -divide_by 100 -multiply_by 16 [get_nets {cpu_clk}]
set_clock_groups -asynchronous -group [get_clocks {JTAG_CLK}] -group [get_clocks {CLK_50M MEMORY_CLK UI_CLK CPU_CLK SD_INIT_CLK}]
set_clock_groups -asynchronous -group [get_clocks {CLK_50M}] -group [get_clocks {JTAG_CLK MEMORY_CLK UI_CLK CPU_CLK SD_INIT_CLK}]
set_clock_groups -asynchronous -group [get_clocks {MEMORY_CLK}] -group [get_clocks {UI_CLK CPU_CLK SD_INIT_CLK}]
set_clock_groups -asynchronous -group [get_clocks {UI_CLK}] -group [get_clocks {JTAG_CLK MEMORY_CLK CPU_CLK SD_INIT_CLK}]
set_clock_groups -asynchronous -group [get_clocks {CPU_CLK}] -group [get_clocks {JTAG_CLK LJTAG_CLK CLK_50M MEMORY_CLK UI_CLK SD_INIT_CLK}]
set_clock_groups -asynchronous -group [get_clocks {SD_INIT_CLK}] -group [get_clocks {JTAG_CLK CLK_50M MEMORY_CLK UI_CLK CPU_CLK}]
