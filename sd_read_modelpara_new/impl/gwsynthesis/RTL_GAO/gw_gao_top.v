module gw_gao(
    sys_clk,
    memory_clk,
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
    init_calib_complete,
    sys_init_done,
    sd_init_done,
    sd_miso,
    sd_cs,
    sd_mosi,
    led,
    tms_pad_i,
    tck_pad_i,
    tdi_pad_i,
    tdo_pad_o
);

input sys_clk;
input memory_clk;
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
input init_calib_complete;
input sys_init_done;
input sd_init_done;
input sd_miso;
input sd_cs;
input sd_mosi;
input led;
input tms_pad_i;
input tck_pad_i;
input tdi_pad_i;
output tdo_pad_o;

wire sys_clk;
wire memory_clk;
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
wire init_calib_complete;
wire sys_init_done;
wire sd_init_done;
wire sd_miso;
wire sd_cs;
wire sd_mosi;
wire led;
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
    .trig0_i(led),
    .trig1_i(sys_clk),
    .trig2_i(led),
    .data_i({sys_clk,memory_clk,\ddr_wr_data[15] ,\ddr_wr_data[14] ,\ddr_wr_data[13] ,\ddr_wr_data[12] ,\ddr_wr_data[11] ,\ddr_wr_data[10] ,\ddr_wr_data[9] ,\ddr_wr_data[8] ,\ddr_wr_data[7] ,\ddr_wr_data[6] ,\ddr_wr_data[5] ,\ddr_wr_data[4] ,\ddr_wr_data[3] ,\ddr_wr_data[2] ,\ddr_wr_data[1] ,\ddr_wr_data[0] ,init_calib_complete,sys_init_done,sd_init_done,sd_miso,sd_cs,sd_mosi}),
    .clk_i(memory_clk)
);

endmodule
