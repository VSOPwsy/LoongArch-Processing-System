module gw_gao(
    sys_init_done,
    sd_miso,
    sd_cs,
    sd_mosi,
    sys_rst_n,
    ddr_reset_n,
    ddr_wr_en,
    sd_rd_busy,
    sd_rd_val_en,
    sd_rd_start_en,
    \sd_rd_val_data[15] ,
    \sd_rd_val_data[14] ,
    \sd_rd_val_data[13] ,
    \sd_rd_val_data[12] ,
    \sd_rd_val_data[11] ,
    \sd_rd_val_data[10] ,
    \sd_rd_val_data[9] ,
    \sd_rd_val_data[8] ,
    \sd_rd_val_data[7] ,
    \sd_rd_val_data[6] ,
    \sd_rd_val_data[5] ,
    \sd_rd_val_data[4] ,
    \sd_rd_val_data[3] ,
    \sd_rd_val_data[2] ,
    \sd_rd_val_data[1] ,
    \sd_rd_val_data[0] ,
    \ddr_wr_data[15] ,
    \ddr_wr_data[14] ,
    \ddr_wr_data[13] ,
    \ddr_wr_data[12] ,
    \ddr_wr_data[11] ,
    \ddr_wr_data[10] ,
    \ddr_wr_data[9] ,
    \ddr_wr_data[8] ,
    \ddr_wr_data[7] ,
    \ddr_wr_data[6] ,
    \ddr_wr_data[5] ,
    \ddr_wr_data[4] ,
    \ddr_wr_data[3] ,
    \ddr_wr_data[2] ,
    \ddr_wr_data[1] ,
    \ddr_wr_data[0] ,
    \u_ddr3_top/app_wdf_data[127] ,
    \u_ddr3_top/app_wdf_data[126] ,
    \u_ddr3_top/app_wdf_data[125] ,
    \u_ddr3_top/app_wdf_data[124] ,
    \u_ddr3_top/app_wdf_data[123] ,
    \u_ddr3_top/app_wdf_data[122] ,
    \u_ddr3_top/app_wdf_data[121] ,
    \u_ddr3_top/app_wdf_data[120] ,
    \u_ddr3_top/app_wdf_data[119] ,
    \u_ddr3_top/app_wdf_data[118] ,
    \u_ddr3_top/app_wdf_data[117] ,
    \u_ddr3_top/app_wdf_data[116] ,
    \u_ddr3_top/app_wdf_data[115] ,
    \u_ddr3_top/app_wdf_data[114] ,
    \u_ddr3_top/app_wdf_data[113] ,
    \u_ddr3_top/app_wdf_data[112] ,
    \u_ddr3_top/app_wdf_data[111] ,
    \u_ddr3_top/app_wdf_data[110] ,
    \u_ddr3_top/app_wdf_data[109] ,
    \u_ddr3_top/app_wdf_data[108] ,
    \u_ddr3_top/app_wdf_data[107] ,
    \u_ddr3_top/app_wdf_data[106] ,
    \u_ddr3_top/app_wdf_data[105] ,
    \u_ddr3_top/app_wdf_data[104] ,
    \u_ddr3_top/app_wdf_data[103] ,
    \u_ddr3_top/app_wdf_data[102] ,
    \u_ddr3_top/app_wdf_data[101] ,
    \u_ddr3_top/app_wdf_data[100] ,
    \u_ddr3_top/app_wdf_data[99] ,
    \u_ddr3_top/app_wdf_data[98] ,
    \u_ddr3_top/app_wdf_data[97] ,
    \u_ddr3_top/app_wdf_data[96] ,
    \u_ddr3_top/app_wdf_data[95] ,
    \u_ddr3_top/app_wdf_data[94] ,
    \u_ddr3_top/app_wdf_data[93] ,
    \u_ddr3_top/app_wdf_data[92] ,
    \u_ddr3_top/app_wdf_data[91] ,
    \u_ddr3_top/app_wdf_data[90] ,
    \u_ddr3_top/app_wdf_data[89] ,
    \u_ddr3_top/app_wdf_data[88] ,
    \u_ddr3_top/app_wdf_data[87] ,
    \u_ddr3_top/app_wdf_data[86] ,
    \u_ddr3_top/app_wdf_data[85] ,
    \u_ddr3_top/app_wdf_data[84] ,
    \u_ddr3_top/app_wdf_data[83] ,
    \u_ddr3_top/app_wdf_data[82] ,
    \u_ddr3_top/app_wdf_data[81] ,
    \u_ddr3_top/app_wdf_data[80] ,
    \u_ddr3_top/app_wdf_data[79] ,
    \u_ddr3_top/app_wdf_data[78] ,
    \u_ddr3_top/app_wdf_data[77] ,
    \u_ddr3_top/app_wdf_data[76] ,
    \u_ddr3_top/app_wdf_data[75] ,
    \u_ddr3_top/app_wdf_data[74] ,
    \u_ddr3_top/app_wdf_data[73] ,
    \u_ddr3_top/app_wdf_data[72] ,
    \u_ddr3_top/app_wdf_data[71] ,
    \u_ddr3_top/app_wdf_data[70] ,
    \u_ddr3_top/app_wdf_data[69] ,
    \u_ddr3_top/app_wdf_data[68] ,
    \u_ddr3_top/app_wdf_data[67] ,
    \u_ddr3_top/app_wdf_data[66] ,
    \u_ddr3_top/app_wdf_data[65] ,
    \u_ddr3_top/app_wdf_data[64] ,
    \u_ddr3_top/app_wdf_data[63] ,
    \u_ddr3_top/app_wdf_data[62] ,
    \u_ddr3_top/app_wdf_data[61] ,
    \u_ddr3_top/app_wdf_data[60] ,
    \u_ddr3_top/app_wdf_data[59] ,
    \u_ddr3_top/app_wdf_data[58] ,
    \u_ddr3_top/app_wdf_data[57] ,
    \u_ddr3_top/app_wdf_data[56] ,
    \u_ddr3_top/app_wdf_data[55] ,
    \u_ddr3_top/app_wdf_data[54] ,
    \u_ddr3_top/app_wdf_data[53] ,
    \u_ddr3_top/app_wdf_data[52] ,
    \u_ddr3_top/app_wdf_data[51] ,
    \u_ddr3_top/app_wdf_data[50] ,
    \u_ddr3_top/app_wdf_data[49] ,
    \u_ddr3_top/app_wdf_data[48] ,
    \u_ddr3_top/app_wdf_data[47] ,
    \u_ddr3_top/app_wdf_data[46] ,
    \u_ddr3_top/app_wdf_data[45] ,
    \u_ddr3_top/app_wdf_data[44] ,
    \u_ddr3_top/app_wdf_data[43] ,
    \u_ddr3_top/app_wdf_data[42] ,
    \u_ddr3_top/app_wdf_data[41] ,
    \u_ddr3_top/app_wdf_data[40] ,
    \u_ddr3_top/app_wdf_data[39] ,
    \u_ddr3_top/app_wdf_data[38] ,
    \u_ddr3_top/app_wdf_data[37] ,
    \u_ddr3_top/app_wdf_data[36] ,
    \u_ddr3_top/app_wdf_data[35] ,
    \u_ddr3_top/app_wdf_data[34] ,
    \u_ddr3_top/app_wdf_data[33] ,
    \u_ddr3_top/app_wdf_data[32] ,
    \u_ddr3_top/app_wdf_data[31] ,
    \u_ddr3_top/app_wdf_data[30] ,
    \u_ddr3_top/app_wdf_data[29] ,
    \u_ddr3_top/app_wdf_data[28] ,
    \u_ddr3_top/app_wdf_data[27] ,
    \u_ddr3_top/app_wdf_data[26] ,
    \u_ddr3_top/app_wdf_data[25] ,
    \u_ddr3_top/app_wdf_data[24] ,
    \u_ddr3_top/app_wdf_data[23] ,
    \u_ddr3_top/app_wdf_data[22] ,
    \u_ddr3_top/app_wdf_data[21] ,
    \u_ddr3_top/app_wdf_data[20] ,
    \u_ddr3_top/app_wdf_data[19] ,
    \u_ddr3_top/app_wdf_data[18] ,
    \u_ddr3_top/app_wdf_data[17] ,
    \u_ddr3_top/app_wdf_data[16] ,
    \u_ddr3_top/app_wdf_data[15] ,
    \u_ddr3_top/app_wdf_data[14] ,
    \u_ddr3_top/app_wdf_data[13] ,
    \u_ddr3_top/app_wdf_data[12] ,
    \u_ddr3_top/app_wdf_data[11] ,
    \u_ddr3_top/app_wdf_data[10] ,
    \u_ddr3_top/app_wdf_data[9] ,
    \u_ddr3_top/app_wdf_data[8] ,
    \u_ddr3_top/app_wdf_data[7] ,
    \u_ddr3_top/app_wdf_data[6] ,
    \u_ddr3_top/app_wdf_data[5] ,
    \u_ddr3_top/app_wdf_data[4] ,
    \u_ddr3_top/app_wdf_data[3] ,
    \u_ddr3_top/app_wdf_data[2] ,
    \u_ddr3_top/app_wdf_data[1] ,
    \u_ddr3_top/app_wdf_data[0] ,
    \u_ddr3_top/app_addr[28] ,
    \u_ddr3_top/app_addr[27] ,
    \u_ddr3_top/app_addr[26] ,
    \u_ddr3_top/app_addr[25] ,
    \u_ddr3_top/app_addr[24] ,
    \u_ddr3_top/app_addr[23] ,
    \u_ddr3_top/app_addr[22] ,
    \u_ddr3_top/app_addr[21] ,
    \u_ddr3_top/app_addr[20] ,
    \u_ddr3_top/app_addr[19] ,
    \u_ddr3_top/app_addr[18] ,
    \u_ddr3_top/app_addr[17] ,
    \u_ddr3_top/app_addr[16] ,
    \u_ddr3_top/app_addr[15] ,
    \u_ddr3_top/app_addr[14] ,
    \u_ddr3_top/app_addr[13] ,
    \u_ddr3_top/app_addr[12] ,
    \u_ddr3_top/app_addr[11] ,
    \u_ddr3_top/app_addr[10] ,
    \u_ddr3_top/app_addr[9] ,
    \u_ddr3_top/app_addr[8] ,
    \u_ddr3_top/app_addr[7] ,
    \u_ddr3_top/app_addr[6] ,
    \u_ddr3_top/app_addr[5] ,
    \u_ddr3_top/app_addr[4] ,
    \u_ddr3_top/app_addr[3] ,
    \u_ddr3_top/app_addr[2] ,
    \u_ddr3_top/app_addr[1] ,
    \u_ddr3_top/app_addr[0] ,
    init_calib_complete,
    sys_clk,
    tms_pad_i,
    tck_pad_i,
    tdi_pad_i,
    tdo_pad_o
);

