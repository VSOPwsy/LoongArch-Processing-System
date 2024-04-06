module ddr3_top(
    input           wr_clk              ,  //写fifo写时钟
    input           ui_clk              ,
    input           rst_n               ,
    input           wr_en               ,  //数据有效使能信号
    input  [15:0]   wrdata              ,  //写有效数据
    input  [31:0]   app_addr_wr_min     , 
    input  [31:0]   app_addr_wr_max     , 

    
    input               app_rdy              ,
    output reg          app_cmd_en           ,
    output     [31:0]   app_addr             ,
    input               app_wdf_rdy          ,
    output     [127:0]  app_wdf_data         ,
    output     [15:0]   app_wdf_mask         ,
    output reg          app_wdf_wren           
    );                


    reg fifo_rinc;
    wire fifo_empty;
    wire [15:0] fifo_rdata;

	ml_fifo wfifo(
		.Data(wrdata), //input [15:0] Data
		.WrReset(~rst_n), //input WrReset
		.RdReset(~rst_n), //input RdReset
		.WrClk(wr_clk), //input WrClk
		.RdClk(ui_clk), //input RdClk
		.WrEn(wr_en), //input WrEn
		.RdEn(fifo_rinc), //input RdEn
		.Q(fifo_rdata), //output [15:0] Q
		.Empty(fifo_empty), //output Empty
		.Full() //output Full
	);

    reg [31:0] app_addr_reg;

    wire [3:0] offset;
    assign offset = app_addr_reg[3:0];
    assign app_addr = {app_addr_reg[31:4], 4'b0} >> 1;
    assign app_wdf_data = {112'b0, fifo_rdata[7:0], fifo_rdata[15:8]} << (8 * offset);
    assign app_wdf_mask = ~(16'h0003 << offset);



    localparam IDLE = 1'b0;
    localparam BUSY = 1'b1;
    reg state_current, state_next;
    
    always @(posedge ui_clk) begin
        if (~rst_n) begin
            state_current <= IDLE;
        end
        else begin
            state_current <= state_next;
        end
    end

    always @(*) begin
        state_next = state_current;
        fifo_rinc = 1'b0;
        app_cmd_en = 1'b0;
        app_wdf_wren = 1'b0;
        case (state_current)
            IDLE: begin
                if (~fifo_empty) begin
                    state_next = BUSY;
                    fifo_rinc = 1'b1;
                end
            end

            BUSY: begin
                if (app_rdy & app_wdf_rdy) begin
                    state_next = IDLE;
                    app_cmd_en = 1'b1;
                    app_wdf_wren = 1'b1;
                end
            end
        endcase
    end

    always @(posedge ui_clk) begin
        if (~rst_n) begin
            app_addr_reg <= app_addr_wr_min;
        end
        else begin
            if (app_cmd_en & (app_addr_reg < app_addr_wr_max)) begin
                app_addr_reg <= app_addr_reg + 'd2;
            end
        end
    end

endmodule
