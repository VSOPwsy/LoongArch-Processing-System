module axicb_slv_switch (
	aclk,
	aresetn,
	srst,
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
	parameter AXI_SIGNALING = 0;
	parameter SLV_NB = 4;
	parameter TIMEOUT_ENABLE = 1;
	parameter MST_ROUTES = 4'b1111;
	parameter SLV0_START_ADDR = 0;
	parameter SLV0_END_ADDR = 4095;
	parameter SLV1_START_ADDR = 4096;
	parameter SLV1_END_ADDR = 8191;
	parameter SLV2_START_ADDR = 8192;
	parameter SLV2_END_ADDR = 12287;
	parameter SLV3_START_ADDR = 12288;
	parameter SLV3_END_ADDR = 16383;
	parameter AWCH_W = 8;
	parameter WCH_W = 8;
	parameter BCH_W = 8;
	parameter ARCH_W = 8;
	parameter RCH_W = 8;
	input wire aclk;
	input wire aresetn;
	input wire srst;
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
	output wire [SLV_NB - 1:0] o_awvalid;
	input wire [SLV_NB - 1:0] o_awready;
	output wire [AWCH_W - 1:0] o_awch;
	output wire [SLV_NB - 1:0] o_wvalid;
	input wire [SLV_NB - 1:0] o_wready;
	output wire [SLV_NB - 1:0] o_wlast;
	output wire [WCH_W - 1:0] o_wch;
	input wire [SLV_NB - 1:0] o_bvalid;
	output wire [SLV_NB - 1:0] o_bready;
	input wire [(SLV_NB * BCH_W) - 1:0] o_bch;
	output wire [SLV_NB - 1:0] o_arvalid;
	input wire [SLV_NB - 1:0] o_arready;
	output wire [ARCH_W - 1:0] o_arch;
	input wire [SLV_NB - 1:0] o_rvalid;
	output wire [SLV_NB - 1:0] o_rready;
	input wire [SLV_NB - 1:0] o_rlast;
	input wire [(SLV_NB * RCH_W) - 1:0] o_rch;
	wire wch_full;
	wire wch_empty;
	wire [SLV_NB - 1:0] slv_aw_targeted;
	wire [SLV_NB - 1:0] slv_w_targeted;
	wire [SLV_NB - 1:0] slv_ar_targeted;
	wire bch_en;
	wire [SLV_NB - 1:0] bch_req;
	wire [SLV_NB - 1:0] bch_grant;
	wire rch_en;
	wire [SLV_NB - 1:0] rch_req;
	wire [SLV_NB - 1:0] rch_grant;
	reg [AXI_ADDR_W - 1:0] slv0_start_addr = SLV0_START_ADDR[0+:AXI_ADDR_W];
	reg [AXI_ADDR_W - 1:0] slv0_end_addr = SLV0_END_ADDR[0+:AXI_ADDR_W];
	reg [AXI_ADDR_W - 1:0] slv1_start_addr = SLV1_START_ADDR[0+:AXI_ADDR_W];
	reg [AXI_ADDR_W - 1:0] slv1_end_addr = SLV1_END_ADDR[0+:AXI_ADDR_W];
	reg [AXI_ADDR_W - 1:0] slv2_start_addr = SLV2_START_ADDR[0+:AXI_ADDR_W];
	reg [AXI_ADDR_W - 1:0] slv2_end_addr = SLV2_END_ADDR[0+:AXI_ADDR_W];
	reg [AXI_ADDR_W - 1:0] slv3_start_addr = SLV3_START_ADDR[0+:AXI_ADDR_W];
	reg [AXI_ADDR_W - 1:0] slv3_end_addr = SLV3_END_ADDR[0+:AXI_ADDR_W];
	reg w_misrouting;
	reg r_misrouting;
	wire bch_mr_full;
	wire bch_mr_empty;
	wire [AXI_ID_W - 1:0] bch_mr_id;
	wire rch_mr_full;
	wire rch_mr_empty;
	wire [AXI_ID_W + 7:0] rch_mr_info;
	wire [AXI_ID_W - 1:0] rch_mr_id;
	wire [7:0] rch_mr_len;
	reg [7:0] rlen;
	reg rch_running;
	reg [SLV_NB - 1:0] routes = MST_ROUTES;
	generate
		if (MST_ROUTES[0] == 1'b1) begin : SLV0_AW_ROUTE_ON
			assign slv_aw_targeted[0] = ((i_awch[0+:AXI_ADDR_W] >= slv0_start_addr[0+:AXI_ADDR_W]) && (i_awch[0+:AXI_ADDR_W] <= slv0_end_addr[0+:AXI_ADDR_W]) ? 1'b1 : 1'b0);
		end
		else begin : SLV0_AW_ROUTE_OFF
			assign slv_aw_targeted[0] = 1'b0;
		end
		if (MST_ROUTES[1] == 1'b1) begin : SLV1_AW_ROUTE_ON
			assign slv_aw_targeted[1] = ((i_awch[0+:AXI_ADDR_W] >= slv1_start_addr[0+:AXI_ADDR_W]) && (i_awch[0+:AXI_ADDR_W] <= slv1_end_addr[0+:AXI_ADDR_W]) ? 1'b1 : 1'b0);
		end
		else begin : SLV1_AW_ROUTE_OFF
			assign slv_aw_targeted[1] = 1'b0;
		end
		if (MST_ROUTES[2] == 1'b1) begin : SLV2_AW_ROUTE_ON
			assign slv_aw_targeted[2] = ((i_awch[0+:AXI_ADDR_W] >= slv2_start_addr[0+:AXI_ADDR_W]) && (i_awch[0+:AXI_ADDR_W] <= slv2_end_addr[0+:AXI_ADDR_W]) ? 1'b1 : 1'b0);
		end
		else begin : SLV2_AW_ROUTE_OFF
			assign slv_aw_targeted[2] = 1'b0;
		end
		if (MST_ROUTES[3] == 1'b1) begin : SLV3_AW_ROUTE_ON
			assign slv_aw_targeted[3] = ((i_awch[0+:AXI_ADDR_W] >= slv3_start_addr[0+:AXI_ADDR_W]) && (i_awch[0+:AXI_ADDR_W] <= slv3_end_addr[0+:AXI_ADDR_W]) ? 1'b1 : 1'b0);
		end
		else begin : SLV3_AW_ROUTE_OFF
			assign slv_aw_targeted[3] = 1'b0;
		end
	endgenerate
	assign o_awvalid[0] = (slv_aw_targeted[0] ? i_awvalid : 1'b0);
	assign o_awvalid[1] = (slv_aw_targeted[1] ? i_awvalid : 1'b0);
	assign o_awvalid[2] = (slv_aw_targeted[2] ? i_awvalid : 1'b0);
	assign o_awvalid[3] = (slv_aw_targeted[3] ? i_awvalid : 1'b0);
	assign i_awready = (slv_aw_targeted[0] ? o_awready[0] & !wch_full : (slv_aw_targeted[1] ? o_awready[1] & !wch_full : (slv_aw_targeted[2] ? o_awready[2] & !wch_full : (slv_aw_targeted[3] ? o_awready[3] & !wch_full : w_misrouting))));
	assign o_awch = i_awch;
	always @(posedge aclk or negedge aresetn)
		if (!aresetn)
			w_misrouting <= 1'b0;
		else if (srst)
			w_misrouting <= 1'b0;
		else if (w_misrouting)
			w_misrouting <= 1'b0;
		else if ((i_awvalid && (|slv_aw_targeted == 1'b0)) && !bch_mr_full)
			w_misrouting <= 1'b1;
	axicb_scfifo #(
		.PASS_THRU(0),
		.ADDR_WIDTH(8),
		.DATA_WIDTH(SLV_NB)
	) wch_gnt_fifo(
		.aclk(aclk),
		.aresetn(aresetn),
		.srst(srst),
		.flush(1'b0),
		.data_in(slv_aw_targeted),
		.push(i_awvalid & i_awready),
		.full(wch_full),
		.data_out(slv_w_targeted),
		.pull((i_wvalid & i_wready) & i_wlast),
		.empty(wch_empty)
	);
	assign o_wvalid[0] = (~wch_empty & slv_w_targeted[0] ? i_wvalid : 1'b0);
	assign o_wvalid[1] = (~wch_empty & slv_w_targeted[1] ? i_wvalid : 1'b0);
	assign o_wvalid[2] = (~wch_empty & slv_w_targeted[2] ? i_wvalid : 1'b0);
	assign o_wvalid[3] = (~wch_empty & slv_w_targeted[3] ? i_wvalid : 1'b0);
	assign i_wready = (~wch_empty & slv_w_targeted[0] ? o_wready[0] : (~wch_empty & slv_w_targeted[1] ? o_wready[1] : (~wch_empty & slv_w_targeted[2] ? o_wready[2] : (~wch_empty & slv_w_targeted[3] ? o_wready[3] : (~wch_empty ? 1'b1 : 1'b0)))));
	assign o_wlast[0] = (~wch_empty & slv_w_targeted[0] ? i_wlast : 1'b0);
	assign o_wlast[1] = (~wch_empty & slv_w_targeted[1] ? i_wlast : 1'b0);
	assign o_wlast[2] = (~wch_empty & slv_w_targeted[2] ? i_wlast : 1'b0);
	assign o_wlast[3] = (~wch_empty & slv_w_targeted[3] ? i_wlast : 1'b0);
	assign o_wch = i_wch;
	axicb_scfifo #(
		.PASS_THRU(0),
		.ADDR_WIDTH(2),
		.DATA_WIDTH(AXI_ID_W)
	) bch_mr_fifo(
		.aclk(aclk),
		.aresetn(aresetn),
		.srst(srst),
		.flush(1'b0),
		.data_in(i_awch[AXI_ADDR_W+:AXI_ID_W]),
		.push(w_misrouting),
		.full(bch_mr_full),
		.data_out(bch_mr_id),
		.pull(i_bvalid & i_bready),
		.empty(bch_mr_empty)
	);
	axicb_round_robin #(
		.REQ_NB(SLV_NB),
		.REQ0_PRIORITY(0),
		.REQ1_PRIORITY(0),
		.REQ2_PRIORITY(0),
		.REQ3_PRIORITY(0)
	) bch_round_robin(
		.aclk(aclk),
		.aresetn(aresetn),
		.srst(srst),
		.en(bch_en),
		.req(bch_req),
		.grant(bch_grant)
	);
	assign bch_en = (i_bvalid & i_bready) & bch_mr_empty;
	assign bch_req = o_bvalid;
	assign i_bvalid = (!bch_mr_empty ? 1'b1 : (bch_grant[0] ? o_bvalid[0] : (bch_grant[1] ? o_bvalid[1] : (bch_grant[2] ? o_bvalid[2] : (bch_grant[3] ? o_bvalid[3] : 1'b0)))));
	assign o_bready[0] = (bch_grant[0] & i_bready) & bch_mr_empty;
	assign o_bready[1] = (bch_grant[1] & i_bready) & bch_mr_empty;
	assign o_bready[2] = (bch_grant[2] & i_bready) & bch_mr_empty;
	assign o_bready[3] = (bch_grant[3] & i_bready) & bch_mr_empty;
	assign i_bch = (!bch_mr_empty ? {2'h3, bch_mr_id} : (bch_grant[0] ? o_bch[0+:BCH_W] : (bch_grant[1] ? o_bch[BCH_W+:BCH_W] : (bch_grant[2] ? o_bch[2 * BCH_W+:BCH_W] : (bch_grant[3] ? o_bch[3 * BCH_W+:BCH_W] : {BCH_W {1'b0}})))));
	generate
		if (MST_ROUTES[0] == 1'b1) begin : SLV0_AR_ROUTE_ON
			assign slv_ar_targeted[0] = ((i_arch[0+:AXI_ADDR_W] >= slv0_start_addr[0+:AXI_ADDR_W]) && (i_arch[0+:AXI_ADDR_W] <= slv0_end_addr[0+:AXI_ADDR_W]) ? 1'b1 : 1'b0);
		end
		else begin : SLV0_AR_ROUTE_OFF
			assign slv_ar_targeted[0] = 1'b0;
		end
		if (MST_ROUTES[1] == 1'b1) begin : SLV1_AR_ROUTE_ON
			assign slv_ar_targeted[1] = ((i_arch[0+:AXI_ADDR_W] >= slv1_start_addr[0+:AXI_ADDR_W]) && (i_arch[0+:AXI_ADDR_W] <= slv1_end_addr[0+:AXI_ADDR_W]) ? 1'b1 : 1'b0);
		end
		else begin : SLV1_AR_ROUTE_OFF
			assign slv_ar_targeted[1] = 1'b0;
		end
		if (MST_ROUTES[2] == 1'b1) begin : SLV2_AR_ROUTE_ON
			assign slv_ar_targeted[2] = ((i_arch[0+:AXI_ADDR_W] >= slv2_start_addr[0+:AXI_ADDR_W]) && (i_arch[0+:AXI_ADDR_W] <= slv2_end_addr[0+:AXI_ADDR_W]) ? 1'b1 : 1'b0);
		end
		else begin : SLV2_AR_ROUTE_OFF
			assign slv_ar_targeted[2] = 1'b0;
		end
		if (MST_ROUTES[3] == 1'b1) begin : SLV3_AR_ROUTE_ON
			assign slv_ar_targeted[3] = ((i_arch[0+:AXI_ADDR_W] >= slv3_start_addr[0+:AXI_ADDR_W]) && (i_arch[0+:AXI_ADDR_W] <= slv3_end_addr[0+:AXI_ADDR_W]) ? 1'b1 : 1'b0);
		end
		else begin : SLV3_AR_ROUTE_OFF
			assign slv_ar_targeted[3] = 1'b0;
		end
	endgenerate
	assign o_arvalid[0] = (slv_ar_targeted[0] ? i_arvalid : 1'b0);
	assign o_arvalid[1] = (slv_ar_targeted[1] ? i_arvalid : 1'b0);
	assign o_arvalid[2] = (slv_ar_targeted[2] ? i_arvalid : 1'b0);
	assign o_arvalid[3] = (slv_ar_targeted[3] ? i_arvalid : 1'b0);
	assign i_arready = (slv_ar_targeted[0] ? o_arready[0] : (slv_ar_targeted[1] ? o_arready[1] : (slv_ar_targeted[2] ? o_arready[2] : (slv_ar_targeted[3] ? o_arready[3] : r_misrouting))));
	assign o_arch = i_arch;
	always @(posedge aclk or negedge aresetn)
		if (!aresetn)
			r_misrouting <= 1'b0;
		else if (srst)
			r_misrouting <= 1'b0;
		else if (r_misrouting)
			r_misrouting <= 1'b0;
		else if ((i_arvalid && (|slv_ar_targeted == 1'b0)) && !rch_mr_full)
			r_misrouting <= 1'b1;
	generate
		if (AXI_SIGNALING > 0) begin : AXI_SUPPORT
			assign rch_mr_info = {i_arch[AXI_ADDR_W + AXI_ID_W+:8], i_arch[AXI_ADDR_W+:AXI_ID_W]};
		end
		else begin : AXI4_LITE_SUPPORT
			assign rch_mr_info = {8'h00, i_arch[AXI_ADDR_W+:AXI_ID_W]};
		end
	endgenerate
	axicb_scfifo #(
		.PASS_THRU(0),
		.ADDR_WIDTH(4),
		.DATA_WIDTH(AXI_ID_W + 8)
	) rch_mr_fifo(
		.aclk(aclk),
		.aresetn(aresetn),
		.srst(srst),
		.flush(1'b0),
		.data_in(rch_mr_info),
		.push(r_misrouting),
		.full(rch_mr_full),
		.data_out({rch_mr_len, rch_mr_id}),
		.pull(((i_rvalid & i_rready) & i_rlast) & !rch_running),
		.empty(rch_mr_empty)
	);
	always @(posedge aclk or negedge aresetn)
		if (!aresetn) begin
			rlen <= 8'h00;
			rch_running <= 1'b0;
		end
		else if (srst) begin
			rlen <= 8'h00;
			rch_running <= 1'b0;
		end
		else begin
			if (((rch_running && i_rvalid) && i_rready) && i_rlast)
				rch_running <= 1'b0;
			else if ((rch_mr_empty && i_rvalid) && !i_rlast)
				rch_running <= 1'b1;
			if (rch_mr_empty)
				rlen <= 8'h00;
			else if (((i_rvalid && i_rready) && i_rlast) && !rch_running)
				rlen <= 8'h00;
			else if ((i_rvalid && i_rready) && !rch_running)
				rlen <= rlen + 1'b1;
		end
	axicb_round_robin #(
		.REQ_NB(SLV_NB),
		.REQ0_PRIORITY(0),
		.REQ1_PRIORITY(0),
		.REQ2_PRIORITY(0),
		.REQ3_PRIORITY(0)
	) rch_round_robin(
		.aclk(aclk),
		.aresetn(aresetn),
		.srst(srst),
		.en(rch_en),
		.req(rch_req),
		.grant(rch_grant)
	);
	assign rch_en = (i_rvalid & i_rready) & rch_running;
	assign rch_req = o_rvalid;
	assign i_rvalid = (!rch_mr_empty && !rch_running ? 1'b1 : (rch_grant[0] ? o_rvalid[0] : (rch_grant[1] ? o_rvalid[1] : (rch_grant[2] ? o_rvalid[2] : (rch_grant[3] ? o_rvalid[3] : 1'b0)))));
	assign i_rlast = (!rch_mr_empty && !rch_running ? ((rlen == rch_mr_len) & i_rvalid) & i_rready : (rch_grant[0] ? o_rlast[0] : (rch_grant[1] ? o_rlast[1] : (rch_grant[2] ? o_rlast[2] : (rch_grant[3] ? o_rlast[3] : 1'b0)))));
	assign o_rready[0] = (rch_grant[0] & i_rready) & (rch_mr_empty | rch_running);
	assign o_rready[1] = (rch_grant[1] & i_rready) & (rch_mr_empty | rch_running);
	assign o_rready[2] = (rch_grant[2] & i_rready) & (rch_mr_empty | rch_running);
	assign o_rready[3] = (rch_grant[3] & i_rready) & (rch_mr_empty | rch_running);
	assign i_rch = (!rch_mr_empty && !rch_running ? {{(RCH_W - AXI_ID_W) - 2 {1'b0}}, 2'h3, rch_mr_id} : (rch_grant[0] ? o_rch[0+:RCH_W] : (rch_grant[1] ? o_rch[RCH_W+:RCH_W] : (rch_grant[2] ? o_rch[2 * RCH_W+:RCH_W] : (rch_grant[3] ? o_rch[3 * RCH_W+:RCH_W] : {RCH_W {1'b0}})))));
endmodule
`resetall