input sys_init_done;
input sd_miso;
input sd_cs;
input sd_mosi;
input sys_rst_n;
input ddr_reset_n;
input ddr_wr_en;
input sd_rd_busy;
input sd_rd_val_en;
input sd_rd_start_en;
input \sd_rd_val_data[15] ;
input \sd_rd_val_data[14] ;
input \sd_rd_val_data[13] ;
input \sd_rd_val_data[12] ;
input \sd_rd_val_data[11] ;
input \sd_rd_val_data[10] ;
input \sd_rd_val_data[9] ;
input \sd_rd_val_data[8] ;
input \sd_rd_val_data[7] ;
input \sd_rd_val_data[6] ;
input \sd_rd_val_data[5] ;
input \sd_rd_val_data[4] ;
input \sd_rd_val_data[3] ;
input \sd_rd_val_data[2] ;
input \sd_rd_val_data[1] ;
input \sd_rd_val_data[0] ;
input \ddr_wr_data[15] ;
input \ddr_wr_data[14] ;
input \ddr_wr_data[13] ;
input \ddr_wr_data[12] ;
input \ddr_wr_data[11] ;
input \ddr_wr_data[10] ;
input \ddr_wr_data[9] ;
input \ddr_wr_data[8] ;
input \ddr_wr_data[7] ;
input \ddr_wr_data[6] ;
input \ddr_wr_data[5] ;
input \ddr_wr_data[4] ;
input \ddr_wr_data[3] ;
input \ddr_wr_data[2] ;
input \ddr_wr_data[1] ;
input \ddr_wr_data[0] ;
input \u_ddr3_top/app_wdf_data[127] ;
input \u_ddr3_top/app_wdf_data[126] ;
input \u_ddr3_top/app_wdf_data[125] ;
input \u_ddr3_top/app_wdf_data[124] ;
input \u_ddr3_top/app_wdf_data[123] ;
input \u_ddr3_top/app_wdf_data[122] ;
input \u_ddr3_top/app_wdf_data[121] ;
input \u_ddr3_top/app_wdf_data[120] ;
input \u_ddr3_top/app_wdf_data[119] ;
input \u_ddr3_top/app_wdf_data[118] ;
input \u_ddr3_top/app_wdf_data[117] ;
input \u_ddr3_top/app_wdf_data[116] ;
input \u_ddr3_top/app_wdf_data[115] ;
input \u_ddr3_top/app_wdf_data[114] ;
input \u_ddr3_top/app_wdf_data[113] ;
input \u_ddr3_top/app_wdf_data[112] ;
input \u_ddr3_top/app_wdf_data[111] ;
input \u_ddr3_top/app_wdf_data[110] ;
input \u_ddr3_top/app_wdf_data[109] ;
input \u_ddr3_top/app_wdf_data[108] ;
input \u_ddr3_top/app_wdf_data[107] ;
input \u_ddr3_top/app_wdf_data[106] ;
input \u_ddr3_top/app_wdf_data[105] ;
input \u_ddr3_top/app_wdf_data[104] ;
input \u_ddr3_top/app_wdf_data[103] ;
input \u_ddr3_top/app_wdf_data[102] ;
input \u_ddr3_top/app_wdf_data[101] ;
input \u_ddr3_top/app_wdf_data[100] ;
input \u_ddr3_top/app_wdf_data[99] ;
input \u_ddr3_top/app_wdf_data[98] ;
input \u_ddr3_top/app_wdf_data[97] ;
input \u_ddr3_top/app_wdf_data[96] ;
input \u_ddr3_top/app_wdf_data[95] ;
input \u_ddr3_top/app_wdf_data[94] ;
input \u_ddr3_top/app_wdf_data[93] ;
input \u_ddr3_top/app_wdf_data[92] ;
input \u_ddr3_top/app_wdf_data[91] ;
input \u_ddr3_top/app_wdf_data[90] ;
input \u_ddr3_top/app_wdf_data[89] ;
input \u_ddr3_top/app_wdf_data[88] ;
input \u_ddr3_top/app_wdf_data[87] ;
input \u_ddr3_top/app_wdf_data[86] ;
input \u_ddr3_top/app_wdf_data[85] ;
input \u_ddr3_top/app_wdf_data[84] ;
input \u_ddr3_top/app_wdf_data[83] ;
input \u_ddr3_top/app_wdf_data[82] ;
input \u_ddr3_top/app_wdf_data[81] ;
input \u_ddr3_top/app_wdf_data[80] ;
input \u_ddr3_top/app_wdf_data[79] ;
input \u_ddr3_top/app_wdf_data[78] ;
input \u_ddr3_top/app_wdf_data[77] ;
input \u_ddr3_top/app_wdf_data[76] ;
input \u_ddr3_top/app_wdf_data[75] ;
input \u_ddr3_top/app_wdf_data[74] ;
input \u_ddr3_top/app_wdf_data[73] ;
input \u_ddr3_top/app_wdf_data[72] ;
input \u_ddr3_top/app_wdf_data[71] ;
input \u_ddr3_top/app_wdf_data[70] ;
input \u_ddr3_top/app_wdf_data[69] ;
input \u_ddr3_top/app_wdf_data[68] ;
input \u_ddr3_top/app_wdf_data[67] ;
input \u_ddr3_top/app_wdf_data[66] ;
input \u_ddr3_top/app_wdf_data[65] ;
input \u_ddr3_top/app_wdf_data[64] ;
input \u_ddr3_top/app_wdf_data[63] ;
input \u_ddr3_top/app_wdf_data[62] ;
input \u_ddr3_top/app_wdf_data[61] ;
input \u_ddr3_top/app_wdf_data[60] ;
input \u_ddr3_top/app_wdf_data[59] ;
input \u_ddr3_top/app_wdf_data[58] ;
input \u_ddr3_top/app_wdf_data[57] ;
input \u_ddr3_top/app_wdf_data[56] ;
input \u_ddr3_top/app_wdf_data[55] ;
input \u_ddr3_top/app_wdf_data[54] ;
input \u_ddr3_top/app_wdf_data[53] ;
input \u_ddr3_top/app_wdf_data[52] ;
input \u_ddr3_top/app_wdf_data[51] ;
input \u_ddr3_top/app_wdf_data[50] ;
input \u_ddr3_top/app_wdf_data[49] ;
input \u_ddr3_top/app_wdf_data[48] ;
input \u_ddr3_top/app_wdf_data[47] ;
input \u_ddr3_top/app_wdf_data[46] ;
input \u_ddr3_top/app_wdf_data[45] ;
input \u_ddr3_top/app_wdf_data[44] ;
input \u_ddr3_top/app_wdf_data[43] ;
input \u_ddr3_top/app_wdf_data[42] ;
input \u_ddr3_top/app_wdf_data[41] ;
input \u_ddr3_top/app_wdf_data[40] ;
input \u_ddr3_top/app_wdf_data[39] ;
input \u_ddr3_top/app_wdf_data[38] ;
input \u_ddr3_top/app_wdf_data[37] ;
input \u_ddr3_top/app_wdf_data[36] ;
input \u_ddr3_top/app_wdf_data[35] ;
input \u_ddr3_top/app_wdf_data[34] ;
input \u_ddr3_top/app_wdf_data[33] ;
input \u_ddr3_top/app_wdf_data[32] ;
input \u_ddr3_top/app_wdf_data[31] ;
input \u_ddr3_top/app_wdf_data[30] ;
input \u_ddr3_top/app_wdf_data[29] ;
input \u_ddr3_top/app_wdf_data[28] ;
input \u_ddr3_top/app_wdf_data[27] ;
input \u_ddr3_top/app_wdf_data[26] ;
input \u_ddr3_top/app_wdf_data[25] ;
input \u_ddr3_top/app_wdf_data[24] ;
input \u_ddr3_top/app_wdf_data[23] ;
input \u_ddr3_top/app_wdf_data[22] ;
input \u_ddr3_top/app_wdf_data[21] ;
input \u_ddr3_top/app_wdf_data[20] ;
input \u_ddr3_top/app_wdf_data[19] ;
input \u_ddr3_top/app_wdf_data[18] ;
input \u_ddr3_top/app_wdf_data[17] ;
input \u_ddr3_top/app_wdf_data[16] ;
input \u_ddr3_top/app_wdf_data[15] ;
input \u_ddr3_top/app_wdf_data[14] ;
input \u_ddr3_top/app_wdf_data[13] ;
input \u_ddr3_top/app_wdf_data[12] ;
input \u_ddr3_top/app_wdf_data[11] ;
input \u_ddr3_top/app_wdf_data[10] ;
input \u_ddr3_top/app_wdf_data[9] ;
input \u_ddr3_top/app_wdf_data[8] ;
input \u_ddr3_top/app_wdf_data[7] ;
input \u_ddr3_top/app_wdf_data[6] ;
input \u_ddr3_top/app_wdf_data[5] ;
input \u_ddr3_top/app_wdf_data[4] ;
input \u_ddr3_top/app_wdf_data[3] ;
input \u_ddr3_top/app_wdf_data[2] ;
input \u_ddr3_top/app_wdf_data[1] ;
input \u_ddr3_top/app_wdf_data[0] ;
input \u_ddr3_top/app_addr[28] ;
input \u_ddr3_top/app_addr[27] ;
input \u_ddr3_top/app_addr[26] ;
input \u_ddr3_top/app_addr[25] ;
input \u_ddr3_top/app_addr[24] ;
input \u_ddr3_top/app_addr[23] ;
input \u_ddr3_top/app_addr[22] ;
input \u_ddr3_top/app_addr[21] ;
input \u_ddr3_top/app_addr[20] ;
input \u_ddr3_top/app_addr[19] ;
input \u_ddr3_top/app_addr[18] ;
input \u_ddr3_top/app_addr[17] ;
input \u_ddr3_top/app_addr[16] ;
input \u_ddr3_top/app_addr[15] ;
input \u_ddr3_top/app_addr[14] ;
input \u_ddr3_top/app_addr[13] ;
input \u_ddr3_top/app_addr[12] ;
input \u_ddr3_top/app_addr[11] ;
input \u_ddr3_top/app_addr[10] ;
input \u_ddr3_top/app_addr[9] ;
input \u_ddr3_top/app_addr[8] ;
input \u_ddr3_top/app_addr[7] ;
input \u_ddr3_top/app_addr[6] ;
input \u_ddr3_top/app_addr[5] ;
input \u_ddr3_top/app_addr[4] ;
input \u_ddr3_top/app_addr[3] ;
input \u_ddr3_top/app_addr[2] ;
input \u_ddr3_top/app_addr[1] ;
input \u_ddr3_top/app_addr[0] ;
input init_calib_complete;
input sys_clk;
input tms_pad_i;
input tck_pad_i;
input tdi_pad_i;
output tdo_pad_o;

