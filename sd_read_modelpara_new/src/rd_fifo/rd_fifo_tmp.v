//Copyright (C)2014-2024 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//Tool Version: V1.9.9.01 (64-bit)
//Part Number: GW2A-LV18PG256C8/I7
//Device: GW2A-18
//Device Version: C
//Created Time: Thu Mar 14 22:47:41 2024

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

	rd_fifo your_instance_name(
		.Data(Data_i), //input [127:0] Data
		.Reset(Reset_i), //input Reset
		.WrClk(WrClk_i), //input WrClk
		.RdClk(RdClk_i), //input RdClk
		.WrEn(WrEn_i), //input WrEn
		.RdEn(RdEn_i), //input RdEn
		.Wnum(Wnum_o), //output [10:0] Wnum
		.Rnum(Rnum_o), //output [10:0] Rnum
		.Almost_Full(Almost_Full_o), //output Almost_Full
		.Q(Q_o), //output [127:0] Q
		.Empty(Empty_o), //output Empty
		.Full(Full_o) //output Full
	);

//--------Copy end-------------------
