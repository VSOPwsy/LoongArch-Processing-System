module axicb_scfifo (
	aclk,
	aresetn,
	srst,
	flush,
	data_in,
	push,
	full,
	data_out,
	pull,
	empty
);
	parameter PASS_THRU = 0;
	parameter ADDR_WIDTH = 8;
	parameter DATA_WIDTH = 8;
	input wire aclk;
	input wire aresetn;
	input wire srst;
	input wire flush;
	input wire [DATA_WIDTH - 1:0] data_in;
	input wire push;
	output wire full;
	output wire [DATA_WIDTH - 1:0] data_out;
	input wire pull;
	output wire empty;
	wire wr_en;
	reg [ADDR_WIDTH:0] wrptr;
	reg [ADDR_WIDTH:0] rdptr;
	wire empty_flag;
	wire full_flag;
	wire pass_thru;
	wire [DATA_WIDTH - 1:0] data_fifo;
	always @(posedge aclk or negedge aresetn)
		if (aresetn == 1'b0)
			wrptr <= {ADDR_WIDTH + 1 {1'b0}};
		else if (srst || flush)
			wrptr <= {ADDR_WIDTH + 1 {1'b0}};
		else if (((push == 1'b1) && (full_flag == 1'b0)) && (pass_thru == 1'b0))
			wrptr <= wrptr + 1'b1;
	always @(posedge aclk or negedge aresetn)
		if (aresetn == 1'b0)
			rdptr <= {ADDR_WIDTH + 1 {1'b0}};
		else if (srst || flush)
			rdptr <= {ADDR_WIDTH + 1 {1'b0}};
		else if ((pull == 1'b1) && (empty_flag == 1'b0))
			rdptr <= rdptr + 1'b1;
	assign empty_flag = (wrptr == rdptr ? 1'b1 : 1'b0);
	assign full_flag = ((wrptr - rdptr) == {1'b1, {ADDR_WIDTH {1'b0}}} ? 1'b1 : 1'b0);
	assign wr_en = (push & ~full) & ~pass_thru;
	axicb_scfifo_ram #(
		.ADDR_WIDTH(ADDR_WIDTH),
		.DATA_WIDTH(DATA_WIDTH),
		.FFD_EN(0)
	) fifo_ram(
		.aclk(aclk),
		.wr_en(wr_en),
		.addr_in(wrptr[ADDR_WIDTH - 1:0]),
		.data_in(data_in),
		.addr_out(rdptr[ADDR_WIDTH - 1:0]),
		.data_out(data_fifo)
	);
	generate
		if (PASS_THRU) begin : PASS_THRU_MODE
			assign pass_thru = pull & empty_flag;
			assign data_out = (pass_thru ? data_in : data_fifo);
			assign empty = (pass_thru ? ~push : empty_flag);
			assign full = full_flag;
		end
		else begin : STORE_MODE
			assign pass_thru = 1'b0;
			assign data_out = data_fifo;
			assign empty = empty_flag;
			assign full = full_flag;
		end
	endgenerate
endmodule
`resetall