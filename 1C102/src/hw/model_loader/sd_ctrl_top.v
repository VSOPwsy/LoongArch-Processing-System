module sd_ctrl_top(
    input                clk_ref       ,  //时钟信号
    input                rst_n         ,  //复位信号,低电平有效
    input                start         ,    
    //SD卡接口
    input                sd_miso       ,  //SD卡SPI串行输入数据信号
    output               sd_clk        ,  //SD卡SPI时钟信号    
    output  reg          sd_cs         ,  //SD卡SPI片选信号
    output  reg          sd_mosi       ,  //SD卡SPI串行输出数据信号
    //用户读SD卡接口
    input                rd_start_en   ,  //开始读SD卡数据信号
    input        [31:0]  rd_sec_addr   ,  //读数据扇区地址
    output               rd_busy       ,  //读数据忙信号
    output               rd_val_en     ,  //读数据有效信号
    output       [15:0]  rd_val_data   ,  //读数据    
    
    output               sd_init_done     //SD卡初始化完成信号
    );

//wire define
wire                init_sd_clk   ;       //初始化SD卡时的低速时钟
wire                init_sd_cs    ;       //初始化模块SD片选信号
wire                init_sd_mosi  ;       //初始化模块SD数据输出信号
wire                rd_sd_cs      ;       //读数据模块SD片选信号     
wire                rd_sd_mosi    ;       //读数据模块SD数据输出信号 

//*****************************************************
//**                    main code
//*****************************************************

//SD卡的SPI_CLK  
assign  sd_clk = (sd_init_done==1'b0)  ?  init_sd_clk  :  ~clk_ref;

//SD卡接口信号选择
always @(*) begin
    //SD卡初始化完成之前,端口信号和初始化模块信号相连
    if(sd_init_done == 1'b0) begin     
        sd_cs = init_sd_cs;
        sd_mosi = init_sd_mosi;
    end
    else if(rd_busy) begin
        sd_cs = rd_sd_cs;
        sd_mosi = rd_sd_mosi;       
    end    
    else begin
        sd_cs = 1'b1;
        sd_mosi = 1'b1;
    end    
end    

//SD卡初始化
sd_init u_sd_init(
    .clk_ref            (clk_ref),
    .rst_n              (rst_n),
    
    .sd_miso            (sd_miso),
    .sd_clk             (init_sd_clk),
    .sd_cs              (init_sd_cs),
    .sd_mosi            (init_sd_mosi),
    
    .sd_init_done       (sd_init_done)
    );


//SD卡读数据
sd_read u_sd_read(
    .clk_ref            (clk_ref),
    .rst_n              (rst_n & (~start)),
    
    .sd_miso            (sd_miso),
    .sd_cs              (rd_sd_cs),
    .sd_mosi            (rd_sd_mosi),    
    //SD卡初始化完成之后响应读操作
    .rd_start_en        (rd_start_en & sd_init_done),  
    .rd_sec_addr        (rd_sec_addr),
    .rd_busy            (rd_busy),
    .rd_val_en          (rd_val_en),
    .rd_val_data        (rd_val_data)
    );

endmodule