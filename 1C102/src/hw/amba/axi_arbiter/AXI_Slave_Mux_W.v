`include "../../config.v"

module AXI_Slave_Mux_W (
	ACLK,
	ARESETn,
	s0_AWVALID,
	s0_AWREADY,
	s0_WVALID,
	s0_WREADY,
	s0_BID,
	s0_BRESP,
	s0_BUSER,
	s0_BVALID,
	s0_BREADY,
	m_AWREADY,
	m_WREADY,
	m_BID,
	m_BRESP,
	m_BUSER,
	m_BVALID,
	s_AWADDR,
	s_AWVALID,
	s_WVALID,
	s_BREADY
);
	parameter DATA_WIDTH = 128;
	parameter ADDR_WIDTH = 32;
	parameter ID_WIDTH = 4;
	parameter USER_WIDTH = 1;
	input ACLK;
	input ARESETn;
	output reg s0_AWVALID;
	input s0_AWREADY;
	output reg s0_WVALID;
	input s0_WREADY;
	input [ID_WIDTH - 1:0] s0_BID;
	input [1:0] s0_BRESP;
	input [USER_WIDTH - 1:0] s0_BUSER;
	input s0_BVALID;
	output reg s0_BREADY;
	output reg m_AWREADY;
	output reg m_WREADY;
	output reg [ID_WIDTH - 1:0] m_BID;
	output reg [1:0] m_BRESP;
	output reg [USER_WIDTH - 1:0] m_BUSER;
	output reg m_BVALID;
	input [ADDR_WIDTH - 1:0] s_AWADDR;
	input s_AWVALID;
	input s_WVALID;
	input s_BREADY;
	parameter TCO = 1;
	reg [ADDR_WIDTH - 1:0] awaddr;
	always @(posedge ACLK or negedge ARESETn)
		if (!ARESETn)
			awaddr <= #(TCO) 1'sb0;
		else if (s_AWVALID)
			awaddr <= #(TCO) s_AWADDR;
		else
			awaddr <= #(TCO) awaddr;
	always @(*)
		if ((awaddr & ~`DDR_ADDR_LEN) == `DDR_ADDR_BASE) begin
			m_AWREADY = s0_AWREADY;
			m_WREADY = s0_WREADY;
			m_BID = s0_BID;
			m_BRESP = s0_BRESP;
			m_BUSER = s0_BUSER;
			m_BVALID = s0_BVALID;
		end
		else begin
			m_AWREADY = 1'sb0;
			m_WREADY = 1'sb0;
			m_BID = 1'sb0;
			m_BRESP = 1'sb0;
			m_BUSER = 1'sb0;
			m_BVALID = 1'sb0;
		end
	always @(*)
		if ((awaddr & ~`DDR_ADDR_LEN) == `DDR_ADDR_BASE) begin
			s0_AWVALID = s_AWVALID;
		end
		else begin
			s0_AWVALID = 1'sb0;
		end
	always @(*)
		if ((awaddr & ~`DDR_ADDR_LEN) == `DDR_ADDR_BASE) begin
			s0_BREADY = s_BREADY;
		end
		else begin
			s0_BREADY = 1'sb0;
		end
	always @(*)
		if ((awaddr & ~`DDR_ADDR_LEN) == `DDR_ADDR_BASE) begin
			s0_WVALID = s_WVALID;
		end
		else begin
			s0_WVALID = 1'sb0;
		end
endmodule