//****************************************Copyright (c)***********************************//
//原子哥在线教学平台：www.yuanzige.com
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取ZYNQ & FPGA & STM32 & LINUX资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           serializer_10_to_1
// Last modified Date:  2021/4/7 9:30:00
// Last Version:        V1.1
// Descriptions:        用于实现10:1并串转换
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2021/4/7 9:30:00
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

`timescale 1ns / 1ps

module serializer_10_to_1(
    input           paralell_clk,       // 输入并行数据时钟
    input           serial_clk_5x,      // 输入串行数据时钟
    input   [9:0]   paralell_data,      // 输入并行数据
    input           reset,

    output          serial_data         // 输出串行数据
    );
  
//*****************************************************
//**                    main code
//*****************************************************

OSER10 u_OSER10(
 .Q(serial_data), 
 .D0(paralell_data[0]), 
 .D1(paralell_data[1]),
 .D2(paralell_data[2]), 
 .D3(paralell_data[3]), 
 .D4(paralell_data[4]), 
 .D5(paralell_data[5]),
 .D6(paralell_data[6]), 
 .D7(paralell_data[7]), 
 .D8(paralell_data[8]), 
 .D9(paralell_data[9]), 
 .PCLK(paralell_clk), 
 .FCLK(serial_clk_5x),
 .RESET(reset)
);
defparam u_OSER10.GSREN="false";
defparam u_OSER10.LSREN ="true";

endmodule