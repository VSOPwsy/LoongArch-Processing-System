//Copyright (C)2014-2024 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//Tool Version: V1.9.9.01 (64-bit)
//Part Number: GW5AT-LV138PG484AC2/I1
//Device: GW5AT-138
//Device Version: B
//Created Time: Tue Apr  9 13:10:58 2024

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

	ddr_ctr_fifo_b your_instance_name(
		.Data(Data_i), //input [13:0] Data
		.WrReset(WrReset_i), //input WrReset
		.RdReset(RdReset_i), //input RdReset
		.WrClk(WrClk_i), //input WrClk
		.RdClk(RdClk_i), //input RdClk
		.WrEn(WrEn_i), //input WrEn
		.RdEn(RdEn_i), //input RdEn
		.Q(Q_o), //output [13:0] Q
		.Empty(Empty_o), //output Empty
		.Full(Full_o) //output Full
	);

//--------Copy end-------------------
