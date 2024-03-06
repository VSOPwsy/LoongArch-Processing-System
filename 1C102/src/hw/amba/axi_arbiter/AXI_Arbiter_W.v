`include "../../config.v"

module AXI_Arbiter_W (
	ACLK,
	ARESETn,
	m0_AWVALID,
	m0_WVALID,
	m0_BREADY,
	m1_AWVALID,
	m1_WVALID,
	m1_BREADY,
	m2_AWVALID,
	m2_WVALID,
	m2_BREADY,
	m3_AWVALID,
	m3_WVALID,
	m3_BREADY,
	m_AWREADY,
	m_WREADY,
	m_BVALID,
	m0_wgrnt,
	m1_wgrnt,
	m2_wgrnt,
	m3_wgrnt
);
	input ACLK;
	input ARESETn;
	input m0_AWVALID;
	input m0_WVALID;
	input m0_BREADY;
	input m1_AWVALID;
	input m1_WVALID;
	input m1_BREADY;
	input m2_AWVALID;
	input m2_WVALID;
	input m2_BREADY;
	input m3_AWVALID;
	input m3_WVALID;
	input m3_BREADY;
	input m_AWREADY;
	input m_WREADY;
	input m_BVALID;
	output reg m0_wgrnt;
	output reg m1_wgrnt;
	output reg m2_wgrnt;
	output reg m3_wgrnt;
	parameter TCO = 1;
	reg [1:0] state;
	reg [1:0] next_state;
	always @(*)
		case (state)
			2'd0:
				if (m0_AWVALID)
					next_state = 2'd0;
				else if (m0_WVALID || m_WREADY)
					next_state = 2'd0;
				else if (m_BVALID && m0_BREADY)
					next_state = 2'd1;
				else if (m1_AWVALID)
					next_state = 2'd1;
				else if (m2_AWVALID)
					next_state = 2'd2;
				else if (m3_AWVALID)
					next_state = 2'd3;
				else
					next_state = 2'd0;
			2'd1:
				if (m1_AWVALID)
					next_state = 2'd1;
				else if (m1_WVALID || m_WREADY)
					next_state = 2'd1;
				else if (m_BVALID && m1_BREADY)
					next_state = 2'd2;
				else if (m2_AWVALID)
					next_state = 2'd2;
				else if (m3_AWVALID)
					next_state = 2'd3;
				else if (m0_AWVALID)
					next_state = 2'd0;
				else
					next_state = 2'd1;
			2'd2:
				if (m2_AWVALID)
					next_state = 2'd2;
				else if (m2_WVALID || m_WREADY)
					next_state = 2'd2;
				else if (m_BVALID && m2_BREADY)
					next_state = 2'd3;
				else if (m3_AWVALID)
					next_state = 2'd3;
				else if (m0_AWVALID)
					next_state = 2'd0;
				else if (m1_AWVALID)
					next_state = 2'd1;
				else
					next_state = 2'd2;
			2'd3:
				if (m3_AWVALID)
					next_state = 2'd3;
				else if (m3_WVALID || m_WREADY)
					next_state = 2'd3;
				else if (m_BVALID && m3_BREADY)
					next_state = 2'd0;
				else if (m0_AWVALID)
					next_state = 2'd0;
				else if (m1_AWVALID)
					next_state = 2'd1;
				else if (m2_AWVALID)
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
			2'd0: {m0_wgrnt, m1_wgrnt, m2_wgrnt, m3_wgrnt} = 4'b1000;
			2'd1: {m0_wgrnt, m1_wgrnt, m2_wgrnt, m3_wgrnt} = 4'b0100;
			2'd2: {m0_wgrnt, m1_wgrnt, m2_wgrnt, m3_wgrnt} = 4'b0010;
			2'd3: {m0_wgrnt, m1_wgrnt, m2_wgrnt, m3_wgrnt} = 4'b0001;
			default: {m0_wgrnt, m1_wgrnt, m2_wgrnt, m3_wgrnt} = 4'b0000;
		endcase
endmodule