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
			2'b00: counting_targets = BAUD_9600;
			2'b01: counting_targets = BAUD_19200;
			2'b10: counting_targets = BAUD_38400;
			2'b11: counting_targets = BAUD_115200;
		endcase
	end
	// ================================================================

	// Baudrate = 9600 = 8Mhz / (208.333 * 4)
	// Baudrate = 19200 = 8Mhz / (104.166 * 4)
	// Baudrate = 38400 = 8Mhz / (52.083 * 4)
	// Baudrate = 115200 = 8Mhz / (17.361 * 4)
	assign count_next = ((count_reg == counting_targets) ? 0 : count_reg + 1'b1);
	assign baudtick = ((count_reg == counting_targets) ? 1'b1 : 1'b0);
	
endmodule


