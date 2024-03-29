//Copyright (C)2014-2024 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//Tool Version: V1.9.9.01 (64-bit)
//Part Number: GW2A-LV18PG256C8/I7
//Device: GW2A-18
//Device Version: C
//Created Time: Thu Mar 28 21:38:10 2024

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

    Gowin_SP_Instr your_instance_name(
        .dout(dout_o), //output [31:0] dout
        .clk(clk_i), //input clk
        .oce(oce_i), //input oce
        .ce(ce_i), //input ce
        .reset(reset_i), //input reset
        .wre(wre_i), //input wre
        .ad(ad_i), //input [13:0] ad
        .din(din_i) //input [31:0] din
    );

//--------Copy end-------------------
