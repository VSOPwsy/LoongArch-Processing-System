module sd_read_model(
    input                clk           ,  //时钟信号
    input                rst_n         ,  //复位信号,低电平有效
    input        [16:0]  sd_sec_num    ,  //SD卡读扇区个数               
    input                rd_busy       ,  //SD卡读忙信号
    input                sd_rd_val_en  ,  //SD卡读数据有效信号
    input        [15:0]  sd_rd_val_data,  //SD卡读出的数据
    input        [31:0]  sd_start_sec  ,  //SD卡起始读扇区
    input                start         ,
    output  reg  [31:0]  rd_sec_addr   ,  //读数据扇区地址
    output  reg          rd_sec_start  ,  //开始读取扇区
    output  reg          ddr_wr_en     ,  //DDR写使能信号
    output               ddr_wr_last   ,  //完成
    output  reg  [15:0]  ddr_wr_data      //DDR写数据
);

reg                 rd_busy_d0       ;
reg                 rd_busy_d1       ;  
reg                 rd_flow_state    ;  //读sd卡状态控制
reg    [16:0]       rd_sec_cnt       ;  //读扇区次数计数器
reg                 sd_rd_last       ;

wire                rd_sec_complete  ;  //SD卡扇区读取完成脉冲
//*****************************************************
//**                    main code
//*****************************************************

//对rd_busy信号进行延时打拍,用于采rd_busy信号的下降沿
always @(posedge clk) begin
    if(~rst_n) begin
        rd_busy_d0 <= 1'b0;
        rd_busy_d1 <= 1'b0;
    end
    else begin
        rd_busy_d0 <= rd_busy;
        rd_busy_d1 <= rd_busy_d0;
    end
end
assign  rd_sec_complete = rd_busy_d1 & (~rd_busy_d0); //当rd_busy由高电平变为低电平时，产生一个时钟周期的脉冲信号，用于表示SD卡的单个扇区读完成

always @(posedge clk) begin
    if (~rst_n) begin
        rd_flow_state <= 0;
        rd_sec_addr   <= 0;
        rd_sec_cnt    <= 0;
        sd_rd_last    <= 0;
    end
    else begin
        case (rd_flow_state)
            1'd0:begin
                if (start && sd_sec_num != 0) begin
                    rd_flow_state <= 1'd1;
                    rd_sec_addr <= sd_start_sec;
                    rd_sec_start <= 1'b1;
                    rd_sec_cnt <= 0;
                    sd_rd_last <= 1'b0;
                end
            end
            1'd1:begin
                if (start) begin
                    if(rd_sec_complete) begin                          
                        rd_sec_cnt <= rd_sec_cnt + 1'b1;
                        rd_sec_addr <= rd_sec_addr + 32'd1;
                        rd_sec_start <= (rd_sec_cnt != sd_sec_num - 1'b1);
                        if(rd_sec_cnt == sd_sec_num - 1'b1) begin
                            sd_rd_last <= 1'b1;
                        end
                    end
                    else begin
                        rd_sec_start <= 1'b0;
                    end
                end
                else begin
                    rd_flow_state <= 1'd0;
                    sd_rd_last <= 1'b0;
                end
            end
        endcase
    end
end


always @(posedge clk) begin
    if (!rst_n) begin
        ddr_wr_en      <= 0;
    end
    else begin
        ddr_wr_en <= 1'b0;
        if(sd_rd_val_en) begin
            ddr_wr_data <= sd_rd_val_data;
            ddr_wr_en <= 1'b1;
        end
    end
end

assign ddr_wr_last = sd_rd_last;
endmodule