//Copyright (C)2014-2024 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//Tool Version: V1.9.9.01 (64-bit)
//Part Number: GW2A-LV18PG256C8/I7
//Device: GW2A-18
//Device Version: C
//Created Time: Thu Apr  4 23:05:18 2024

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

	scfifo_app your_instance_name(
		.Data(Data_i), //input [189:0] Data
		.Clk(Clk_i), //input Clk
		.WrEn(WrEn_i), //input WrEn
		.RdEn(RdEn_i), //input RdEn
		.Reset(Reset_i), //input Reset
		.Q(Q_o), //output [189:0] Q
		.Empty(Empty_o), //output Empty
		.Full(Full_o) //output Full
	);

//--------Copy end-------------------
