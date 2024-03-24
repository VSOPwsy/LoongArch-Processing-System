module ddr3_top(
    input           wr_clk              ,  //写fifo写时钟
    input           ui_clk              ,
    input           rst_n               ,
    input           wr_en               ,  //数据有效使能信号
    input  [15:0]   wrdata              ,  //写有效数据
    input  [31:0]   app_addr_wr_min     , 
    input  [31:0]   app_addr_wr_max     , 

    
    input               app_rdy              ,
    output              app_cmd_en           ,
    output reg [31:0]   app_addr             ,
    input               app_wdf_rdy          ,
    output     [127:0]  app_wdf_data         ,
    output     [15:0]   app_wdf_mask         ,
    output              app_wdf_wren           
    );                


    wire fifo_empty;
    wire [15:0] fifo_rdata;

	async_fifo # (
        .DSIZE(16),
        .ASIZE(2),
        .FALLTHROUGH("TRUE")
    ) wfifo (
		.wclk(wr_clk),
        .wrst_n(rst_n),
		.winc(wr_en),
		.wdata(wrdata),
		.wfull(), // 理论上DDR带宽远高于SD
        .awfull(),
		.rclk(ui_clk),
        .rrst_n(rst_n),
		.rinc(app_wdf_wren), // rden与empty形成loop  如果时序违例可以优化此处
		.rdata(fifo_rdata),
		.rempty(fifo_empty),
        .arempty()
	);

    reg [31:0] app_addr_reg;

    wire [3:0] offset;
    assign offset = app_addr_reg[3:0];
    assign app_addr = {app_addr_reg[31:4], 4'b0};
    assign app_cmd_en = app_rdy & app_wdf_rdy & ~fifo_empty;
    assign app_wdf_wren = app_rdy & app_wdf_rdy & ~fifo_empty;
    assign app_wdf_data = {112'b0, fifo_rdata} << (8 * offset);
    assign app_wdf_mask = ~(16'h0003 << offset);

    always @(posedge ui_clk) begin
        if (~rst_n) begin
            app_addr_reg <= app_addr_wr_min;
        end
        else begin
            if (app_wdf_wren & (app_addr_reg < app_addr_wr_max)) begin
                app_addr_reg <= app_addr_reg + 'd2;
            end
        end
    end

endmodule
