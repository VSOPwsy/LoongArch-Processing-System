module axicb_scfifo_ram (
	aclk,
	wr_en,
	addr_in,
	data_in,
	addr_out,
	data_out
);
	parameter ADDR_WIDTH = 8;
	parameter DATA_WIDTH = 8;
	parameter FFD_EN = 0;
	input wire aclk;
	input wire wr_en;
	input wire [ADDR_WIDTH - 1:0] addr_in;
	input wire [DATA_WIDTH - 1:0] data_in;
	input wire [ADDR_WIDTH - 1:0] addr_out;
	output reg [DATA_WIDTH - 1:0] data_out;
	reg [DATA_WIDTH - 1:0] ram [(2 ** ADDR_WIDTH) - 1:0];
	always @(posedge aclk)
		if (wr_en)
			ram[addr_in] <= data_in;
	generate
		if (FFD_EN == 1) begin : WITH_FFD
			always @(posedge aclk) data_out <= ram[addr_out];
		end
		else begin : NO_FFD
			wire [DATA_WIDTH:1] sv2v_tmp_A95D2;
			assign sv2v_tmp_A95D2 = ram[addr_out];
			always @(*) data_out = sv2v_tmp_A95D2;
		end
	endgenerate
endmodule
`resetall