`include "../../config.v"

module AXI_Arbiter_R (
	ACLK,
	ARESETn,
	m0_ARVALID,
	m0_RREADY,
	m1_ARVALID,
	m1_RREADY,
	m2_ARVALID,
	m2_RREADY,
	m3_ARVALID,
	m3_RREADY,
	m_RVALID,
	m_RLAST,
	m0_rgrnt,
	m1_rgrnt,
	m2_rgrnt,
	m3_rgrnt
);
	input ACLK;
	input ARESETn;
	input m0_ARVALID;
	input m0_RREADY;
	input m1_ARVALID;
	input m1_RREADY;
	input m2_ARVALID;
	input m2_RREADY;
	input m3_ARVALID;
	input m3_RREADY;
	input m_RVALID;
	input m_RLAST;
	output reg m0_rgrnt;
	output reg m1_rgrnt;
	output reg m2_rgrnt;
	output reg m3_rgrnt;
	parameter TCO = 1;
	reg [1:0] state;
	reg [1:0] next_state;
	always @(*)
		case (state)
			2'd0:
				if (m0_ARVALID)
					next_state = 2'd0;
				else if (m_RVALID || m0_RREADY)
					next_state = 2'd0;
				else if (m_RLAST && m_RVALID)
					next_state = 2'd1;
				else if (m1_ARVALID)
					next_state = 2'd1;
				else if (m2_ARVALID)
					next_state = 2'd2;
				else if (m3_ARVALID)
					next_state = 2'd3;
				else
					next_state = 2'd0;
			2'd1:
				if (m1_ARVALID)
					next_state = 2'd1;
				else if (m_RVALID || m1_RREADY)
					next_state = 2'd1;
				else if (m_RLAST && m_RVALID)
					next_state = 2'd2;
				else if (m2_ARVALID)
					next_state = 2'd2;
				else if (m3_ARVALID)
					next_state = 2'd3;
				else if (m0_ARVALID)
					next_state = 2'd0;
				else
					next_state = 2'd0;
			2'd2:
				if (m2_ARVALID)
					next_state = 2'd2;
				else if (m_RVALID || m2_RREADY)
					next_state = 2'd2;
				else if (m_RLAST && m_RVALID)
					next_state = 2'd3;
				else if (m3_ARVALID)
					next_state = 2'd3;
				else if (m0_ARVALID)
					next_state = 2'd0;
				else if (m1_ARVALID)
					next_state = 2'd1;
				else
					next_state = 2'd2;
			2'd3:
				if (m3_ARVALID)
					next_state = 2'd3;
				else if (m_RVALID || m3_RREADY)
					next_state = 2'd3;
				else if (m_RLAST && m_RVALID)
					next_state = 2'd0;
				else if (m0_ARVALID)
					next_state = 2'd0;
				else if (m1_ARVALID)
					next_state = 2'd1;
				else if (m2_ARVALID)
					next_state = 2'd2;
				else
					next_state = 2'd3;
			default: next_state = 2'd0;
		endcase
	always @(posedge ACLK or negedge ARESETn)
		if (!ARESETn)
			state <= #(TCO) 2'd0;
		else
			state <= #(TCO) next_state;
	always @(*)
		case (state)
			2'd0: {m0_rgrnt, m1_rgrnt, m2_rgrnt, m3_rgrnt} = 4'b1000;
			2'd1: {m0_rgrnt, m1_rgrnt, m2_rgrnt, m3_rgrnt} = 4'b0100;
			2'd2: {m0_rgrnt, m1_rgrnt, m2_rgrnt, m3_rgrnt} = 4'b0010;
			2'd3: {m0_rgrnt, m1_rgrnt, m2_rgrnt, m3_rgrnt} = 4'b0001;
			default: {m0_rgrnt, m1_rgrnt, m2_rgrnt, m3_rgrnt} = 4'b0000;
		endcase
endmodule