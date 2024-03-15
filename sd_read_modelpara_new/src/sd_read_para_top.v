module sd_read_para_top(    
    input                 sys_clk      ,  //系统时钟
    input                 sys_rst_n    ,  //系统复位，低电平有效
    //SD卡接口
    input                 sd_miso      ,  //SD卡SPI串行输入数据信号
    output                sd_clk       ,  //SD卡SPI时钟信号
    output                sd_cs        ,  //SD卡SPI片选信号
    output                sd_mosi      ,  //SD卡SPI串行输出数据信号
    //DDR3                            
	output                ddr_reset_n   ,  //ddr3 复位
    output [13:0]         ddr_addr      ,  //ddr3 地址
    output [2:0]          ddr_bank      ,  //ddr3 banck 选择
    output                ddr_cs        ,  //ddr3 片选
    output                ddr_ras       ,  //ddr3 行选择
    output                ddr_cas       ,  //ddr3 列选择
    output                ddr_we        ,  //ddr3 读写选择
    output                ddr_ck        ,
    output                ddr_ck_n      ,
    output                ddr_cke       ,  //ddr3 时钟使能
    output                ddr_odt       ,
    output [1:0]          ddr_dm        ,
    inout  [1:0]          ddr_dqs_n     ,    
    inout  [15:0]         ddr_dq        ,  //ddr3 数据
    inout  [1:0]          ddr_dqs       
    );     

 
wire         clk_50m_180deg;
wire         clk_50m;
wire         memory_clk;

wire         rst_n;
wire         lock_o;
wire         lock;
wire         init_calib_complete;
wire         sys_init_done;
wire         sd_init_done;
wire         ddr_wr_en;  
wire [15:0]  ddr_wr_data,sd_rd_val_data;
wire         sd_rd_busy,sd_rd_val_en,sd_rd_start_en;
wire [31:0]  sd_rd_sec_addr; 

parameter  wr_bust_len = 8'd64;//写突发长度
parameter ddr_max_addr = 24'd384000; //DDR读写最大地址,表示需要读出数据的数量，一般考虑数据完整性，需要多读一个扇区，但是其实读够所有参数之后就不再向DDR中写入最后一个扇区中的无关量
parameter sd_sec_num = 16'd1212; //sd卡读扇区个数

assign  rst_n = sys_rst_n & lock_o;	
assign  sys_init_done = init_calib_complete & sd_init_done;	

//SD卡顶层控制模块
sd_ctrl_top u_sd_ctrl_top(
    .clk_ref                (sys_clk),
    .clk_ref_180deg         (clk_50m_180deg),
    .rst_n                  (rst_n),
    //SD卡接口
    .sd_miso                (sd_miso),
    .sd_clk                 (sd_clk),
    .sd_cs                  (sd_cs),
    .sd_mosi                (sd_mosi),
    //用户写SD卡接口
    .wr_start_en            (1'b0),                      //不需要写入数据,写入接口赋值为0
    .wr_sec_addr            (32'b0),
    .wr_data                (16'b0),
    .wr_busy                (),
    .wr_req                 (),
    //用户读SD卡接口
    .rd_start_en            (sd_rd_start_en),
    .rd_sec_addr            (sd_rd_sec_addr),
    .rd_busy                (sd_rd_busy),
    .rd_val_en              (sd_rd_val_en),
    .rd_val_data            (sd_rd_val_data),    
    
    .sd_init_done           (sd_init_done)
    );  


sd_rpll u_sd_rpll(
        .clkout(clk_50m), //output clkout
        .lock(lock_o), //output lock
        .clkoutp(clk_50m_180deg), //output clkoutp
        .reset(~sys_rst_n), 
        .clkin(sys_clk) 
    );

ddr_rpll u_ddr_rpll(
        .clkout(memory_clk), //output clkout
        .lock(lock), //output lock
        .reset(~sys_rst_n), //input reset
        .clkin(sys_clk) //input clkin
    );


sd_read_model u_sd_read_model(
    .clk                   (sys_clk),
    .rst_n                 (rst_n & sys_init_done ), //系统初始化完成之后,再开始从SD卡中读取
    .ddr_max_addr          (ddr_max_addr),//sd卡读写最大地址       
    .sd_sec_num            (sd_sec_num), //sd卡读扇区个数
    .rd_busy               (sd_rd_busy), //sd卡读忙信号
    .sd_rd_val_en          (sd_rd_val_en), //sd卡读数据有效信号
    .sd_rd_val_data        (sd_rd_val_data), //sd卡读出的数据

    .model_rd_done         (),
    .rd_start_en           (sd_rd_start_en), 
    .rd_sec_addr           (sd_rd_sec_addr),             
    .ddr_wr_en             (ddr_wr_en),  //ddr写使能
    .ddr_wr_data           (ddr_wr_data) //ddr写数据
    );  

ddr3_top u_ddr3_top(
    .clk                 (sys_clk)              ,
    .memory_clk          (memory_clk)           ,
    .pll_lock            (lock)                 ,
    .rst_n               (sys_rst_n)            ,
    .init_calib_complete (init_calib_complete)  ,  //ddr3初始化完成信号   
    .ddr_addr            (ddr_addr)             ,
    .ddr_bank            (ddr_bank)             ,
    .ddr_cs              (ddr_cs)               ,
    .ddr_ras             (ddr_ras)              ,
    .ddr_cas             (ddr_cas)              ,
    .ddr_we              (ddr_we)               ,
    .ddr_ck              (ddr_ck)               ,
    .ddr_ck_n            (ddr_ck_n)             ,
    .ddr_cke             (ddr_cke)              ,
    .ddr_odt             (ddr_odt)              ,
    .ddr_reset_n         (ddr_reset_n)          ,
    .ddr_dm              (ddr_dm)               ,
    .ddr_dq              (ddr_dq)               ,
    .ddr_dqs             (ddr_dqs)              ,
    .ddr_dqs_n           (ddr_dqs_n)            ,


    .wr_clk              (sys_clk)              ,
    .rd_clk              (sys_clk)              ,
    .wr_en               (ddr_wr_en)            ,
    .wrdata              (ddr_wr_data)              ,
    .rd_req              (1'b0)            ,  //读fifo读使能
    .app_addr_rd_min     (28'd0)                ,  //读ddr3的起始地址 
    .app_addr_rd_max     (ddr_max_addr)  ,  //读ddr3的结束地址 
    .rd_bust_len         (wr_bust_len)         ,  //从ddr3中读数据时的突发长度  
    .app_addr_wr_min     (28'd0)                ,  //写ddr3的起始地址 
    .app_addr_wr_max     (ddr_max_addr)  ,  //写ddr3的结束地址
    .wr_bust_len         (wr_bust_len)         ,  //从ddr3中写数据时的突发长度  
    .ddr3_read_valid     (1'b1)                 ,
    .rd_load             (1'b0)             ,
    .wr_load             (1'b0)     ,
    .ddr3_pingpang_en    (1'b1)                 ,
    .rddata              ( )  
    );      

endmodule