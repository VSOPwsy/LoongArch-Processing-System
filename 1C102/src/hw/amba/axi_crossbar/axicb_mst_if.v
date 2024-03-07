module axicb_mst_if (
	i_aclk,
	i_aresetn,
	i_srst,
	i_awvalid,
	i_awready,
	i_awch,
	i_wvalid,
	i_wready,
	i_wlast,
	i_wch,
	i_bvalid,
	i_bready,
	i_bch,
	i_arvalid,
	i_arready,
	i_arch,
	i_rvalid,
	i_rready,
	i_rlast,
	i_rch,
	o_aclk,
	o_aresetn,
	o_srst,
	o_awvalid,
	o_awready,
	o_awaddr,
	o_awlen,
	o_awsize,
	o_awburst,
	o_awlock,
	o_awcache,
	o_awprot,
	o_awqos,
	o_awregion,
	o_awid,
	o_awuser,
	o_wvalid,
	o_wready,
	o_wlast,
	o_wdata,
	o_wstrb,
	o_wuser,
	o_bvalid,
	o_bready,
	o_bid,
	o_bresp,
	o_buser,
	o_arvalid,
	o_arready,
	o_araddr,
	o_arlen,
	o_arsize,
	o_arburst,
	o_arlock,
	o_arcache,
	o_arprot,
	o_arqos,
	o_arregion,
	o_arid,
	o_aruser,
	o_rvalid,
	o_rready,
	o_rid,
	o_rresp,
	o_rdata,
	o_rlast,
	o_ruser
);
	parameter AXI_ADDR_W = 8;
	parameter AXI_ID_W = 8;
	parameter AXI_DATA_W = 8;
	parameter STRB_MODE = 1;
	parameter AXI_SIGNALING = 0;
	parameter KEEP_BASE_ADDR = 0;
	parameter BASE_ADDR = 0;
	parameter SLV_CDC = 0;
	parameter SLV_OSTDREQ_NUM = 4;
	parameter SLV_OSTDREQ_SIZE = 1;
	parameter USER_SUPPORT = 0;
	parameter AXI_AUSER_W = 0;
	parameter AXI_WUSER_W = 0;
	parameter AXI_BUSER_W = 0;
	parameter AXI_RUSER_W = 0;
	parameter AWCH_W = 8;
	parameter WCH_W = 8;
	parameter BCH_W = 8;
	parameter ARCH_W = 8;
	parameter RCH_W = 8;
	input wire i_aclk;
	input wire i_aresetn;
	input wire i_srst;
	input wire i_awvalid;
	output wire i_awready;
	input wire [AWCH_W - 1:0] i_awch;
	input wire i_wvalid;
	output wire i_wready;
	input wire i_wlast;
	input wire [WCH_W - 1:0] i_wch;
	output wire i_bvalid;
	input wire i_bready;
	output wire [BCH_W - 1:0] i_bch;
	input wire i_arvalid;
	output wire i_arready;
	input wire [ARCH_W - 1:0] i_arch;
	output wire i_rvalid;
	input wire i_rready;
	output wire i_rlast;
	output wire [RCH_W - 1:0] i_rch;
	input wire o_aclk;
	input wire o_aresetn;
	input wire o_srst;
	output wire o_awvalid;
	input wire o_awready;
	output wire [AXI_ADDR_W - 1:0] o_awaddr;
	output wire [7:0] o_awlen;
	output wire [2:0] o_awsize;
	output wire [1:0] o_awburst;
	output wire [1:0] o_awlock;
	output wire [3:0] o_awcache;
	output wire [2:0] o_awprot;
	output wire [3:0] o_awqos;
	output wire [3:0] o_awregion;
	output wire [AXI_ID_W - 1:0] o_awid;
	output wire [AXI_AUSER_W - 1:0] o_awuser;
	output wire o_wvalid;
	input wire o_wready;
	output wire o_wlast;
	output wire [AXI_DATA_W - 1:0] o_wdata;
	output wire [(AXI_DATA_W / 8) - 1:0] o_wstrb;
	output wire [AXI_WUSER_W - 1:0] o_wuser;
	input wire o_bvalid;
	output wire o_bready;
	input wire [AXI_ID_W - 1:0] o_bid;
	input wire [1:0] o_bresp;
	input wire [AXI_BUSER_W - 1:0] o_buser;
	output wire o_arvalid;
	input wire o_arready;
	output wire [AXI_ADDR_W - 1:0] o_araddr;
	output wire [7:0] o_arlen;
	output wire [2:0] o_arsize;
	output wire [1:0] o_arburst;
	output wire [1:0] o_arlock;
	output wire [3:0] o_arcache;
	output wire [2:0] o_arprot;
	output wire [3:0] o_arqos;
	output wire [3:0] o_arregion;
	output wire [AXI_ID_W - 1:0] o_arid;
	output wire [AXI_AUSER_W - 1:0] o_aruser;
	input wire o_rvalid;
	output wire o_rready;
	input wire [AXI_ID_W - 1:0] o_rid;
	input wire [1:0] o_rresp;
	input wire [AXI_DATA_W - 1:0] o_rdata;
	input wire o_rlast;
	input wire [AXI_RUSER_W - 1:0] o_ruser;
	wire [AWCH_W - 1:0] awch;
	wire [WCH_W - 1:0] wch;
	wire [BCH_W - 1:0] bch;
	wire [ARCH_W - 1:0] arch;
	wire [RCH_W - 1:0] rch;
	wire rlast;
	wire [AXI_ADDR_W - 1:0] awaddr;
	wire [AXI_ADDR_W - 1:0] araddr;
	generate
		if (SLV_CDC) begin : CDC_STAGE
			localparam AW_ASIZE = (SLV_OSTDREQ_NUM == 0 ? 2 : (SLV_OSTDREQ_NUM < 2 ? 2 : $clog2(SLV_OSTDREQ_NUM)));
			localparam W_ASIZE = (SLV_OSTDREQ_NUM == 0 ? 2 : ((SLV_OSTDREQ_NUM * SLV_OSTDREQ_SIZE) < 2 ? 2 : $clog2(SLV_OSTDREQ_NUM * SLV_OSTDREQ_SIZE)));
			localparam B_ASIZE = (SLV_OSTDREQ_NUM == 0 ? 2 : (SLV_OSTDREQ_NUM < 2 ? 2 : $clog2(SLV_OSTDREQ_NUM)));
			localparam AR_ASIZE = (SLV_OSTDREQ_NUM == 0 ? 2 : (SLV_OSTDREQ_NUM < 2 ? 2 : $clog2(SLV_OSTDREQ_NUM)));
			localparam R_ASIZE = (SLV_OSTDREQ_NUM == 0 ? 2 : ((SLV_OSTDREQ_NUM * SLV_OSTDREQ_SIZE) < 2 ? 2 : $clog2(SLV_OSTDREQ_NUM * SLV_OSTDREQ_SIZE)));
			wire aw_winc;
			wire aw_full;
			wire aw_rinc;
			wire aw_empty;
			wire w_winc;
			wire w_full;
			wire w_rinc;
			wire w_empty;
			wire b_winc;
			wire b_full;
			wire b_rinc;
			wire b_empty;
			wire ar_winc;
			wire ar_full;
			wire ar_rinc;
			wire ar_empty;
			wire r_winc;
			wire r_full;
			wire r_rinc;
			wire r_empty;
			async_fifo #(
				.DSIZE(AWCH_W),
				.ASIZE(AW_ASIZE),
				.FALLTHROUGH("TRUE")
			) aw_dcfifo(
				.wclk(i_aclk),
				.wrst_n(i_aresetn),
				.winc(aw_winc),
				.wdata(i_awch),
				.wfull(aw_full),
				.awfull(),
				.rclk(o_aclk),
				.rrst_n(o_aresetn),
				.rinc(aw_rinc),
				.rdata(awch),
				.rempty(aw_empty),
				.arempty()
			);
			assign i_awready = ~aw_full;
			assign aw_winc = i_awvalid & ~aw_full;
			assign o_awvalid = ~aw_empty;
			assign aw_rinc = ~aw_empty & o_awready;
			async_fifo #(
				.DSIZE(WCH_W + 1),
				.ASIZE(W_ASIZE),
				.FALLTHROUGH("TRUE")
			) w_dcfifo(
				.wclk(i_aclk),
				.wrst_n(i_aresetn),
				.winc(w_winc),
				.wdata({i_wlast, i_wch}),
				.wfull(w_full),
				.awfull(),
				.rclk(o_aclk),
				.rrst_n(o_aresetn),
				.rinc(w_rinc),
				.rdata({o_wlast, wch}),
				.rempty(w_empty),
				.arempty()
			);
			assign i_wready = ~w_full;
			assign w_winc = i_wvalid & ~w_full;
			assign o_wvalid = ~w_empty;
			assign w_rinc = ~w_empty & o_wready;
			async_fifo #(
				.DSIZE(BCH_W),
				.ASIZE(B_ASIZE),
				.FALLTHROUGH("TRUE")
			) b_dcfifo(
				.wclk(o_aclk),
				.wrst_n(o_aresetn),
				.winc(b_winc),
				.wdata(bch),
				.wfull(b_full),
				.awfull(),
				.rclk(i_aclk),
				.rrst_n(i_aresetn),
				.rinc(b_rinc),
				.rdata(i_bch),
				.rempty(b_empty),
				.arempty()
			);
			assign o_bready = ~b_full;
			assign b_winc = o_bvalid & ~b_full;
			assign i_bvalid = ~b_empty;
			assign b_rinc = ~b_empty & i_bready;
			async_fifo #(
				.DSIZE(ARCH_W),
				.ASIZE(AR_ASIZE),
				.FALLTHROUGH("TRUE")
			) ar_dcfifo(
				.wclk(i_aclk),
				.wrst_n(i_aresetn),
				.winc(ar_winc),
				.wdata(i_arch),
				.wfull(ar_full),
				.awfull(),
				.rclk(o_aclk),
				.rrst_n(o_aresetn),
				.rinc(ar_rinc),
				.rdata(arch),
				.rempty(ar_empty),
				.arempty()
			);
			assign i_arready = ~ar_full;
			assign ar_winc = i_arvalid & ~ar_full;
			assign o_arvalid = ~ar_empty;
			assign ar_rinc = ~ar_empty & o_arready;
			async_fifo #(
				.DSIZE(RCH_W + 1),
				.ASIZE(R_ASIZE),
				.FALLTHROUGH("TRUE")
			) r_dcfifo(
				.wclk(o_aclk),
				.wrst_n(o_aresetn),
				.winc(r_winc),
				.wdata({rlast, rch}),
				.wfull(r_full),
				.awfull(),
				.rclk(i_aclk),
				.rrst_n(i_aresetn),
				.rinc(r_rinc),
				.rdata({i_rlast, i_rch}),
				.rempty(r_empty),
				.arempty()
			);
			assign o_rready = ~r_full;
			assign r_winc = o_rvalid & ~r_full;
			assign i_rvalid = ~r_empty;
			assign r_rinc = ~r_empty & i_rready;
		end
		else if (SLV_OSTDREQ_NUM > 0) begin : BUFF_STAGE
			localparam PASS_THRU = 0;
			localparam AW_ASIZE = (SLV_OSTDREQ_NUM < 2 ? 1 : $clog2(SLV_OSTDREQ_NUM));
			localparam W_ASIZE = ((SLV_OSTDREQ_NUM * SLV_OSTDREQ_SIZE) < 2 ? 1 : $clog2(SLV_OSTDREQ_NUM * SLV_OSTDREQ_SIZE));
			localparam B_ASIZE = (SLV_OSTDREQ_NUM < 2 ? 1 : $clog2(SLV_OSTDREQ_NUM));
			localparam AR_ASIZE = (SLV_OSTDREQ_NUM < 2 ? 1 : $clog2(SLV_OSTDREQ_NUM));
			localparam R_ASIZE = ((SLV_OSTDREQ_NUM * SLV_OSTDREQ_SIZE) < 2 ? 1 : $clog2(SLV_OSTDREQ_NUM * SLV_OSTDREQ_SIZE));
			wire aw_full;
			wire aw_empty;
			wire w_full;
			wire w_empty;
			wire ar_full;
			wire ar_empty;
			wire r_full;
			wire r_empty;
			wire b_full;
			wire b_empty;
			axicb_scfifo #(
				.PASS_THRU(PASS_THRU),
				.ADDR_WIDTH(AW_ASIZE),
				.DATA_WIDTH(AWCH_W)
			) aw_scfifo(
				.aclk(i_aclk),
				.aresetn(i_aresetn),
				.srst(i_srst),
				.flush(1'b0),
				.data_in(i_awch),
				.push(i_awvalid),
				.full(aw_full),
				.data_out(awch),
				.pull(o_awready),
				.empty(aw_empty)
			);
			assign i_awready = ~aw_full;
			assign o_awvalid = ~aw_empty;
			axicb_scfifo #(
				.PASS_THRU(PASS_THRU),
				.ADDR_WIDTH(W_ASIZE),
				.DATA_WIDTH(WCH_W + 1)
			) w_scfifo(
				.aclk(i_aclk),
				.aresetn(i_aresetn),
				.srst(i_srst),
				.flush(1'b0),
				.data_in({i_wlast, i_wch}),
				.push(i_wvalid),
				.full(w_full),
				.data_out({o_wlast, wch}),
				.pull(o_wready),
				.empty(w_empty)
			);
			assign i_wready = ~w_full;
			assign o_wvalid = ~w_empty;
			axicb_scfifo #(
				.PASS_THRU(PASS_THRU),
				.ADDR_WIDTH(B_ASIZE),
				.DATA_WIDTH(BCH_W)
			) b_scfifo(
				.aclk(o_aclk),
				.aresetn(o_aresetn),
				.srst(o_srst),
				.flush(1'b0),
				.data_in(bch),
				.push(o_bvalid),
				.full(b_full),
				.data_out(i_bch),
				.pull(i_bready),
				.empty(b_empty)
			);
			assign i_bvalid = ~b_empty;
			assign o_bready = ~b_full;
			axicb_scfifo #(
				.PASS_THRU(PASS_THRU),
				.ADDR_WIDTH(AR_ASIZE),
				.DATA_WIDTH(ARCH_W)
			) ar_scfifo(
				.aclk(i_aclk),
				.aresetn(i_aresetn),
				.srst(i_srst),
				.flush(1'b0),
				.data_in(i_arch),
				.push(i_arvalid),
				.full(ar_full),
				.data_out(arch),
				.pull(o_arready),
				.empty(ar_empty)
			);
			assign i_arready = ~ar_full;
			assign o_arvalid = ~ar_empty;
			axicb_scfifo #(
				.PASS_THRU(PASS_THRU),
				.ADDR_WIDTH(R_ASIZE),
				.DATA_WIDTH(RCH_W + 1)
			) r_scfifo(
				.aclk(o_aclk),
				.aresetn(o_aresetn),
				.srst(o_srst),
				.flush(1'b0),
				.data_in({rlast, rch}),
				.push(o_rvalid),
				.full(r_full),
				.data_out({i_rlast, i_rch}),
				.pull(i_rready),
				.empty(r_empty)
			);
			assign i_rvalid = ~r_empty;
			assign o_rready = ~r_full;
		end
		else begin : NO_CDC_NO_BUFFERING
			assign o_awvalid = i_awvalid;
			assign i_awready = o_awready;
			assign awch = i_awch;
			assign o_wvalid = i_wvalid;
			assign i_wready = o_wready;
			assign o_wlast = i_wlast;
			assign wch = i_wch;
			assign i_bvalid = o_bvalid;
			assign o_bready = i_bready;
			assign i_bch = bch;
			assign o_arvalid = i_arvalid;
			assign i_arready = o_arready;
			assign arch = i_arch;
			assign i_rvalid = o_rvalid;
			assign o_rready = i_rready;
			assign i_rlast = rlast;
			assign i_rch = rch;
		end
		if (AXI_SIGNALING == 0) begin : AXI4LITE_MODE
			if ((USER_SUPPORT > 0) && (AXI_AUSER_W > 0)) begin : AUSER_ON
				assign {o_awuser, o_awprot, o_awid, awaddr} = awch;
				assign {o_aruser, o_arprot, o_arid, araddr} = arch;
			end
			else begin : AUSER_OFF
				assign {o_awprot, o_awid, awaddr} = awch;
				assign {o_arprot, o_arid, araddr} = arch;
			end
		end
		else begin : AXI4_MODE
			if ((USER_SUPPORT > 0) && (AXI_AUSER_W > 0)) begin : AUSER_ON
				assign {o_awuser, o_awregion, o_awqos, o_awprot, o_awcache, o_awlock, o_awburst, o_awsize, o_awlen, o_awid, awaddr} = awch;
				assign {o_aruser, o_arregion, o_arqos, o_arprot, o_arcache, o_arlock, o_arburst, o_arsize, o_arlen, o_arid, araddr} = arch;
			end
			else begin : AUSER_OFF
				assign {o_awregion, o_awqos, o_awprot, o_awcache, o_awlock, o_awburst, o_awsize, o_awlen, o_awid, awaddr} = awch;
				assign {o_arregion, o_arqos, o_arprot, o_arcache, o_arlock, o_arburst, o_arsize, o_arlen, o_arid, araddr} = arch;
			end
		end
		if (KEEP_BASE_ADDR > 0) begin : KEEP_BASE_ADDRESS
			assign o_awaddr = awaddr;
			assign o_araddr = araddr;
		end
		else begin : REMOVE_BASE_ADDRESS
			assign o_awaddr = awaddr - BASE_ADDR[0+:AXI_ADDR_W];
			assign o_araddr = araddr - BASE_ADDR[0+:AXI_ADDR_W];
		end
		if ((USER_SUPPORT > 0) && (AXI_WUSER_W > 0)) begin : WUSER_ON
			assign {o_wuser, o_wstrb, o_wdata} = wch;
		end
		else begin : WUSER_OFF
			assign {o_wstrb, o_wdata} = wch;
		end
		if ((USER_SUPPORT > 0) && (AXI_BUSER_W > 0)) begin : BUSER_ON
			assign bch = {o_buser, o_bresp, o_bid};
		end
		else begin : BUSER_OFF
			assign bch = {o_bresp, o_bid};
		end
		if ((USER_SUPPORT > 0) && (AXI_RUSER_W > 0)) begin : RUSER_ON
			assign rch = {o_ruser, o_rdata, o_rresp, o_rid};
		end
		else begin : RUSER_OFF
			assign rch = {o_rdata, o_rresp, o_rid};
		end
		if (AXI_SIGNALING == 0) begin : AXI4_LITE_RLAST
			assign rlast = 1'b1;
		end
		else begin : AXI4_RLAST
			assign rlast = o_rlast;
		end
	endgenerate
endmodule
`resetall