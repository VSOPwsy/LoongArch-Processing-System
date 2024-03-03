//Copyright (C)2014-2024 GOWIN Semiconductor Corporation.
//All rights reserved.
//File Title: Timing Constraints file
//Tool Version: V1.9.9.01 (64-bit) 
//Created Time: 2024-02-29 21:01:41
create_clock -name sys_clk -period 20 -waveform {0 10} [get_ports {sys_clk}]
