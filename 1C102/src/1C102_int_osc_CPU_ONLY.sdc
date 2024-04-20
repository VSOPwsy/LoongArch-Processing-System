//Copyright (C)2014-2024 GOWIN Semiconductor Corporation.
//All rights reserved.
//File Title: Timing Constraints file
//Tool Version: V1.9.9.01 (64-bit) 
//Created Time: 2024-04-13 19:14:42
create_clock -name tck_pad -period 50 -waveform {0 25} [get_ports {tck_pad_i}]
create_clock -name CLK_20M -period 50 -waveform {0 25} [get_nets {clk_gen/clk_20M}]
create_generated_clock -name CORE_CLK -source [get_nets {clk_gen/clk_20M}] -master_clock CLK_20M -divide_by 16 -multiply_by 40 [get_nets {core_clk}]
create_generated_clock -name CPU_CLK -source [get_nets {clk_gen/clk_20M}] -master_clock CLK_20M -divide_by 100 -multiply_by 40 [get_nets {clk_gen/PLL/cpu_clk}]
set_clock_groups -asynchronous -group [get_clocks {tck_pad}] -group [get_clocks {CORE_CLK}]
set_clock_groups -asynchronous -group [get_clocks {CPU_CLK}] -group [get_clocks {CORE_CLK}]
