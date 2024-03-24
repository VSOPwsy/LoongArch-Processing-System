module sd_read_para_top # (
    parameter DDR_MIN_ADDR = 32'd000000,
    parameter DDR_MAX_ADDR = 32'd384000,
    parameter SD_SEC_NUM = 16'd1212,
    parameter MODEL_ADDR_START = 32'd67072,
    parameter MODEL_HEAD_NUM = 6'd0
)(    
    input                 sys_clk      ,
    input                 sys_rst_n    ,
    //SD卡接口
    input                 sd_miso      ,
    output                sd_clk       ,
    output                sd_cs        ,
    output                sd_mosi      ,
    //DDR3
    input           ui_clk,
    input           init_calib_complete  ,
    input           app_rdy              ,
    output          app_cmd_en           ,
    output [32:0]   app_addr             ,
    input           app_wdf_rdy          ,
    output [127:0]  app_wdf_data         ,
    output [15:0]   app_wdf_mask         ,
    output          app_wdf_wren         ,

    output init_model_complete

    );     

wire         sys_init_done;
wire         sd_init_done;
wire         ddr_wr_en;  
wire [15:0]  ddr_wr_data,sd_rd_val_data;
wire         sd_rd_busy,sd_rd_val_en,sd_rd_start_en;
wire [31:0]  sd_rd_sec_addr; 

assign  sys_init_done = init_calib_complete & sd_init_done;	

//SD卡顶层控制模块
sd_ctrl_top u_sd_ctrl_top(
    .clk_ref                (sys_clk),
    .rst_n                  (sys_rst_n),
    //SD卡接口
    .sd_miso                (sd_miso),
    .sd_clk                 (sd_clk),
    .sd_cs                  (sd_cs),
    .sd_mosi                (sd_mosi),
    //用户读SD卡接口
    .rd_start_en            (sd_rd_start_en),
    .rd_sec_addr            (sd_rd_sec_addr),
    .rd_busy                (sd_rd_busy),
    .rd_val_en              (sd_rd_val_en),
    .rd_val_data            (sd_rd_val_data),    
    
    .sd_init_done           (sd_init_done)
    );


sd_read_model # (
    .DDR_MIN_ADDR(DDR_MIN_ADDR),
    .DDR_MAX_ADDR(DDR_MAX_ADDR),
    .SD_SEC_NUM(SD_SEC_NUM),
    .MODEL_ADDR_START(MODEL_ADDR_START),
    .MODEL_HEAD_NUM(MODEL_HEAD_NUM)
)u_sd_read_model(
    .clk                   (sys_clk),
    .rst_n                 (sys_rst_n & sys_init_done),
    .rd_busy               (sd_rd_busy),
    .sd_rd_val_en          (sd_rd_val_en),
    .sd_rd_val_data        (sd_rd_val_data),

    .init_model_complete   (init_model_complete),
    .rd_start_en           (sd_rd_start_en),
    .rd_sec_addr           (sd_rd_sec_addr),
    .ddr_wr_en             (ddr_wr_en),
    .ddr_wr_data           (ddr_wr_data)
    );

ddr3_top # (
    .DDR_MIN_ADDR(DDR_MIN_ADDR),
    .DDR_MAX_ADDR(DDR_MAX_ADDR)
)u_ddr3_top(
    .wr_clk              (sys_clk)              ,
    .ui_clk              (ui_clk)               ,
    .rst_n               (sys_rst_n)            ,
    .wr_en               (ddr_wr_en)            ,
    .wrdata              (ddr_wr_data)          ,

    .app_rdy             (app_rdy)              ,
    .app_cmd_en          (app_cmd_en)           ,
    .app_addr            (app_addr)             ,
    .app_wdf_rdy         (app_wdf_rdy)          ,
    .app_wdf_data        (app_wdf_data)         ,
    .app_wdf_mask        (app_wdf_mask)         ,
    .app_wdf_wren        (app_wdf_wren)         
    );

endmodule