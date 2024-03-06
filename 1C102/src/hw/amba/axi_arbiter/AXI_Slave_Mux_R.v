`include "../../config.v"

module AXI_Slave_Mux_R (
	ACLK,
	ARESETn,
	s0_ARVALID,
	s0_ARREADY,
	s0_RID,
	s0_RDATA,
	s0_RRESP,
	s0_RLAST,
	s0_RUSER,
	s0_RVALID,
	s0_RREADY,
	m_ARREADY,
	m_RID,
	m_RDATA,
	m_RRESP,
	m_RLAST,
	m_RUSER,
	m_RVALID,
	s_ARADDR,
	s_ARVALID,
	s_RREADY
);
	parameter DATA_WIDTH = 128;
	parameter ADDR_WIDTH = 32;
	parameter ID_WIDTH = 4;
	parameter USER_WIDTH = 1;
	input ACLK;
	input ARESETn;
	output reg s0_ARVALID;
	input s0_ARREADY;
	input [ID_WIDTH - 1:0] s0_RID;
	input [DATA_WIDTH - 1:0] s0_RDATA;
	input [1:0] s0_RRESP;
	input s0_RLAST;
	input [USER_WIDTH - 1:0] s0_RUSER;
	input s0_RVALID;
	output reg s0_RREADY;
	output reg m_ARREADY;
	output reg [ID_WIDTH - 1:0] m_RID;
	output reg [DATA_WIDTH - 1:0] m_RDATA;
	output reg [1:0] m_RRESP;
	output reg m_RLAST;
	output reg [USER_WIDTH - 1:0] m_RUSER;
	output reg m_RVALID;
	input [ADDR_WIDTH - 1:0] s_ARADDR;
	input s_ARVALID;
	input s_RREADY;
	parameter TCO = 1;
	reg [ADDR_WIDTH - 1:0] araddr;
	always @(posedge ACLK or negedge ARESETn)
		if (!ARESETn)
			araddr <= #(TCO) 1'sb0;
		else if (s_ARVALID)
			araddr <= #(TCO) s_ARADDR;
		else
			araddr <= #(TCO) araddr;
	always @(*)
		if ((araddr & ~`DDR_ADDR_LEN) == `DDR_ADDR_BASE) begin
			m_ARREADY = s0_ARREADY;
			m_RID = s0_RID;
			m_RDATA = s0_RDATA;
			m_RRESP = s0_RRESP;
			m_RLAST = s0_RLAST;
			m_RUSER = s0_RUSER;
			m_RVALID = s0_RVALID;
		end
		else begin
			m_ARREADY = 1'sb0;
			m_RID = 1'sb0;
			m_RDATA = 1'sb0;
			m_RRESP = 1'sb0;
			m_RLAST = 1'sb0;
			m_RUSER = 1'sb0;
			m_RVALID = 1'sb0;
		end
	always @(*)
		if ((araddr & ~`DDR_ADDR_LEN) == `DDR_ADDR_BASE) begin
			s0_ARVALID = s_ARVALID;
		end
		else begin
			s0_ARVALID = 1'sb0;
		end
	always @(*)
		if ((araddr & ~`DDR_ADDR_LEN) == `DDR_ADDR_BASE) begin
			s0_RREADY = s_RREADY;
		end
		else begin
			s0_RREADY = 1'sb0;
		end
endmodule