`include "../../config.v"

module AXI_Master_Mux_W (
	ACLK,
	ARESETn,
	m0_AWID,
	m0_AWADDR,
	m0_AWLEN,
	m0_AWSIZE,
	m0_AWBURST,
	m0_AWLOCK,
	m0_AWCACHE,
	m0_AWPROT,
	m0_AWQOS,
	m0_AWREGION,
	m0_AWUSER,
	m0_AWVALID,
	m0_AWREADY,
	m0_WID,
	m0_WDATA,
	m0_WSTRB,
	m0_WLAST,
	m0_WUSER,
	m0_WVALID,
	m0_WREADY,
	m0_BVALID,
	m0_BREADY,
	m1_AWID,
	m1_AWADDR,
	m1_AWLEN,
	m1_AWSIZE,
	m1_AWBURST,
	m1_AWLOCK,
	m1_AWCACHE,
	m1_AWPROT,
	m1_AWQOS,
	m1_AWREGION,
	m1_AWUSER,
	m1_AWVALID,
	m1_AWREADY,
	m1_WID,
	m1_WDATA,
	m1_WSTRB,
	m1_WLAST,
	m1_WUSER,
	m1_WVALID,
	m1_WREADY,
	m1_BVALID,
	m1_BREADY,
	m2_AWID,
	m2_AWADDR,
	m2_AWLEN,
	m2_AWSIZE,
	m2_AWBURST,
	m2_AWLOCK,
	m2_AWCACHE,
	m2_AWPROT,
	m2_AWQOS,
	m2_AWREGION,
	m2_AWUSER,
	m2_AWVALID,
	m2_AWREADY,
	m2_WID,
	m2_WDATA,
	m2_WSTRB,
	m2_WLAST,
	m2_WUSER,
	m2_WVALID,
	m2_WREADY,
	m2_BVALID,
	m2_BREADY,
	m3_AWID,
	m3_AWADDR,
	m3_AWLEN,
	m3_AWSIZE,
	m3_AWBURST,
	m3_AWLOCK,
	m3_AWCACHE,
	m3_AWPROT,
	m3_AWQOS,
	m3_AWREGION,
	m3_AWUSER,
	m3_AWVALID,
	m3_AWREADY,
	m3_WID,
	m3_WDATA,
	m3_WSTRB,
	m3_WLAST,
	m3_WUSER,
	m3_WVALID,
	m3_WREADY,
	m3_BVALID,
	m3_BREADY,
	s_AWID,
	s_AWADDR,
	s_AWLEN,
	s_AWSIZE,
	s_AWBURST,
	s_AWLOCK,
	s_AWCACHE,
	s_AWPROT,
	s_AWQOS,
	s_AWREGION,
	s_AWUSER,
	s_AWVALID,
	s_WID,
	s_WDATA,
	s_WSTRB,
	s_WLAST,
	s_WUSER,
	s_WVALID,
	s_BREADY,
	m_AWREADY,
	m_WREADY,
	m_BVALID,
	m0_wgrnt,
	m1_wgrnt,
	m2_wgrnt,
	m3_wgrnt
);
	parameter DATA_WIDTH = 1024;
	parameter ADDR_WIDTH = 64;
	parameter ID_WIDTH = 8;
	parameter USER_WIDTH = 8;
	parameter STRB_WIDTH = DATA_WIDTH / 8;
	input ACLK;
	input ARESETn;
	input [ID_WIDTH - 1:0] m0_AWID;
	input [ADDR_WIDTH - 1:0] m0_AWADDR;
	input [7:0] m0_AWLEN;
	input [2:0] m0_AWSIZE;
	input [1:0] m0_AWBURST;
	input m0_AWLOCK;
	input [3:0] m0_AWCACHE;
	input [2:0] m0_AWPROT;
	input [3:0] m0_AWQOS;
	input [3:0] m0_AWREGION;
	input [USER_WIDTH - 1:0] m0_AWUSER;
	input m0_AWVALID;
	output reg m0_AWREADY;
	input [ID_WIDTH - 1:0] m0_WID;
	input [DATA_WIDTH - 1:0] m0_WDATA;
	input [STRB_WIDTH - 1:0] m0_WSTRB;
	input m0_WLAST;
	input [USER_WIDTH - 1:0] m0_WUSER;
	input m0_WVALID;
	output reg m0_WREADY;
	output reg m0_BVALID;
	input m0_BREADY;
	input [ID_WIDTH - 1:0] m1_AWID;
	input [ADDR_WIDTH - 1:0] m1_AWADDR;
	input [7:0] m1_AWLEN;
	input [2:0] m1_AWSIZE;
	input [1:0] m1_AWBURST;
	input m1_AWLOCK;
	input [3:0] m1_AWCACHE;
	input [2:0] m1_AWPROT;
	input [3:0] m1_AWQOS;
	input [3:0] m1_AWREGION;
	input [USER_WIDTH - 1:0] m1_AWUSER;
	input m1_AWVALID;
	output reg m1_AWREADY;
	input [ID_WIDTH - 1:0] m1_WID;
	input [DATA_WIDTH - 1:0] m1_WDATA;
	input [STRB_WIDTH - 1:0] m1_WSTRB;
	input m1_WLAST;
	input [USER_WIDTH - 1:0] m1_WUSER;
	input m1_WVALID;
	output reg m1_WREADY;
	output reg m1_BVALID;
	input m1_BREADY;
	input [ID_WIDTH - 1:0] m2_AWID;
	input [ADDR_WIDTH - 1:0] m2_AWADDR;
	input [7:0] m2_AWLEN;
	input [2:0] m2_AWSIZE;
	input [1:0] m2_AWBURST;
	input m2_AWLOCK;
	input [3:0] m2_AWCACHE;
	input [2:0] m2_AWPROT;
	input [3:0] m2_AWQOS;
	input [3:0] m2_AWREGION;
	input [USER_WIDTH - 1:0] m2_AWUSER;
	input m2_AWVALID;
	output reg m2_AWREADY;
	input [ID_WIDTH - 1:0] m2_WID;
	input [DATA_WIDTH - 1:0] m2_WDATA;
	input [STRB_WIDTH - 1:0] m2_WSTRB;
	input m2_WLAST;
	input [USER_WIDTH - 1:0] m2_WUSER;
	input m2_WVALID;
	output reg m2_WREADY;
	output reg m2_BVALID;
	input m2_BREADY;
	input [ID_WIDTH - 1:0] m3_AWID;
	input [ADDR_WIDTH - 1:0] m3_AWADDR;
	input [7:0] m3_AWLEN;
	input [2:0] m3_AWSIZE;
	input [1:0] m3_AWBURST;
	input m3_AWLOCK;
	input [3:0] m3_AWCACHE;
	input [2:0] m3_AWPROT;
	input [3:0] m3_AWQOS;
	input [3:0] m3_AWREGION;
	input [USER_WIDTH - 1:0] m3_AWUSER;
	input m3_AWVALID;
	output reg m3_AWREADY;
	input [ID_WIDTH - 1:0] m3_WID;
	input [DATA_WIDTH - 1:0] m3_WDATA;
	input [STRB_WIDTH - 1:0] m3_WSTRB;
	input m3_WLAST;
	input [USER_WIDTH - 1:0] m3_WUSER;
	input m3_WVALID;
	output reg m3_WREADY;
	output reg m3_BVALID;
	input m3_BREADY;
	output reg [ID_WIDTH - 1:0] s_AWID;
	output reg [ADDR_WIDTH - 1:0] s_AWADDR;
	output reg [7:0] s_AWLEN;
	output reg [2:0] s_AWSIZE;
	output reg [1:0] s_AWBURST;
	output reg s_AWLOCK;
	output reg [3:0] s_AWCACHE;
	output reg [2:0] s_AWPROT;
	output reg [3:0] s_AWQOS;
	output reg [3:0] s_AWREGION;
	output reg [USER_WIDTH - 1:0] s_AWUSER;
	output reg s_AWVALID;
	output reg [ID_WIDTH - 1:0] s_WID;
	output reg [DATA_WIDTH - 1:0] s_WDATA;
	output reg [STRB_WIDTH - 1:0] s_WSTRB;
	output reg s_WLAST;
	output reg [USER_WIDTH - 1:0] s_WUSER;
	output reg s_WVALID;
	output reg s_BREADY;
	input m_AWREADY;
	input m_WREADY;
	input m_BVALID;
	input m0_wgrnt;
	input m1_wgrnt;
	input m2_wgrnt;
	input m3_wgrnt;
	always @(*)
		case ({m0_wgrnt, m1_wgrnt, m2_wgrnt, m3_wgrnt})
			4'b1000: begin
				s_AWID = m0_AWID;
				s_AWADDR = m0_AWADDR;
				s_AWLEN = m0_AWLEN;
				s_AWSIZE = m0_AWSIZE;
				s_AWBURST = m0_AWBURST;
				s_AWLOCK = m0_AWLOCK;
				s_AWCACHE = m0_AWCACHE;
				s_AWPROT = m0_AWPROT;
				s_AWQOS = m0_AWQOS;
				s_AWREGION = m0_AWREGION;
				s_AWUSER = m0_AWUSER;
				s_AWVALID = m0_AWVALID;
				s_WID = m0_WID;
				s_WDATA = m0_WDATA;
				s_WSTRB = m0_WSTRB;
				s_WLAST = m0_WLAST;
				s_WUSER = m0_WUSER;
				s_WVALID = m0_WVALID;
				s_BREADY = m0_BREADY;
			end
			4'b0100: begin
				s_AWID = m1_AWID;
				s_AWADDR = m1_AWADDR;
				s_AWLEN = m1_AWLEN;
				s_AWSIZE = m1_AWSIZE;
				s_AWBURST = m1_AWBURST;
				s_AWLOCK = m1_AWLOCK;
				s_AWCACHE = m1_AWCACHE;
				s_AWPROT = m1_AWPROT;
				s_AWQOS = m1_AWQOS;
				s_AWREGION = m1_AWREGION;
				s_AWUSER = m1_AWUSER;
				s_AWVALID = m1_AWVALID;
				s_WID = m1_WID;
				s_WDATA = m1_WDATA;
				s_WSTRB = m1_WSTRB;
				s_WLAST = m1_WLAST;
				s_WUSER = m1_WUSER;
				s_WVALID = m1_WVALID;
				s_BREADY = m1_BREADY;
			end
			4'b0010: begin
				s_AWID = m2_AWID;
				s_AWADDR = m2_AWADDR;
				s_AWLEN = m2_AWLEN;
				s_AWSIZE = m2_AWSIZE;
				s_AWBURST = m2_AWBURST;
				s_AWLOCK = m2_AWLOCK;
				s_AWCACHE = m2_AWCACHE;
				s_AWPROT = m2_AWPROT;
				s_AWQOS = m2_AWQOS;
				s_AWREGION = m2_AWREGION;
				s_AWUSER = m2_AWUSER;
				s_AWVALID = m2_AWVALID;
				s_WID = m2_WID;
				s_WDATA = m2_WDATA;
				s_WSTRB = m2_WSTRB;
				s_WLAST = m2_WLAST;
				s_WUSER = m2_WUSER;
				s_WVALID = m2_WVALID;
				s_BREADY = m2_BREADY;
			end
			4'b0001: begin
				s_AWID = m3_AWID;
				s_AWADDR = m3_AWADDR;
				s_AWLEN = m3_AWLEN;
				s_AWSIZE = m3_AWSIZE;
				s_AWBURST = m3_AWBURST;
				s_AWLOCK = m3_AWLOCK;
				s_AWCACHE = m3_AWCACHE;
				s_AWPROT = m3_AWPROT;
				s_AWQOS = m3_AWQOS;
				s_AWREGION = m3_AWREGION;
				s_AWUSER = m3_AWUSER;
				s_AWVALID = m3_AWVALID;
				s_WID = m3_WID;
				s_WDATA = m3_WDATA;
				s_WSTRB = m3_WSTRB;
				s_WLAST = m3_WLAST;
				s_WUSER = m3_WUSER;
				s_WVALID = m3_WVALID;
				s_BREADY = m3_BREADY;
			end
			default: begin
				s_AWID = 1'sb0;
				s_AWADDR = 1'sb0;
				s_AWLEN = 1'sb0;
				s_AWSIZE = 1'sb0;
				s_AWBURST = 1'sb0;
				s_AWLOCK = 1'sb0;
				s_AWCACHE = 1'sb0;
				s_AWPROT = 1'sb0;
				s_AWQOS = 1'sb0;
				s_AWREGION = 1'sb0;
				s_AWUSER = 1'sb0;
				s_AWVALID = 1'sb0;
				s_WID = 1'sb0;
				s_WDATA = 1'sb0;
				s_WSTRB = 1'sb0;
				s_WLAST = 1'sb0;
				s_WUSER = 1'sb0;
				s_WVALID = 1'sb0;
				s_BREADY = 1'sb0;
			end
		endcase
	always @(*)
		case ({m0_wgrnt, m1_wgrnt, m2_wgrnt, m3_wgrnt})
			4'b1000: begin
				m0_AWREADY = m_AWREADY;
				m1_AWREADY = 1'sb0;
				m2_AWREADY = 1'sb0;
				m3_AWREADY = 1'sb0;
			end
			4'b0100: begin
				m0_AWREADY = 1'sb0;
				m1_AWREADY = m_AWREADY;
				m2_AWREADY = 1'sb0;
				m3_AWREADY = 1'sb0;
			end
			4'b0010: begin
				m0_AWREADY = 1'sb0;
				m1_AWREADY = 1'sb0;
				m2_AWREADY = m_AWREADY;
				m3_AWREADY = 1'sb0;
			end
			4'b0001: begin
				m0_AWREADY = 1'sb0;
				m1_AWREADY = 1'sb0;
				m2_AWREADY = 1'sb0;
				m3_AWREADY = m_AWREADY;
			end
			default: begin
				m0_AWREADY = 1'sb0;
				m1_AWREADY = 1'sb0;
				m2_AWREADY = 1'sb0;
				m3_AWREADY = 1'sb0;
			end
		endcase
	always @(*)
		case ({m0_wgrnt, m1_wgrnt, m2_wgrnt, m3_wgrnt})
			4'b1000: begin
				m0_WREADY = m_WREADY;
				m1_WREADY = 1'sb0;
				m2_WREADY = 1'sb0;
				m3_WREADY = 1'sb0;
			end
			4'b0100: begin
				m0_WREADY = 1'sb0;
				m1_WREADY = m_WREADY;
				m2_WREADY = 1'sb0;
				m3_WREADY = 1'sb0;
			end
			4'b0010: begin
				m0_WREADY = 1'sb0;
				m1_WREADY = 1'sb0;
				m2_WREADY = m_WREADY;
				m3_WREADY = 1'sb0;
			end
			4'b0001: begin
				m0_WREADY = 1'sb0;
				m1_WREADY = 1'sb0;
				m2_WREADY = 1'sb0;
				m3_WREADY = m_WREADY;
			end
			default: begin
				m0_WREADY = 1'sb0;
				m1_WREADY = 1'sb0;
				m2_WREADY = 1'sb0;
				m3_WREADY = 1'sb0;
			end
		endcase
	always @(*)
		case ({m0_wgrnt, m1_wgrnt, m2_wgrnt, m3_wgrnt})
			4'b1000: begin
				m0_BVALID = m_BVALID;
				m1_BVALID = 1'sb0;
				m2_BVALID = 1'sb0;
				m3_BVALID = 1'sb0;
			end
			4'b0100: begin
				m0_BVALID = 1'sb0;
				m1_BVALID = m_BVALID;
				m2_BVALID = 1'sb0;
				m3_BVALID = 1'sb0;
			end
			4'b0010: begin
				m0_BVALID = 1'sb0;
				m1_BVALID = 1'sb0;
				m2_BVALID = m_BVALID;
				m3_BVALID = 1'sb0;
			end
			4'b0001: begin
				m0_BVALID = 1'sb0;
				m1_BVALID = 1'sb0;
				m2_BVALID = 1'sb0;
				m3_BVALID = m_BVALID;
			end
			default: begin
				m0_BVALID = 1'sb0;
				m1_BVALID = 1'sb0;
				m2_BVALID = 1'sb0;
				m3_BVALID = 1'sb0;
			end
		endcase
endmodule