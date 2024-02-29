//Copyright (C)2014-2024 GOWIN Semiconductor Corporation.
//All rights reserved.
//File Title: Timing Constraints file
//GOWIN Version: 1.9.9 Beta-4 Education
//Created Time: 2024-03-01 02:46:28
create_clock -name CLK_OSC -period 20 -waveform {0 10} [get_ports {clk_osc}]
create_generated_clock -name CLK_8M -source [get_ports {clk_osc}] -master_clock CLK_OSC -divide_by 13 -multiply_by 2 [get_nets {clk_8M}]
