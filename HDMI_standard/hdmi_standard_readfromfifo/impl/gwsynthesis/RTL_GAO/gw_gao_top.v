module gw_gao(
    sys_clk,
    \myip_v2_0_S00_AXIS_uut/S_AXIS_ACLK ,
    \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[23] ,
    \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[22] ,
    \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[21] ,
    \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[20] ,
    \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[19] ,
    \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[18] ,
    \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[17] ,
    \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[16] ,
    \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[15] ,
    \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[14] ,
    \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[13] ,
    \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[12] ,
    \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[11] ,
    \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[10] ,
    \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[9] ,
    \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[8] ,
    \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[7] ,
    \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[6] ,
    \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[5] ,
    \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[4] ,
    \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[3] ,
    \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[2] ,
    \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[1] ,
    \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[0] ,
    \myip_v2_0_S00_AXIS_uut/S_AXIS_ARESETN ,
    \S_AXIS_TDATA[31] ,
    \S_AXIS_TDATA[30] ,
    \S_AXIS_TDATA[29] ,
    \S_AXIS_TDATA[28] ,
    \S_AXIS_TDATA[27] ,
    \S_AXIS_TDATA[26] ,
    \S_AXIS_TDATA[25] ,
    \S_AXIS_TDATA[24] ,
    \S_AXIS_TDATA[23] ,
    \S_AXIS_TDATA[22] ,
    \S_AXIS_TDATA[21] ,
    \S_AXIS_TDATA[20] ,
    \S_AXIS_TDATA[19] ,
    \S_AXIS_TDATA[18] ,
    \S_AXIS_TDATA[17] ,
    \S_AXIS_TDATA[16] ,
    \S_AXIS_TDATA[15] ,
    \S_AXIS_TDATA[14] ,
    \S_AXIS_TDATA[13] ,
    \S_AXIS_TDATA[12] ,
    \S_AXIS_TDATA[11] ,
    \S_AXIS_TDATA[10] ,
    \S_AXIS_TDATA[9] ,
    \S_AXIS_TDATA[8] ,
    \S_AXIS_TDATA[7] ,
    \S_AXIS_TDATA[6] ,
    \S_AXIS_TDATA[5] ,
    \S_AXIS_TDATA[4] ,
    \S_AXIS_TDATA[3] ,
    \S_AXIS_TDATA[2] ,
    \S_AXIS_TDATA[1] ,
    \S_AXIS_TDATA[0] ,
    S_AXIS_TVALID,
    S_AXIS_TLAST,
    \myip_v2_0_S00_AXIS_uut/R_AXIS_ACLK ,
    \myip_v2_0_S00_AXIS_uut/R_AXIS_ARESETN ,
    S_AXIS_TREADY,
    tms_pad_i,
    tck_pad_i,
    tdi_pad_i,
    tdo_pad_o
);

input sys_clk;
input \myip_v2_0_S00_AXIS_uut/S_AXIS_ACLK ;
input \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[23] ;
input \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[22] ;
input \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[21] ;
input \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[20] ;
input \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[19] ;
input \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[18] ;
input \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[17] ;
input \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[16] ;
input \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[15] ;
input \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[14] ;
input \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[13] ;
input \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[12] ;
input \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[11] ;
input \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[10] ;
input \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[9] ;
input \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[8] ;
input \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[7] ;
input \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[6] ;
input \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[5] ;
input \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[4] ;
input \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[3] ;
input \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[2] ;
input \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[1] ;
input \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[0] ;
input \myip_v2_0_S00_AXIS_uut/S_AXIS_ARESETN ;
input \S_AXIS_TDATA[31] ;
input \S_AXIS_TDATA[30] ;
input \S_AXIS_TDATA[29] ;
input \S_AXIS_TDATA[28] ;
input \S_AXIS_TDATA[27] ;
input \S_AXIS_TDATA[26] ;
input \S_AXIS_TDATA[25] ;
input \S_AXIS_TDATA[24] ;
input \S_AXIS_TDATA[23] ;
input \S_AXIS_TDATA[22] ;
input \S_AXIS_TDATA[21] ;
input \S_AXIS_TDATA[20] ;
input \S_AXIS_TDATA[19] ;
input \S_AXIS_TDATA[18] ;
input \S_AXIS_TDATA[17] ;
input \S_AXIS_TDATA[16] ;
input \S_AXIS_TDATA[15] ;
input \S_AXIS_TDATA[14] ;
input \S_AXIS_TDATA[13] ;
input \S_AXIS_TDATA[12] ;
input \S_AXIS_TDATA[11] ;
input \S_AXIS_TDATA[10] ;
input \S_AXIS_TDATA[9] ;
input \S_AXIS_TDATA[8] ;
input \S_AXIS_TDATA[7] ;
input \S_AXIS_TDATA[6] ;
input \S_AXIS_TDATA[5] ;
input \S_AXIS_TDATA[4] ;
input \S_AXIS_TDATA[3] ;
input \S_AXIS_TDATA[2] ;
input \S_AXIS_TDATA[1] ;
input \S_AXIS_TDATA[0] ;
input S_AXIS_TVALID;
input S_AXIS_TLAST;
input \myip_v2_0_S00_AXIS_uut/R_AXIS_ACLK ;
input \myip_v2_0_S00_AXIS_uut/R_AXIS_ARESETN ;
input S_AXIS_TREADY;
input tms_pad_i;
input tck_pad_i;
input tdi_pad_i;
output tdo_pad_o;

