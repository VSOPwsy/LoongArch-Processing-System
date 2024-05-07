//Copyright (C)2014-2023 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//Tool Version: V1.9.9 (64-bit)
//Part Number: GW5AT-LV138PG484AC1/I0
//Device: GW5AT-138
//Device Version: B
//Created Time: Sun May  5 21:58:51 2024

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

    gowin_data_ram your_instance_name(
        .dout(dout_o), //output [31:0] dout
        .wre(wre_i), //input wre
        .wad(wad_i), //input [10:0] wad
        .di(di_i), //input [31:0] di
        .rad(rad_i), //input [10:0] rad
        .clk(clk_i) //input clk
    );

//--------Copy end-------------------
