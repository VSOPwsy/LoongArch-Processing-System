//Copyright (C)2014-2023 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//Tool Version: V1.9.9 (64-bit)
//Part Number: GW5AT-LV138PG484AC1/I0
//Device: GW5AT-138
//Device Version: B
//Created Time: Sun May  5 15:18:18 2024

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
