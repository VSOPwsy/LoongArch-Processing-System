//Copyright (C)2014-2024 GOWIN Semiconductor Corporation.
//All rights reserved.
//File Title: Timing Constraints file
//Tool Version: V1.9.9.01 (64-bit) 
//Created Time: 2024-03-16 16:04:27
create_clock -name sys_clk -period 20 -waveform {0 10} [get_ports {sys_clk}]
create_generated_clock -name CLK_400M -source [get_ports {sys_clk}] -master_clock sys_clk -divide_by 1 -multiply_by 8 [get_nets {memory_clk}]
