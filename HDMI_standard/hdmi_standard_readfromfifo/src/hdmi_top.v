module  hdmi_top(
    input        sys_clk,
    input        sys_rst_n,

    input        S_AXIS_ACLK,
    input [23:0] S_AXIS_TDATA,
    input        S_AXIS_TVALID,
    input        S_AXIS_TLAST,

    output       S_AXIS_TREADY,
    output       tmds_clk_p,    // TMDS 时钟通道
    output       tmds_clk_n,
    output [2:0] tmds_data_p,   // TMDS 数据通道
    output [2:0] tmds_data_n
);

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

    .video_hs       (video_hs    ),
    .video_vs       (video_vs    ),
    .video_de       (video_de    ),
    .video_rgb      (video_rgb  ),
	.data_req		(),

    //.pixel_xpos     (pixel_xpos_w),
    //.pixel_ypos     (pixel_ypos_w),
	.pixel_data     (S_AXIS_Out)
);

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

//例化AXI接收模块


myip_v1_0_S00_AXIS #(
    .C_S_AXIS_TDATA_WIDTH(24)
) UUT (
    .S_AXIS_ACLK(S_AXIS_ACLK),
    .S_AXIS_ARESETN(rst_n),
    .S_AXIS_TDATA(S_AXIS_TDATA),
    .S_AXIS_TSTRB(3'b111),
    .S_AXIS_TVALID(S_AXIS_TVALID),
    .S_AXIS_TLAST(S_AXIS_TLAST),

    .S_AXIS_TREADY(S_AXIS_TREADY),
    .S_AXIS_Out(S_AXIS_Out)
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
endmodule 