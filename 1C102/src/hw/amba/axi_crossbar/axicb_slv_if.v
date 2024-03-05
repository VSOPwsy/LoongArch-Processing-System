`default_nettype none
module axicb_slv_if (
	i_aclk,
	i_aresetn,
	i_srst,
	i_awvalid,
	i_awready,
	i_awaddr,
	i_awlen,
	i_awsize,
	i_awburst,
	i_awlock,
	i_awcache,
	i_awprot,
	i_awqos,
	i_awregion,
	i_awid,
	i_awuser,
	i_wvalid,
	i_wready,
	i_wlast,
	i_wdata,
	i_wstrb,
	i_wuser,
	i_bvalid,
	i_bready,
	i_bid,
	i_bresp,
	i_buser,
	i_arvalid,
	i_arready,
	i_araddr,
	i_arlen,
	i_arsize,
	i_arburst,
	i_arlock,
	i_arcache,
	i_arprot,
	i_arqos,
	i_arregion,
	i_arid,
	i_aruser,
	i_rvalid,
	i_rready,
	i_rid,
	i_rresp,
	i_rdata,
	i_rlast,
	i_ruser,
	o_aclk,
	o_aresetn,
	o_srst,
	o_awvalid,
	o_awready,
	o_awch,
	o_wvalid,
	o_wready,
	o_wlast,
	o_wch,
	o_bvalid,
	o_bready,
	o_bch,
	o_arvalid,
	o_arready,
	o_arch,
	o_rvalid,
	o_rready,
	o_rlast,
	o_rch
);
	parameter AXI_ADDR_W = 8;
	parameter AXI_ID_W = 8;
	parameter AXI_DATA_W = 8;
	parameter SLV_NB = 4;
	parameter STRB_MODE = 1;
	parameter AXI_SIGNALING = 0;
	parameter MST_CDC = 0;
	parameter MST_OSTDREQ_NUM = 4;
	parameter MST_OSTDREQ_SIZE = 1;
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
	input wire [AXI_ADDR_W - 1:0] i_awaddr;
	input wire [7:0] i_awlen;
	input wire [2:0] i_awsize;
	input wire [1:0] i_awburst;
	input wire [1:0] i_awlock;
	input wire [3:0] i_awcache;
	input wire [2:0] i_awprot;
	input wire [3:0] i_awqos;
	input wire [3:0] i_awregion;
	input wire [AXI_ID_W - 1:0] i_awid;
	input wire [AXI_AUSER_W - 1:0] i_awuser;
	input wire i_wvalid;
	output wire i_wready;
	input wire i_wlast;
	input wire [AXI_DATA_W - 1:0] i_wdata;
	input wire [(AXI_DATA_W / 8) - 1:0] i_wstrb;
	input wire [AXI_WUSER_W - 1:0] i_wuser;
	output wire i_bvalid;
	input wire i_bready;
	output wire [AXI_ID_W - 1:0] i_bid;
	output wire [1:0] i_bresp;
	output wire [AXI_BUSER_W - 1:0] i_buser;
	input wire i_arvalid;
	output wire i_arready;
	input wire [AXI_ADDR_W - 1:0] i_araddr;
	input wire [7:0] i_arlen;
	input wire [2:0] i_arsize;
	input wire [1:0] i_arburst;
	input wire [1:0] i_arlock;
	input wire [3:0] i_arcache;
	input wire [2:0] i_arprot;
	input wire [3:0] i_arqos;
	input wire [3:0] i_arregion;
	input wire [AXI_ID_W - 1:0] i_arid;
	input wire [AXI_AUSER_W - 1:0] i_aruser;
	output wire i_rvalid;
	input wire i_rready;
	output wire [AXI_ID_W - 1:0] i_rid;
	output wire [1:0] i_rresp;
	output wire [AXI_DATA_W - 1:0] i_rdata;
	output wire i_rlast;
	output wire [AXI_RUSER_W - 1:0] i_ruser;
	input wire o_aclk;
	input wire o_aresetn;
	input wire o_srst;
	output wire o_awvalid;
	input wire o_awready;
	output wire [AWCH_W - 1:0] o_awch;
	output wire o_wvalid;
	input wire o_wready;
	output wire o_wlast;
	output wire [WCH_W - 1:0] o_wch;
	input wire o_bvalid;
	output wire o_bready;
	input wire [BCH_W - 1:0] o_bch;
	output wire o_arvalid;
	input wire o_arready;
	output wire [ARCH_W - 1:0] o_arch;
	input wire o_rvalid;
	output wire o_rready;
	input wire o_rlast;
	input wire [RCH_W - 1:0] o_rch;
	wire [AWCH_W - 1:0] awch;
	wire [WCH_W - 1:0] wch;
	wire [BCH_W - 1:0] bch;
	wire [ARCH_W - 1:0] arch;
	wire [RCH_W - 1:0] rch;
	wire wlast;
	generate
		if (AXI_SIGNALING == 0) begin : AXI4LITE_MODE
			if ((USER_SUPPORT > 0) && (AXI_AUSER_W > 0)) begin : AUSER_ON
				assign awch = {i_awuser, i_awprot, i_awid, i_awaddr};
				assign arch = {i_aruser, i_arprot, i_arid, i_araddr};
			end
			else begin : AUSER_OFF
				assign awch = {i_awprot, i_awid, i_awaddr};
				assign arch = {i_arprot, i_arid, i_araddr};
			end
		end
		else begin : AXI4_MODE
			if ((USER_SUPPORT > 0) && (AXI_AUSER_W > 0)) begin : AUSER_ON
				assign awch = {i_awuser, i_awregion, i_awqos, i_awprot, i_awcache, i_awlock, i_awburst, i_awsize, i_awlen, i_awid, i_awaddr};
				assign arch = {i_aruser, i_arregion, i_arqos, i_arprot, i_arcache, i_arlock, i_arburst, i_arsize, i_arlen, i_arid, i_araddr};
			end
			else begin : AUSER_OFF
				assign awch = {i_awregion, i_awqos, i_awprot, i_awcache, i_awlock, i_awburst, i_awsize, i_awlen, i_awid, i_awaddr};
				assign arch = {i_arregion, i_arqos, i_arprot, i_arcache, i_arlock, i_arburst, i_arsize, i_arlen, i_arid, i_araddr};
			end
		end
		if ((USER_SUPPORT > 0) && (AXI_WUSER_W > 0)) begin : WUSER_ON
			assign wch = {i_wuser, i_wstrb, i_wdata};
		end
		else begin : WUSER_OFF
			assign wch = {i_wstrb, i_wdata};
		end
		if ((USER_SUPPORT > 0) && (AXI_BUSER_W > 0)) begin : BUSER_ON
			assign {i_buser, i_bresp, i_bid} = bch;
		end
		else begin : BUSER_OFF
			assign {i_bresp, i_bid} = bch;
		end
		if ((USER_SUPPORT > 0) && (AXI_RUSER_W > 0)) begin : RUSER_ON
			assign {i_ruser, i_rdata, i_rresp, i_rid} = rch;
		end
		else begin : RUSER_OFF
			assign {i_rdata, i_rresp, i_rid} = rch;
		end
		if (AXI_SIGNALING == 0) begin : AXI4_LITE_WLAST
			assign wlast = 1'b1;
		end
		else begin : AXI4_WLAST
			assign wlast = i_wlast;
		end
		if (MST_CDC > 0) begin : CDC_STAGE
			localparam AW_ASIZE = (MST_OSTDREQ_NUM == 0 ? 2 : (MST_OSTDREQ_NUM < 2 ? 2 : $clog2(MST_OSTDREQ_NUM)));
			localparam W_ASIZE = (MST_OSTDREQ_NUM == 0 ? 2 : ((MST_OSTDREQ_NUM * MST_OSTDREQ_SIZE) < 2 ? 2 : $clog2(MST_OSTDREQ_NUM * MST_OSTDREQ_SIZE)));
			localparam B_ASIZE = (MST_OSTDREQ_NUM == 0 ? 2 : (MST_OSTDREQ_NUM < 2 ? 2 : $clog2(MST_OSTDREQ_NUM)));
			localparam AR_ASIZE = (MST_OSTDREQ_NUM == 0 ? 2 : (MST_OSTDREQ_NUM < 2 ? 2 : $clog2(MST_OSTDREQ_NUM)));
			localparam R_ASIZE = (MST_OSTDREQ_NUM == 0 ? 2 : ((MST_OSTDREQ_NUM * MST_OSTDREQ_SIZE) < 2 ? 2 : $clog2(MST_OSTDREQ_NUM * MST_OSTDREQ_SIZE)));
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
				.wdata(awch),
				.wfull(aw_full),
				.awfull(),
				.rclk(o_aclk),
				.rrst_n(o_aresetn),
				.rinc(aw_rinc),
				.rdata(o_awch),
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
				.wdata({wlast, wch}),
				.wfull(w_full),
				.awfull(),
				.rclk(o_aclk),
				.rrst_n(o_aresetn),
				.rinc(w_rinc),
				.rdata({o_wlast, o_wch}),
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
				.wdata(o_bch),
				.wfull(b_full),
				.awfull(),
				.rclk(i_aclk),
				.rrst_n(i_aresetn),
				.rinc(b_rinc),
				.rdata(bch),
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
				.wdata(arch),
				.wfull(ar_full),
				.awfull(),
				.rclk(o_aclk),
				.rrst_n(o_aresetn),
				.rinc(ar_rinc),
				.rdata(o_arch),
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
				.wdata({o_rlast, o_rch}),
				.wfull(r_full),
				.awfull(),
				.rclk(i_aclk),
				.rrst_n(i_aresetn),
				.rinc(r_rinc),
				.rdata({i_rlast, rch}),
				.rempty(r_empty),
				.arempty()
			);
			assign o_rready = ~r_full;
			assign r_winc = o_rvalid & ~r_full;
			assign i_rvalid = ~r_empty;
			assign r_rinc = ~r_empty & i_rready;
		end
		else if (MST_OSTDREQ_NUM > 0) begin : BUFF_STAGE
			localparam PASS_THRU = 0;
			localparam AW_ASIZE = (MST_OSTDREQ_NUM < 2 ? 1 : $clog2(MST_OSTDREQ_NUM));
			localparam W_ASIZE = ((MST_OSTDREQ_NUM * MST_OSTDREQ_SIZE) < 2 ? 1 : $clog2(MST_OSTDREQ_NUM * MST_OSTDREQ_SIZE));
			localparam B_ASIZE = (MST_OSTDREQ_NUM < 2 ? 1 : $clog2(MST_OSTDREQ_NUM));
			localparam AR_ASIZE = (MST_OSTDREQ_NUM < 2 ? 1 : $clog2(MST_OSTDREQ_NUM));
			localparam R_ASIZE = ((MST_OSTDREQ_NUM * MST_OSTDREQ_SIZE) < 2 ? 1 : $clog2(MST_OSTDREQ_NUM * MST_OSTDREQ_SIZE));
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
				.data_in(awch),
				.push(i_awvalid),
				.full(aw_full),
				.data_out(o_awch),
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
				.data_in({wlast, wch}),
				.push(i_wvalid),
				.full(w_full),
				.data_out({o_wlast, o_wch}),
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
				.data_in(o_bch),
				.push(o_bvalid),
				.full(b_full),
				.data_out(bch),
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
				.data_in(arch),
				.push(i_arvalid),
				.full(ar_full),
				.data_out(o_arch),
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
				.data_in({o_rlast, o_rch}),
				.push(o_rvalid),
				.full(r_full),
				.data_out({i_rlast, rch}),
				.pull(i_rready),
				.empty(r_empty)
			);
			assign i_rvalid = ~r_empty;
			assign o_rready = ~r_full;
		end
		else begin : NO_CDC_NO_BUFFERING
			assign o_awvalid = i_awvalid;
			assign i_awready = o_awready;
			assign o_awch = awch;
			assign o_wvalid = i_wvalid;
			assign i_wready = o_wready;
			assign o_wlast = wlast;
			assign o_wch = wch;
			assign i_bvalid = o_bvalid;
			assign o_bready = i_bready;
			assign bch = o_bch;
			assign o_arvalid = i_arvalid;
			assign i_arready = o_arready;
			assign o_arch = arch;
			assign i_rvalid = o_rvalid;
			assign o_rready = i_rready;
			assign i_rlast = o_rlast;
			assign rch = o_rch;
		end
	endgenerate
endmodule
`resetall