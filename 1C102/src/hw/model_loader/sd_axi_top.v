module sd_axi_top#(
    parameter DATA_WIDTH = 256,
    parameter ADDR_WIDTH = 32,
    parameter STRB_WIDTH = (DATA_WIDTH/8),
    parameter ID_WIDTH = 8,
    parameter ID = 8'h40,
    parameter DQ_WIDTH = (DATA_WIDTH/8)
)(
    input           clk                 ,  
    input           rst_n               ,
    input           wr_en               ,  //数据有效使能信号
    input  [15:0]   wrdata              ,  //写有效数据
    input           wrlast              ,
    input  [31:0]   wr_base_addr        , 
   

    output  wire [ID_WIDTH-1:0]      model_awid,
    output  wire [ADDR_WIDTH-1:0]    model_awaddr,
    output  wire [7:0]               model_awlen,
    output  wire [2:0]               model_awsize,
    output  wire [1:0]               model_awburst,
    output  wire                     model_awlock,
    output  wire [3:0]               model_awcache,
    output  wire [2:0]               model_awprot,
    output  wire                     model_awvalid,
    input   wire                     model_awready,
    output  wire [DATA_WIDTH-1:0]    model_wdata,
    output  wire [STRB_WIDTH-1:0]    model_wstrb,//
    output  wire                     model_wlast,//
    output  wire                     model_wvalid,
    input   wire                     model_wready,
    input   wire [ID_WIDTH-1:0]      model_bid,
    input   wire [1:0]               model_bresp,
    input   wire                     model_bvalid,
    output  wire                     model_bready,

    output  reg                     ddr_wr_done
    );             
    wire [3:0] offset;
    wire [15:0] fifo_rddata;
    wire fifo_empty;
    reg fifo_rd_last;
    reg [ADDR_WIDTH-1:0] addr_reg;
    reg model_awvalid_reg,model_wvalid_reg,model_bready_reg;

    reg [3:0] current_state,next_state;
    localparam ADDR = 4'b0001;
    localparam DATA = 4'b0010;
    localparam RESP = 4'b0100;
    localparam DONE = 4'b1000;

	ml_wrfifo ml_wrfifo_inst(
		.Data({wrdata[7:0], wrdata[15:8]}), //input [15:0] Data
		.Clk(clk), //input Clk
		.WrEn(wr_en), //input WrEn
		.RdEn(model_wready & model_wvalid), //input RdEn
		.Reset(!rst_n), //input Reset
		.Q(fifo_rddata), //output [15:0] Q
		.Empty(fifo_empty), //output Empty
		.Full() //output Full
	);

    assign model_awaddr = {addr_reg[ADDR_WIDTH-1 : $clog2(STRB_WIDTH)], {$clog2(STRB_WIDTH){1'b0}}};
    assign model_awid = ID;
    assign model_awlen = 0;
    assign model_awsize = $clog2(STRB_WIDTH);
    assign model_awburst = 0;
    assign model_awvalid = model_awvalid_reg;

    assign offset = addr_reg[$clog2(STRB_WIDTH)-1 : 1];
    assign model_wdata = {{(DATA_WIDTH-16){1'b0}},fifo_rddata[15:0]} << (16 * offset);
    assign model_wvalid = model_wvalid_reg;
    assign model_wstrb = {{(STRB_WIDTH-2){1'b0}},2'h3} << (2 * offset);
    assign model_wlast = 1'b1;

    assign model_bready = model_bready_reg;
    
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            current_state <= ADDR;
        end
        else begin
            current_state <= next_state;
        end
    end

    always @(*) begin
        next_state = current_state;
        model_awvalid_reg = 0;
        model_wvalid_reg = 0;
        model_bready_reg = 0;
        ddr_wr_done = 0;
        case (current_state)
            ADDR: begin
                model_awvalid_reg = ~fifo_empty;
                if (model_awready & model_awvalid) begin
                    next_state = DATA;
                end
                else if (fifo_rd_last) begin
                    next_state = DONE;
                end
            end
            DATA:begin
                model_wvalid_reg = ~fifo_empty;
                if (model_wready & model_wvalid) begin
                    next_state = RESP;
                end
            end
            RESP:begin
                model_bready_reg = 1'b1;
                if (model_bready && model_bvalid && model_bid == ID && model_bresp == 2'b00) begin
                    next_state = ADDR;
                end
            end
            DONE:begin
                ddr_wr_done = 1'b1;
            end
        endcase
    end

    always @(posedge clk) begin
        if (~rst_n) begin
            addr_reg <= wr_base_addr;
            fifo_rd_last <= 1'b0;
        end
        else begin
            if (model_wready & model_wvalid) begin
                addr_reg <= addr_reg + 'd2;
            end
            if(wrlast) begin
                fifo_rd_last <= 1'b1;
            end
        end
    end

endmodule
