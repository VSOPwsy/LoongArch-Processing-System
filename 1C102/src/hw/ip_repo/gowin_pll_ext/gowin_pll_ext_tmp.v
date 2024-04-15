//Copyright (C)2014-2024 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//Tool Version: V1.9.9.01 (64-bit)
//Part Number: GW5AT-LV138PG484AC2/I1
//Device: GW5AT-138
//Device Version: B
//Created Time: Sun Apr 14 00:05:26 2024

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

    Gowin_PLL_ext your_instance_name(
        .lock(lock_o), //output lock
        .clkout0(clkout0_o), //output clkout0
        .clkout1(clkout1_o), //output clkout1
        .clkin(clkin_i) //input clkin
    );

//--------Copy end-------------------