wire sys_init_done;
wire sd_miso;
wire sd_cs;
wire sd_mosi;
wire sys_rst_n;
wire ddr_reset_n;
wire ddr_wr_en;
wire sd_rd_busy;
wire sd_rd_val_en;
wire sd_rd_start_en;
wire \sd_rd_val_data[15] ;
wire \sd_rd_val_data[14] ;
wire \sd_rd_val_data[13] ;
wire \sd_rd_val_data[12] ;
wire \sd_rd_val_data[11] ;
wire \sd_rd_val_data[10] ;
wire \sd_rd_val_data[9] ;
wire \sd_rd_val_data[8] ;
wire \sd_rd_val_data[7] ;
wire \sd_rd_val_data[6] ;
wire \sd_rd_val_data[5] ;
wire \sd_rd_val_data[4] ;
wire \sd_rd_val_data[3] ;
wire \sd_rd_val_data[2] ;
wire \sd_rd_val_data[1] ;
wire \sd_rd_val_data[0] ;
wire \ddr_wr_data[15] ;
wire \ddr_wr_data[14] ;
wire \ddr_wr_data[13] ;
wire \ddr_wr_data[12] ;
wire \ddr_wr_data[11] ;
wire \ddr_wr_data[10] ;
wire \ddr_wr_data[9] ;
wire \ddr_wr_data[8] ;
wire \ddr_wr_data[7] ;
wire \ddr_wr_data[6] ;
wire \ddr_wr_data[5] ;
wire \ddr_wr_data[4] ;
wire \ddr_wr_data[3] ;
wire \ddr_wr_data[2] ;
wire \ddr_wr_data[1] ;
wire \ddr_wr_data[0] ;
wire \u_ddr3_top/app_wdf_data[127] ;
wire \u_ddr3_top/app_wdf_data[126] ;
wire \u_ddr3_top/app_wdf_data[125] ;
wire \u_ddr3_top/app_wdf_data[124] ;
wire \u_ddr3_top/app_wdf_data[123] ;
wire \u_ddr3_top/app_wdf_data[122] ;
wire \u_ddr3_top/app_wdf_data[121] ;
wire \u_ddr3_top/app_wdf_data[120] ;
wire \u_ddr3_top/app_wdf_data[119] ;
wire \u_ddr3_top/app_wdf_data[118] ;
wire \u_ddr3_top/app_wdf_data[117] ;
wire \u_ddr3_top/app_wdf_data[116] ;
wire \u_ddr3_top/app_wdf_data[115] ;
wire \u_ddr3_top/app_wdf_data[114] ;
wire \u_ddr3_top/app_wdf_data[113] ;
wire \u_ddr3_top/app_wdf_data[112] ;
wire \u_ddr3_top/app_wdf_data[111] ;
wire \u_ddr3_top/app_wdf_data[110] ;
wire \u_ddr3_top/app_wdf_data[109] ;
wire \u_ddr3_top/app_wdf_data[108] ;
wire \u_ddr3_top/app_wdf_data[107] ;
wire \u_ddr3_top/app_wdf_data[106] ;
wire \u_ddr3_top/app_wdf_data[105] ;
wire \u_ddr3_top/app_wdf_data[104] ;
wire \u_ddr3_top/app_wdf_data[103] ;
wire \u_ddr3_top/app_wdf_data[102] ;
wire \u_ddr3_top/app_wdf_data[101] ;
wire \u_ddr3_top/app_wdf_data[100] ;
wire \u_ddr3_top/app_wdf_data[99] ;
wire \u_ddr3_top/app_wdf_data[98] ;
wire \u_ddr3_top/app_wdf_data[97] ;
wire \u_ddr3_top/app_wdf_data[96] ;
wire \u_ddr3_top/app_wdf_data[95] ;
wire \u_ddr3_top/app_wdf_data[94] ;
wire \u_ddr3_top/app_wdf_data[93] ;
wire \u_ddr3_top/app_wdf_data[92] ;
wire \u_ddr3_top/app_wdf_data[91] ;
wire \u_ddr3_top/app_wdf_data[90] ;
wire \u_ddr3_top/app_wdf_data[89] ;
wire \u_ddr3_top/app_wdf_data[88] ;
wire \u_ddr3_top/app_wdf_data[87] ;
wire \u_ddr3_top/app_wdf_data[86] ;
wire \u_ddr3_top/app_wdf_data[85] ;
wire \u_ddr3_top/app_wdf_data[84] ;
wire \u_ddr3_top/app_wdf_data[83] ;
wire \u_ddr3_top/app_wdf_data[82] ;
wire \u_ddr3_top/app_wdf_data[81] ;
wire \u_ddr3_top/app_wdf_data[80] ;
wire \u_ddr3_top/app_wdf_data[79] ;
wire \u_ddr3_top/app_wdf_data[78] ;
wire \u_ddr3_top/app_wdf_data[77] ;
wire \u_ddr3_top/app_wdf_data[76] ;
wire \u_ddr3_top/app_wdf_data[75] ;
wire \u_ddr3_top/app_wdf_data[74] ;
wire \u_ddr3_top/app_wdf_data[73] ;
wire \u_ddr3_top/app_wdf_data[72] ;
wire \u_ddr3_top/app_wdf_data[71] ;
wire \u_ddr3_top/app_wdf_data[70] ;
wire \u_ddr3_top/app_wdf_data[69] ;
wire \u_ddr3_top/app_wdf_data[68] ;
wire \u_ddr3_top/app_wdf_data[67] ;
wire \u_ddr3_top/app_wdf_data[66] ;
wire \u_ddr3_top/app_wdf_data[65] ;
wire \u_ddr3_top/app_wdf_data[64] ;
wire \u_ddr3_top/app_wdf_data[63] ;
wire \u_ddr3_top/app_wdf_data[62] ;
wire \u_ddr3_top/app_wdf_data[61] ;
wire \u_ddr3_top/app_wdf_data[60] ;
wire \u_ddr3_top/app_wdf_data[59] ;
wire \u_ddr3_top/app_wdf_data[58] ;
wire \u_ddr3_top/app_wdf_data[57] ;
wire \u_ddr3_top/app_wdf_data[56] ;
wire \u_ddr3_top/app_wdf_data[55] ;
wire \u_ddr3_top/app_wdf_data[54] ;
wire \u_ddr3_top/app_wdf_data[53] ;
wire \u_ddr3_top/app_wdf_data[52] ;
wire \u_ddr3_top/app_wdf_data[51] ;
wire \u_ddr3_top/app_wdf_data[50] ;
wire \u_ddr3_top/app_wdf_data[49] ;
wire \u_ddr3_top/app_wdf_data[48] ;
wire \u_ddr3_top/app_wdf_data[47] ;
wire \u_ddr3_top/app_wdf_data[46] ;
wire \u_ddr3_top/app_wdf_data[45] ;
wire \u_ddr3_top/app_wdf_data[44] ;
wire \u_ddr3_top/app_wdf_data[43] ;
wire \u_ddr3_top/app_wdf_data[42] ;
wire \u_ddr3_top/app_wdf_data[41] ;
wire \u_ddr3_top/app_wdf_data[40] ;
wire \u_ddr3_top/app_wdf_data[39] ;
wire \u_ddr3_top/app_wdf_data[38] ;
wire \u_ddr3_top/app_wdf_data[37] ;
wire \u_ddr3_top/app_wdf_data[36] ;
wire \u_ddr3_top/app_wdf_data[35] ;
wire \u_ddr3_top/app_wdf_data[34] ;
wire \u_ddr3_top/app_wdf_data[33] ;
wire \u_ddr3_top/app_wdf_data[32] ;
wire \u_ddr3_top/app_wdf_data[31] ;
wire \u_ddr3_top/app_wdf_data[30] ;
wire \u_ddr3_top/app_wdf_data[29] ;
wire \u_ddr3_top/app_wdf_data[28] ;
wire \u_ddr3_top/app_wdf_data[27] ;
wire \u_ddr3_top/app_wdf_data[26] ;
wire \u_ddr3_top/app_wdf_data[25] ;
wire \u_ddr3_top/app_wdf_data[24] ;
wire \u_ddr3_top/app_wdf_data[23] ;
wire \u_ddr3_top/app_wdf_data[22] ;
wire \u_ddr3_top/app_wdf_data[21] ;
wire \u_ddr3_top/app_wdf_data[20] ;
wire \u_ddr3_top/app_wdf_data[19] ;
wire \u_ddr3_top/app_wdf_data[18] ;
wire \u_ddr3_top/app_wdf_data[17] ;
wire \u_ddr3_top/app_wdf_data[16] ;
wire \u_ddr3_top/app_wdf_data[15] ;
wire \u_ddr3_top/app_wdf_data[14] ;
wire \u_ddr3_top/app_wdf_data[13] ;
wire \u_ddr3_top/app_wdf_data[12] ;
wire \u_ddr3_top/app_wdf_data[11] ;
wire \u_ddr3_top/app_wdf_data[10] ;
wire \u_ddr3_top/app_wdf_data[9] ;
wire \u_ddr3_top/app_wdf_data[8] ;
wire \u_ddr3_top/app_wdf_data[7] ;
wire \u_ddr3_top/app_wdf_data[6] ;
wire \u_ddr3_top/app_wdf_data[5] ;
wire \u_ddr3_top/app_wdf_data[4] ;
wire \u_ddr3_top/app_wdf_data[3] ;
wire \u_ddr3_top/app_wdf_data[2] ;
wire \u_ddr3_top/app_wdf_data[1] ;
wire \u_ddr3_top/app_wdf_data[0] ;
wire \u_ddr3_top/app_addr[28] ;
wire \u_ddr3_top/app_addr[27] ;
wire \u_ddr3_top/app_addr[26] ;
wire \u_ddr3_top/app_addr[25] ;
wire \u_ddr3_top/app_addr[24] ;
wire \u_ddr3_top/app_addr[23] ;
wire \u_ddr3_top/app_addr[22] ;
wire \u_ddr3_top/app_addr[21] ;
wire \u_ddr3_top/app_addr[20] ;
wire \u_ddr3_top/app_addr[19] ;
wire \u_ddr3_top/app_addr[18] ;
wire \u_ddr3_top/app_addr[17] ;
wire \u_ddr3_top/app_addr[16] ;
wire \u_ddr3_top/app_addr[15] ;
wire \u_ddr3_top/app_addr[14] ;
wire \u_ddr3_top/app_addr[13] ;
wire \u_ddr3_top/app_addr[12] ;
wire \u_ddr3_top/app_addr[11] ;
wire \u_ddr3_top/app_addr[10] ;
wire \u_ddr3_top/app_addr[9] ;
wire \u_ddr3_top/app_addr[8] ;
wire \u_ddr3_top/app_addr[7] ;
wire \u_ddr3_top/app_addr[6] ;
wire \u_ddr3_top/app_addr[5] ;
wire \u_ddr3_top/app_addr[4] ;
wire \u_ddr3_top/app_addr[3] ;
wire \u_ddr3_top/app_addr[2] ;
wire \u_ddr3_top/app_addr[1] ;
wire \u_ddr3_top/app_addr[0] ;
wire init_calib_complete;
wire sys_clk;
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
    .trig0_i(sd_mosi),
    .trig1_i(init_calib_complete),
    .trig2_i(sys_init_done),
    .trig3_i(sd_rd_val_en),
    .trig4_i(ddr_wr_en),
    .data_i({sys_init_done,sd_miso,sd_cs,sd_mosi,sys_rst_n,ddr_reset_n,ddr_wr_en,sd_rd_busy,sd_rd_val_en,sd_rd_start_en,\sd_rd_val_data[15] ,\sd_rd_val_data[14] ,\sd_rd_val_data[13] ,\sd_rd_val_data[12] ,\sd_rd_val_data[11] ,\sd_rd_val_data[10] ,\sd_rd_val_data[9] ,\sd_rd_val_data[8] ,\sd_rd_val_data[7] ,\sd_rd_val_data[6] ,\sd_rd_val_data[5] ,\sd_rd_val_data[4] ,\sd_rd_val_data[3] ,\sd_rd_val_data[2] ,\sd_rd_val_data[1] ,\sd_rd_val_data[0] ,\ddr_wr_data[15] ,\ddr_wr_data[14] ,\ddr_wr_data[13] ,\ddr_wr_data[12] ,\ddr_wr_data[11] ,\ddr_wr_data[10] ,\ddr_wr_data[9] ,\ddr_wr_data[8] ,\ddr_wr_data[7] ,\ddr_wr_data[6] ,\ddr_wr_data[5] ,\ddr_wr_data[4] ,\ddr_wr_data[3] ,\ddr_wr_data[2] ,\ddr_wr_data[1] ,\ddr_wr_data[0] ,\u_ddr3_top/app_wdf_data[127] ,\u_ddr3_top/app_wdf_data[126] ,\u_ddr3_top/app_wdf_data[125] ,\u_ddr3_top/app_wdf_data[124] ,\u_ddr3_top/app_wdf_data[123] ,\u_ddr3_top/app_wdf_data[122] ,\u_ddr3_top/app_wdf_data[121] ,\u_ddr3_top/app_wdf_data[120] ,\u_ddr3_top/app_wdf_data[119] ,\u_ddr3_top/app_wdf_data[118] ,\u_ddr3_top/app_wdf_data[117] ,\u_ddr3_top/app_wdf_data[116] ,\u_ddr3_top/app_wdf_data[115] ,\u_ddr3_top/app_wdf_data[114] ,\u_ddr3_top/app_wdf_data[113] ,\u_ddr3_top/app_wdf_data[112] ,\u_ddr3_top/app_wdf_data[111] ,\u_ddr3_top/app_wdf_data[110] ,\u_ddr3_top/app_wdf_data[109] ,\u_ddr3_top/app_wdf_data[108] ,\u_ddr3_top/app_wdf_data[107] ,\u_ddr3_top/app_wdf_data[106] ,\u_ddr3_top/app_wdf_data[105] ,\u_ddr3_top/app_wdf_data[104] ,\u_ddr3_top/app_wdf_data[103] ,\u_ddr3_top/app_wdf_data[102] ,\u_ddr3_top/app_wdf_data[101] ,\u_ddr3_top/app_wdf_data[100] ,\u_ddr3_top/app_wdf_data[99] ,\u_ddr3_top/app_wdf_data[98] ,\u_ddr3_top/app_wdf_data[97] ,\u_ddr3_top/app_wdf_data[96] ,\u_ddr3_top/app_wdf_data[95] ,\u_ddr3_top/app_wdf_data[94] ,\u_ddr3_top/app_wdf_data[93] ,\u_ddr3_top/app_wdf_data[92] ,\u_ddr3_top/app_wdf_data[91] ,\u_ddr3_top/app_wdf_data[90] ,\u_ddr3_top/app_wdf_data[89] ,\u_ddr3_top/app_wdf_data[88] ,\u_ddr3_top/app_wdf_data[87] ,\u_ddr3_top/app_wdf_data[86] ,\u_ddr3_top/app_wdf_data[85] ,\u_ddr3_top/app_wdf_data[84] ,\u_ddr3_top/app_wdf_data[83] ,\u_ddr3_top/app_wdf_data[82] ,\u_ddr3_top/app_wdf_data[81] ,\u_ddr3_top/app_wdf_data[80] ,\u_ddr3_top/app_wdf_data[79] ,\u_ddr3_top/app_wdf_data[78] ,\u_ddr3_top/app_wdf_data[77] ,\u_ddr3_top/app_wdf_data[76] ,\u_ddr3_top/app_wdf_data[75] ,\u_ddr3_top/app_wdf_data[74] ,\u_ddr3_top/app_wdf_data[73] ,\u_ddr3_top/app_wdf_data[72] ,\u_ddr3_top/app_wdf_data[71] ,\u_ddr3_top/app_wdf_data[70] ,\u_ddr3_top/app_wdf_data[69] ,\u_ddr3_top/app_wdf_data[68] ,\u_ddr3_top/app_wdf_data[67] ,\u_ddr3_top/app_wdf_data[66] ,\u_ddr3_top/app_wdf_data[65] ,\u_ddr3_top/app_wdf_data[64] ,\u_ddr3_top/app_wdf_data[63] ,\u_ddr3_top/app_wdf_data[62] ,\u_ddr3_top/app_wdf_data[61] ,\u_ddr3_top/app_wdf_data[60] ,\u_ddr3_top/app_wdf_data[59] ,\u_ddr3_top/app_wdf_data[58] ,\u_ddr3_top/app_wdf_data[57] ,\u_ddr3_top/app_wdf_data[56] ,\u_ddr3_top/app_wdf_data[55] ,\u_ddr3_top/app_wdf_data[54] ,\u_ddr3_top/app_wdf_data[53] ,\u_ddr3_top/app_wdf_data[52] ,\u_ddr3_top/app_wdf_data[51] ,\u_ddr3_top/app_wdf_data[50] ,\u_ddr3_top/app_wdf_data[49] ,\u_ddr3_top/app_wdf_data[48] ,\u_ddr3_top/app_wdf_data[47] ,\u_ddr3_top/app_wdf_data[46] ,\u_ddr3_top/app_wdf_data[45] ,\u_ddr3_top/app_wdf_data[44] ,\u_ddr3_top/app_wdf_data[43] ,\u_ddr3_top/app_wdf_data[42] ,\u_ddr3_top/app_wdf_data[41] ,\u_ddr3_top/app_wdf_data[40] ,\u_ddr3_top/app_wdf_data[39] ,\u_ddr3_top/app_wdf_data[38] ,\u_ddr3_top/app_wdf_data[37] ,\u_ddr3_top/app_wdf_data[36] ,\u_ddr3_top/app_wdf_data[35] ,\u_ddr3_top/app_wdf_data[34] ,\u_ddr3_top/app_wdf_data[33] ,\u_ddr3_top/app_wdf_data[32] ,\u_ddr3_top/app_wdf_data[31] ,\u_ddr3_top/app_wdf_data[30] ,\u_ddr3_top/app_wdf_data[29] ,\u_ddr3_top/app_wdf_data[28] ,\u_ddr3_top/app_wdf_data[27] ,\u_ddr3_top/app_wdf_data[26] ,\u_ddr3_top/app_wdf_data[25] ,\u_ddr3_top/app_wdf_data[24] ,\u_ddr3_top/app_wdf_data[23] ,\u_ddr3_top/app_wdf_data[22] ,\u_ddr3_top/app_wdf_data[21] ,\u_ddr3_top/app_wdf_data[20] ,\u_ddr3_top/app_wdf_data[19] ,\u_ddr3_top/app_wdf_data[18] ,\u_ddr3_top/app_wdf_data[17] ,\u_ddr3_top/app_wdf_data[16] ,\u_ddr3_top/app_wdf_data[15] ,\u_ddr3_top/app_wdf_data[14] ,\u_ddr3_top/app_wdf_data[13] ,\u_ddr3_top/app_wdf_data[12] ,\u_ddr3_top/app_wdf_data[11] ,\u_ddr3_top/app_wdf_data[10] ,\u_ddr3_top/app_wdf_data[9] ,\u_ddr3_top/app_wdf_data[8] ,\u_ddr3_top/app_wdf_data[7] ,\u_ddr3_top/app_wdf_data[6] ,\u_ddr3_top/app_wdf_data[5] ,\u_ddr3_top/app_wdf_data[4] ,\u_ddr3_top/app_wdf_data[3] ,\u_ddr3_top/app_wdf_data[2] ,\u_ddr3_top/app_wdf_data[1] ,\u_ddr3_top/app_wdf_data[0] ,\u_ddr3_top/app_addr[28] ,\u_ddr3_top/app_addr[27] ,\u_ddr3_top/app_addr[26] ,\u_ddr3_top/app_addr[25] ,\u_ddr3_top/app_addr[24] ,\u_ddr3_top/app_addr[23] ,\u_ddr3_top/app_addr[22] ,\u_ddr3_top/app_addr[21] ,\u_ddr3_top/app_addr[20] ,\u_ddr3_top/app_addr[19] ,\u_ddr3_top/app_addr[18] ,\u_ddr3_top/app_addr[17] ,\u_ddr3_top/app_addr[16] ,\u_ddr3_top/app_addr[15] ,\u_ddr3_top/app_addr[14] ,\u_ddr3_top/app_addr[13] ,\u_ddr3_top/app_addr[12] ,\u_ddr3_top/app_addr[11] ,\u_ddr3_top/app_addr[10] ,\u_ddr3_top/app_addr[9] ,\u_ddr3_top/app_addr[8] ,\u_ddr3_top/app_addr[7] ,\u_ddr3_top/app_addr[6] ,\u_ddr3_top/app_addr[5] ,\u_ddr3_top/app_addr[4] ,\u_ddr3_top/app_addr[3] ,\u_ddr3_top/app_addr[2] ,\u_ddr3_top/app_addr[1] ,\u_ddr3_top/app_addr[0] }),
    .clk_i(sys_clk)
);

endmodule
