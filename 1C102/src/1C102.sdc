//Copyright (C)2014-2024 GOWIN Semiconductor Corporation.
//All rights reserved.
//File Title: Timing Constraints file
//GOWIN Version: 1.9.9 Beta-4 Education
//Created Time: 2024-03-20 09:17:48
create_clock -name CLK_OSC -period 20 -waveform {0 10} [get_ports {clk_osc}]
//create_clock -name UI_CLK -period 10 -waveform {0 5} [get_nets {ddr_ctr/ui_clk}]
create_generated_clock -name CLK_8M -source [get_ports {clk_osc}] -master_clock CLK_OSC -divide_by 13 -multiply_by 2 [get_nets {clk_8M}]
create_generated_clock -name CLK_100M -source [get_ports {clk_osc}] -master_clock CLK_OSC -divide_by 1 -multiply_by 2 [get_nets {clk_100M}]
//create_generated_clock -name MEMORY_CLK -source [get_ports {clk_osc}] -master_clock CLK_OSC -divide_by 1 -multiply_by 8 [get_nets {clk_400M}]
//set_false_path -from [get_clocks {MEMORY_CLK}] -to [get_clocks {UI_CLK}] 
//set_false_path -from [get_clocks {UI_CLK}] -to [get_clocks {MEMORY_CLK}] 
//set_false_path -from [get_clocks {UI_CLK}] -to [get_clocks {CLK_OSC}] 
//set_false_path -from [get_clocks {CLK_OSC}] -to [get_clocks {MEMORY_CLK}] 
//set_false_path -from [get_clocks {CLK_100M}] -to [get_clocks {MEMORY_CLK}] 