wire sys_clk;
wire \myip_v2_0_S00_AXIS_uut/S_AXIS_ACLK ;
wire \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[23] ;
wire \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[22] ;
wire \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[21] ;
wire \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[20] ;
wire \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[19] ;
wire \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[18] ;
wire \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[17] ;
wire \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[16] ;
wire \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[15] ;
wire \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[14] ;
wire \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[13] ;
wire \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[12] ;
wire \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[11] ;
wire \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[10] ;
wire \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[9] ;
wire \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[8] ;
wire \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[7] ;
wire \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[6] ;
wire \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[5] ;
wire \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[4] ;
wire \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[3] ;
wire \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[2] ;
wire \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[1] ;
wire \myip_v2_0_S00_AXIS_uut/R_AXIS_Out[0] ;
wire \myip_v2_0_S00_AXIS_uut/S_AXIS_ARESETN ;
wire \S_AXIS_TDATA[31] ;
wire \S_AXIS_TDATA[30] ;
wire \S_AXIS_TDATA[29] ;
wire \S_AXIS_TDATA[28] ;
wire \S_AXIS_TDATA[27] ;
wire \S_AXIS_TDATA[26] ;
wire \S_AXIS_TDATA[25] ;
wire \S_AXIS_TDATA[24] ;
wire \S_AXIS_TDATA[23] ;
wire \S_AXIS_TDATA[22] ;
wire \S_AXIS_TDATA[21] ;
wire \S_AXIS_TDATA[20] ;
wire \S_AXIS_TDATA[19] ;
wire \S_AXIS_TDATA[18] ;
wire \S_AXIS_TDATA[17] ;
wire \S_AXIS_TDATA[16] ;
wire \S_AXIS_TDATA[15] ;
wire \S_AXIS_TDATA[14] ;
wire \S_AXIS_TDATA[13] ;
wire \S_AXIS_TDATA[12] ;
wire \S_AXIS_TDATA[11] ;
wire \S_AXIS_TDATA[10] ;
wire \S_AXIS_TDATA[9] ;
wire \S_AXIS_TDATA[8] ;
wire \S_AXIS_TDATA[7] ;
wire \S_AXIS_TDATA[6] ;
wire \S_AXIS_TDATA[5] ;
wire \S_AXIS_TDATA[4] ;
wire \S_AXIS_TDATA[3] ;
wire \S_AXIS_TDATA[2] ;
wire \S_AXIS_TDATA[1] ;
wire \S_AXIS_TDATA[0] ;
wire S_AXIS_TVALID;
wire S_AXIS_TLAST;
wire \myip_v2_0_S00_AXIS_uut/R_AXIS_ACLK ;
wire \myip_v2_0_S00_AXIS_uut/R_AXIS_ARESETN ;
wire S_AXIS_TREADY;
wire tms_pad_i;
wire tck_pad_i;
wire tdi_pad_i;
wire tdo_pad_o;
wire tms_i_c;
wire tck_i_c;
wire tdi_i_c;
wire tdo_o_c;
wire [9:0] control0;
wire gao_jtag_tck;
wire gao_jtag_reset;
wire run_test_idle_er1;
wire run_test_idle_er2;
wire shift_dr_capture_dr;
wire update_dr;
wire pause_dr;
wire enable_er1;
wire enable_er2;
wire gao_jtag_tdi;
wire tdo_er1;

