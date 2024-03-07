module axicb_round_robin_core (
	aclk,
	aresetn,
	srst,
	en,
	req,
	grant
);
	parameter REQ_NB = 4;
	input wire aclk;
	input wire aresetn;
	input wire srst;
	input wire en;
	input wire [REQ_NB - 1:0] req;
	output reg [REQ_NB - 1:0] grant;
	reg [REQ_NB - 1:0] mask;
	reg [REQ_NB - 1:0] masked;
	generate
		if (REQ_NB == 4) begin : GRANT_4
			always @(*) begin
				masked = mask & req;
				if (|masked) begin
					if (masked[0])
						grant = 4'b0001;
					else if (masked[1])
						grant = 4'b0010;
					else if (masked[2])
						grant = 4'b0100;
					else if (masked[3])
						grant = 4'b1000;
					else
						grant = 4'b0000;
				end
				else if (req[0])
					grant = 4'b0001;
				else if (req[1])
					grant = 4'b0010;
				else if (req[2])
					grant = 4'b0100;
				else if (req[3])
					grant = 4'b1000;
				else
					grant = 4'b0000;
			end
		end
		else if (REQ_NB == 8) begin : GRANT_8
			always @(*) begin
				masked = mask & req;
				if (|masked) begin
					if (masked[0])
						grant = 8'b00000001;
					else if (masked[1])
						grant = 8'b00000010;
					else if (masked[2])
						grant = 8'b00000100;
					else if (masked[3])
						grant = 8'b00001000;
					else if (masked[4])
						grant = 8'b00010000;
					else if (masked[5])
						grant = 8'b00100000;
					else if (masked[6])
						grant = 8'b01000000;
					else if (masked[7])
						grant = 8'b10000000;
					else
						grant = 8'b00000000;
				end
				else if (req[0])
					grant = 8'b00000001;
				else if (req[1])
					grant = 8'b00000010;
				else if (req[2])
					grant = 8'b00000100;
				else if (req[3])
					grant = 8'b00001000;
				else if (req[4])
					grant = 8'b00010000;
				else if (req[5])
					grant = 8'b00100000;
				else if (req[6])
					grant = 8'b01000000;
				else if (req[7])
					grant = 8'b10000000;
				else
					grant = 8'b00000000;
			end
		end
		if (REQ_NB == 4) begin : REQ_4
			always @(posedge aclk or negedge aresetn)
				if (~aresetn)
					mask <= {REQ_NB {1'b1}};
				else if (srst)
					mask <= {REQ_NB {1'b1}};
				else if (en && |grant)
					if (grant[0])
						mask <= 4'b1110;
					else if (grant[1])
						mask <= 4'b1100;
					else if (grant[2])
						mask <= 4'b1000;
					else if (grant[3])
						mask <= 4'b1111;
		end
		else if (REQ_NB == 8) begin : REQ_8
			always @(posedge aclk or negedge aresetn)
				if (~aresetn)
					mask <= {REQ_NB {1'b1}};
				else if (srst)
					mask <= {REQ_NB {1'b1}};
				else if (en && |grant)
					if (grant[0])
						mask <= 8'b11111110;
					else if (grant[1])
						mask <= 8'b11111100;
					else if (grant[2])
						mask <= 8'b11111000;
					else if (grant[3])
						mask <= 8'b11110000;
					else if (grant[4])
						mask <= 8'b11100000;
					else if (grant[5])
						mask <= 8'b11000000;
					else if (grant[6])
						mask <= 8'b10000000;
					else
						mask <= 8'b11111111;
		end
	endgenerate
endmodule
`resetall