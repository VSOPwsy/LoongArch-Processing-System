module sd_axi_top#(
    parameter DATA_WIDTH = 256,
    parameter ADDR_WIDTH = 32,
    parameter STRB_WIDTH = (DATA_WIDTH/8),
    parameter ID_WIDTH = 8,

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
    input   wire                     model_wready

    );             
    wire [$clog2(DQ_WIDTH)-1:0] offset;
    wire [16:0] fifo_rddata;
    wire fifo_empty;
    reg [31:0] addr_reg;
    reg model_awvalid_reg,model_wvalid_reg;

    reg [1:0] current_state,next_state;
    localparam ADDR = 2'b00;
    localparam DATA = 2'b01;
    localparam DONE = 2'b10;

	ml_wrfifo ml_wrfifo_inst(
		.Data({wrlast,wrdata}), //input [16:0] Data
		.Clk(clk), //input Clk
		.WrEn(wr_en), //input WrEn
		.RdEn(model_wready & model_wvalid), //input RdEn
		.Reset(!rst_n), //input Reset
		.Q(fifo_rddata), //output [16:0] Q
		.Empty(fifo_empty), //output Empty
		.Full() //output Full
	);

    assign model_awaddr = addr_reg;
    assign model_awid = 8'd40;
    assign model_awlen = 0;
    assign model_awsize = 32;
    assign model_awvalid = model_awvalid_reg;

    assign offset = addr_reg[4:0];
    assign model_wdata = {240'b0,fifo_rddata[15:0]} << (8 * offset);
    assign model_wvalid = model_wvalid_reg;
    assign model_wstrb = 32'h0003 << offset;
    assign model_wlast = 1'b1;
    
    always @(posedge clk ) begin
        if (!rst_n) begin
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
        case (current_state)
            ADDR: begin
                model_awvalid_reg = 1'b1;
                if (model_awready & model_awvalid) begin
                    next_state = DATA;
                end
            end
            DATA:begin
                model_wvalid_reg = ~fifo_empty;
                if (model_wready & model_wvalid) begin
                    next_state = fifo_rddata[16] ? DONE : ADDR;
                end
            end
            DONE:begin
                ////////////////////
            end
        endcase
    end

    always @(posedge clk) begin
        if (~rst_n) begin
            addr_reg <= wr_base_addr;
        end
        else begin
            if (model_wready & model_wvalid) begin
                addr_reg <= addr_reg + 'd2;
            end
        end
    end

endmodule
