//Copyright (C)2014-2023 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//Tool Version: V1.9.9 (64-bit)
//Part Number: GW5AT-LV138PG484AC1/I0
//Device: GW5AT-138
//Device Version: B
//Created Time: Wed May  8 10:55:28 2024

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

    Gowin_PLL_ext your_instance_name(
        .lock(lock_o), //output lock
        .clkout0(clkout0_o), //output clkout0
        .clkout1(clkout1_o), //output clkout1
        .clkout2(clkout2_o), //output clkout2
        .clkout3(clkout3_o), //output clkout3
        .clkin(clkin_i), //input clkin
        .enclk0(enclk0_i), //input enclk0
        .enclk1(enclk1_i), //input enclk1
        .enclk2(enclk2_i), //input enclk2
        .enclk3(enclk3_i) //input enclk3
    );

//--------Copy end-------------------
