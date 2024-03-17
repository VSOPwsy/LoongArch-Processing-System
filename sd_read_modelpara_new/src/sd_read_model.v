module sd_read_model(
    input                clk           ,  //时钟信号
    input                rst_n         ,  //复位信号,低电平有效
    input        [23:0]  ddr_max_addr  ,  //DDR读写最大地址  
    input        [15:0]  sd_sec_num    ,  //SD卡读扇区个数               
    input                rd_busy       ,  //SD卡读忙信号
    input                sd_rd_val_en  ,  //SD卡读数据有效信号
    input        [15:0]  sd_rd_val_data,  //SD卡读出的数据

    output  reg          model_rd_done ,  //模型参数读取完成
    output  reg          rd_start_en   ,  //开始写SD卡数据信号
    output  reg  [31:0]  rd_sec_addr   ,  //读数据扇区地址
    output  reg          ddr_wr_en     ,  //DDR写使能信号
    output  reg  [15:0]  ddr_wr_data      //DDR写数据
);

parameter MODEL_ADDR_START = 32'd67072; //模型文件起始扇区地址，拷贝sd卡后看
parameter MODEL_HEAD_NUM = 6'd0; //如果模型文件有头文件，修改此值跳过不读

reg                 rd_busy_d0       ;
reg                 rd_busy_d1       ;  
reg                 rd_flow_state    ;  //读sd卡状态控制
reg    [1:0]        ddr_flow_state   ;  //DDR写数据状态控制
reg    [15:0]       rd_sec_cnt       ;  //读扇区次数计数器
reg    [5:0]        model_head_cnt   ;  //头部计数器
reg    [23:0]       ddr_wr_cnt       ;  //DDR写入计数器

wire                neg_rd_busy      ;  //SD卡读忙信号下降沿
//*****************************************************
//**                    main code
//*****************************************************

//对rd_busy信号进行延时打拍,用于采rd_busy信号的下降沿
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0) begin
        rd_busy_d0 <= 1'b0;
        rd_busy_d1 <= 1'b0;
    end
    else begin
        rd_busy_d0 <= rd_busy;
        rd_busy_d1 <= rd_busy_d0;
    end
end
assign  neg_rd_busy = rd_busy_d1 & (~rd_busy_d0); //当rd_busy由高电平变为低电平时，产生一个时钟周期的脉冲信号，用于表示SD卡的单个扇区读完成

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        rd_flow_state <= 0;
        rd_start_en   <= 0;
        rd_sec_addr   <= 0;
        rd_sec_cnt    <= 0;
        model_rd_done <= 0;
    end
    else begin
        case (rd_flow_state)
            1'd0:begin //准备读取SD卡数据
                rd_flow_state <= rd_flow_state + 1;
                rd_start_en <= 1'b1;
                rd_sec_addr <= MODEL_ADDR_START;
            end
            1'd1:begin
                //读忙信号的下降沿代表读完一个扇区,开始读取下一扇区地址数据
                if(neg_rd_busy) begin                          
                    rd_sec_cnt <= rd_sec_cnt + 1'b1;//计算读扇区次数
                    rd_sec_addr <= rd_sec_addr + 32'd1; //输出读扇区地址
					//读扇区次数==预先设定好的需要读的扇区次数
                    if(rd_sec_cnt == sd_sec_num - 1'b1) begin
                        rd_sec_cnt <= 16'd0;
                        rd_flow_state <= 0;
                        model_rd_done <= 1'b1;
                    end    
                    else begin
                        rd_start_en <= 1'b1;    
                        model_rd_done <= 1'b0;
                        rd_flow_state <= 1'b1;
                    end
                end 
            end 
            default:begin
                rd_flow_state <= rd_flow_state;
                rd_start_en   <= rd_start_en;
                rd_sec_addr   <= rd_sec_addr;
                rd_sec_cnt    <= rd_sec_cnt;
                model_rd_done <= model_rd_done;
            end 
        endcase
    end
end


always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        ddr_wr_en      <= 0;
        ddr_flow_state <= 0;
        model_head_cnt <= 0;

    end
    else begin
        ddr_wr_en <= 1'b0;
        case (ddr_flow_state)
            2'd0: begin //排除头部无效数据
                if (sd_rd_val_en) begin
                    if(model_head_cnt == MODEL_HEAD_NUM - 1'b1) begin
                        ddr_flow_state <= ddr_flow_state + 1'b1;
                        model_head_cnt <= 6'd0;
                    end  
                    else begin
                        model_head_cnt <= model_head_cnt + 1'b1;
                    end
                end
            end

            2'd1: begin
                if(sd_rd_val_en) begin
                    ddr_wr_data <= sd_rd_val_data;
                    ddr_wr_en <= 1'b1;
                end 
                if(ddr_wr_en) begin
                    ddr_wr_cnt <= ddr_wr_cnt + 1'b1;
                    if(ddr_wr_cnt == ddr_max_addr - 1'b1) begin
                        ddr_wr_cnt <= 24'd0;
                        ddr_flow_state <= ddr_flow_state + 1'b1;
                    end
                end
            end
            2'd2:begin
                if(model_rd_done)
                    ddr_flow_state <= 2'd0;
            end
            default:begin
                
            end
        endcase
    end
end
endmodule