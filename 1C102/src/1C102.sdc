//Copyright (C)2014-2024 GOWIN Semiconductor Corporation.
//All rights reserved.
//File Title: Timing Constraints file
//Tool Version: V1.9.9.01 (64-bit) 
//Created Time: 2024-03-21 11:43:21
create_clock -name OSC_CLK -period 9.524 -waveform {0 4.762} [get_nets {clk_osc}]
create_generated_clock -name BUS_CLK -source [get_nets {clk_osc}] -master_clock OSC_CLK -divide_by 5 -multiply_by 6 [get_nets {clk_126M}]
create_generated_clock -name CPU_CLK -source [get_nets {clk_osc}] -master_clock OSC_CLK -divide_by 105 -multiply_by 8 [get_nets {clk_8M}]
create_generated_clock -name MEMORY_CLK -source [get_nets {clk_osc}] -master_clock OSC_CLK -divide_by 5 -multiply_by 24 [get_nets {clk_504M}]

create_clock -name UI_CLK -period 7.937 -waveform {0 3.968} [get_nets {ddr_ctr/ui_clk}]

set_false_path -from [get_clocks {MEMORY_CLK}] -to [get_clocks {UI_CLK}] 
set_false_path -from [get_clocks {UI_CLK}] -to [get_clocks {MEMORY_CLK}] 
set_false_path -from [get_clocks {UI_CLK}] -to [get_clocks {OSC_CLK}] 
set_false_path -from [get_clocks {OSC_CLK}] -to [get_clocks {MEMORY_CLK}] 
set_false_path -from [get_clocks {BUS_CLK}] -to [get_clocks {MEMORY_CLK}] 
