module  hdmi_colorbar(
    input        sys_clk,
    input        sys_rst_n,
    
    output       tmds_clk_p,    // TMDS 时钟通道
    output       tmds_clk_n,
    output [2:0] tmds_data_p,   // TMDS 数据通道
    output [2:0] tmds_data_n
);

wire S_AXIS_TREADY,S_AXIS_TVALID,S_AXIS_TLAST;
wire  [31:0] S_AXIS_TDATA;
wire  [23:0] R_AXIS_Out;
wire          pixel_clk;
wire          pixel_clk_5x;
wire          lock;

wire  [10:0]  pixel_xpos_w;
wire  [10:0]  pixel_ypos_w;
wire  [23:0]  pixel_data_w;

wire          video_hs;
wire          video_vs;
wire          video_de;
wire  [23:0]  video_rgb;

//*****************************************************
//**                    main code
//*****************************************************

assign rst_n = sys_rst_n & lock;

//例化AXI模拟信号产生模块
stream_generator_origin #(
    .AXIS_DATA_WIDTH(32),
    .AXIS_KEEP_WIDTH(32/8),
    .AXIS_ID_WIDTH(8),
    .AXIS_DEST_WIDTH(8),
    .AXIS_USER_WIDTH(1)
) stream_generator_origin_uut (
    .clk(sys_clk),
    .rst(~rst_n),
    .m_axis_read_data_tready(S_AXIS_TREADY),

    .m_axis_read_data_tdata(S_AXIS_TDATA),
    .m_axis_read_data_tkeep(),
    .m_axis_read_data_tvalid(S_AXIS_TVALID),
    .m_axis_read_data_tlast(S_AXIS_TLAST),
    .m_axis_read_data_tid(),
    .m_axis_read_data_tdest(),
    .m_axis_read_data_tuser()
);

//例化AXI 接收模块
myip_v2_0_S00_AXIS #(
    .C_S_AXIS_TDATA_WIDTH(8),//FIFO 宽度
    .DATA_DEPTH(96*3) //FIFO 深度
) myip_v2_0_S00_AXIS_uut (
    .S_AXIS_ACLK(sys_clk), 
    .S_AXIS_ARESETN(rst_n), 
    .S_AXIS_TDATA(S_AXIS_TDATA), 
    .S_AXIS_TVALID(S_AXIS_TVALID), 
    .S_AXIS_TLAST(S_AXIS_TLAST),
    .R_AXIS_ACLK(sys_clk), 
    .R_AXIS_ARESETN(rst_n),

    .S_AXIS_TREADY(S_AXIS_TREADY), 
    .R_AXIS_Out(R_AXIS_Out)
);


//例化 PLL IP核
rpll_pixel_clk_5x rpll_pixel_clk_5x(
    .clkout     (pixel_clk_5x), 
    .lock       (lock        ),
    .reset      (~sys_rst_n  ), 
    .clkin      (sys_clk     ) 
);

//例化时钟5分频IP核
//clk_div5 clk_div5(
//    .clkout     (pixel_clk   ), 
//    .hclkin     (pixel_clk_5x), 
//    .calib      (1'b1        ),
//    .resetn     (rst_n       ) 
//);

CLKDIV u_clkdiv
(.RESETN(rst_n)
,.HCLKIN(pixel_clk_5x) //clk  x5
,.CLKOUT(pixel_clk)    //clk  x1
,.CALIB (1'b1)
);
defparam u_clkdiv.DIV_MODE="5";
defparam u_clkdiv.GSREN="false";

video_driver  u_video_driver(
    .pixel_clk      (pixel_clk   ),
    .sys_rst_n      (rst_n       ),
    .pixel_data     (24'hffffff), //[23:0] 24'ffffff

    .video_hs       (video_hs    ),
    .video_vs       (video_vs    ),
    .video_de       (video_de    ),
    .video_rgb      (video_rgb   ),
	.data_req		(),

    .pixel_xpos     (),
    .pixel_ypos     ()
	
);

/*例化视频显示模块
video_display  u_video_display(
    .pixel_clk      (pixel_clk   ),
    .sys_rst_n      (rst_n       ),
 
    .pixel_xpos     (pixel_xpos_w),
    .pixel_ypos     (pixel_ypos_w),
    .pixel_data     (pixel_data_w)
    );
*/
//例化HDMI驱动模块
dvi_transmitter_top u_rgb2dvi_0(
    .pclk           (pixel_clk   ),
    .pclk_x5        (pixel_clk_5x),
    .reset_n        (rst_n       ),
                
    .video_din      (video_rgb),
    .video_hsync    (video_hs), 
    .video_vsync    (video_vs),
    .video_de       (video_de),
                
    .tmds_clk_p     (tmds_clk_p),
    .tmds_clk_n     (tmds_clk_n),
    .tmds_data_p    (tmds_data_p),
    .tmds_data_n    (tmds_data_n)                        
    );






endmodule 