IBUF tms_ibuf (
    .I(tms_pad_i),
    .O(tms_i_c)
);

IBUF tck_ibuf (
    .I(tck_pad_i),
    .O(tck_i_c)
);

IBUF tdi_ibuf (
    .I(tdi_pad_i),
    .O(tdi_i_c)
);

OBUF tdo_obuf (
    .I(tdo_o_c),
    .O(tdo_pad_o)
);

GW_JTAG  u_gw_jtag(
    .tms_pad_i(tms_i_c),
    .tck_pad_i(tck_i_c),
    .tdi_pad_i(tdi_i_c),
    .tdo_pad_o(tdo_o_c),
    .tck_o(gao_jtag_tck),
    .test_logic_reset_o(gao_jtag_reset),
    .run_test_idle_er1_o(run_test_idle_er1),
    .run_test_idle_er2_o(run_test_idle_er2),
    .shift_dr_capture_dr_o(shift_dr_capture_dr),
    .update_dr_o(update_dr),
    .pause_dr_o(pause_dr),
    .enable_er1_o(enable_er1),
    .enable_er2_o(enable_er2),
    .tdi_o(gao_jtag_tdi),
    .tdo_er1_i(tdo_er1),
    .tdo_er2_i(1'b0)
);

gw_con_top  u_icon_top(
    .tck_i(gao_jtag_tck),
    .tdi_i(gao_jtag_tdi),
    .tdo_o(tdo_er1),
    .rst_i(gao_jtag_reset),
    .control0(control0[9:0]),
    .enable_i(enable_er1),
    .shift_dr_capture_dr_i(shift_dr_capture_dr),
    .update_dr_i(update_dr)
);

ao_top_0  u_la0_top(
    .control(control0[9:0]),
    .trig0_i({\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[23] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[22] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[21] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[20] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[19] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[18] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[17] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[16] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[15] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[14] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[13] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[12] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[11] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[10] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[9] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[8] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[7] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[6] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[5] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[4] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[3] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[2] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[1] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[0] }),
    .data_i({sys_clk,\myip_v2_0_S00_AXIS_uut/S_AXIS_ACLK ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[23] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[22] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[21] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[20] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[19] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[18] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[17] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[16] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[15] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[14] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[13] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[12] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[11] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[10] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[9] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[8] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[7] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[6] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[5] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[4] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[3] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[2] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[1] ,\myip_v2_0_S00_AXIS_uut/R_AXIS_Out[0] ,\myip_v2_0_S00_AXIS_uut/S_AXIS_ARESETN ,\S_AXIS_TDATA[31] ,\S_AXIS_TDATA[30] ,\S_AXIS_TDATA[29] ,\S_AXIS_TDATA[28] ,\S_AXIS_TDATA[27] ,\S_AXIS_TDATA[26] ,\S_AXIS_TDATA[25] ,\S_AXIS_TDATA[24] ,\S_AXIS_TDATA[23] ,\S_AXIS_TDATA[22] ,\S_AXIS_TDATA[21] ,\S_AXIS_TDATA[20] ,\S_AXIS_TDATA[19] ,\S_AXIS_TDATA[18] ,\S_AXIS_TDATA[17] ,\S_AXIS_TDATA[16] ,\S_AXIS_TDATA[15] ,\S_AXIS_TDATA[14] ,\S_AXIS_TDATA[13] ,\S_AXIS_TDATA[12] ,\S_AXIS_TDATA[11] ,\S_AXIS_TDATA[10] ,\S_AXIS_TDATA[9] ,\S_AXIS_TDATA[8] ,\S_AXIS_TDATA[7] ,\S_AXIS_TDATA[6] ,\S_AXIS_TDATA[5] ,\S_AXIS_TDATA[4] ,\S_AXIS_TDATA[3] ,\S_AXIS_TDATA[2] ,\S_AXIS_TDATA[1] ,\S_AXIS_TDATA[0] ,S_AXIS_TVALID,S_AXIS_TLAST,\myip_v2_0_S00_AXIS_uut/R_AXIS_ACLK ,\myip_v2_0_S00_AXIS_uut/R_AXIS_ARESETN ,S_AXIS_TREADY}),
    .clk_i(\myip_v2_0_S00_AXIS_uut/S_AXIS_ACLK )
);

endmodule
