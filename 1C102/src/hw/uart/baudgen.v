module BAUDGEN # (
	parameter CLK_FREQ = 50_000_000
)(
	input wire clk,
	input wire rstn,
	output wire baudtick,

	input [1:0] baudtick_ctrl// ================================================================
);
	localparam BAUD_9600   = $floor(CLK_FREQ/(4*  9600)) - 1;
	localparam BAUD_19200  = $floor(CLK_FREQ/(4* 19200)) - 1;
	localparam BAUD_38400  = $floor(CLK_FREQ/(4* 38400)) - 1;
	localparam BAUD_115200 = $floor(CLK_FREQ/(4*115200)) - 1;

	reg [21:0] count_reg;
	wire [21:0] count_next;

	// Counter
	always @(posedge clk, negedge rstn)
	begin
		if(!rstn)
			count_reg <= 0;
		else
			count_reg <= count_next;
	end

	// ================================================================
	reg [31:0] counting_targets;
	always @(*)
	begin
		case(baudtick_ctrl)
			2'b00:
			begin
				counting_targets = BAUD_9600;
			end
			2'b01:
			begin
				counting_targets = BAUD_19200;
			end
			2'b10:
			begin
				counting_targets = BAUD_38400;
			end
			2'b11:
			begin
				counting_targets = BAUD_115200;
			end
		endcase
	end
	assign count_next = ((count_reg == counting_targets) ? 0 : count_reg + 1'b1);
	assign baudtick = ((count_reg == counting_targets) ? 1'b1 : 1'b0);
endmodule


