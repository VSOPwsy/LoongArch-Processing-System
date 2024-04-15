//Copyright (C)2014-2024 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//Tool Version: V1.9.9.01 (64-bit)
//Part Number: GW5AT-LV138PG484AC2/I1
//Device: GW5AT-138
//Device Version: B
//Created Time: Tue Apr  9 22:46:36 2024

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

	scfifo_rd_data your_instance_name(
		.Data(Data_i), //input [255:0] Data
		.Clk(Clk_i), //input Clk
		.WrEn(WrEn_i), //input WrEn
		.RdEn(RdEn_i), //input RdEn
		.Reset(Reset_i), //input Reset
		.Q(Q_o), //output [255:0] Q
		.Empty(Empty_o), //output Empty
		.Full(Full_o) //output Full
	);

//--------Copy end-------------------
