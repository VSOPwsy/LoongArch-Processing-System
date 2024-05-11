//Copyright (C)2014-2023 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//Tool Version: V1.9.9
//Part Number: GW5AT-LV138PG484AC1/I0
//Device: GW5AT-138
//Device Version: B
//Created Time: Sun May  5 15:04:30 2024

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

	ddr_cmd_fifo your_instance_name(
		.Data(Data_i), //input [72:0] Data
		.Clk(Clk_i), //input Clk
		.WrEn(WrEn_i), //input WrEn
		.RdEn(RdEn_i), //input RdEn
		.Reset(Reset_i), //input Reset
		.Q(Q_o), //output [72:0] Q
		.Empty(Empty_o), //output Empty
		.Full(Full_o) //output Full
	);

//--------Copy end-------------------
