`timescale 1ns / 1ps

`include"config.v"

module TOP (
    input clk_osc,
    input sys_resetn,

    output [3:0] led
);

    wire locked1, locked2;
    wire locked;
    wire clk_8M, clk_100M;
    assign locked = locked1 & locked2;

    /*
     * For GW5A
     */
//    Gowin_PLL PLL (
//        .lock(locked), //output lock
//        .clkout0(clk_8M), //output clkout0
//        .clkin(clk_osc), //input clkin
//        .reset(~sys_resetn) //input reset
//    );

    /*
     * For GW2A
     */
    Gowin_rPLL PLL (
        .clkout(clk_8M), //output clkout
        .lock(locked1), //output lock
        .reset(~sys_resetn), //input reset
        .clkin(clk_osc) //input clkin
    );

    
    Gowin_rPLL_100M PLL_100M(
        .clkout(clk_100M), //output clkout
        .lock(locked2), //output lock
        .reset(~sys_resetn), //input reset
        .clkin(clk_osc) //input clkin
    );




    wire [31:0]               fetch_pc;
	wire                      sleeping_o;
    wire                      can_high_freq;
	wire [31:0]               debug_pc;
    wire [5:0]                interrupt;

	wire [`LID         -1 :0] cpu_awid;
	wire [`Lawaddr     -1 :0] cpu_awaddr;
	wire [`Lawlen      -1 :0] cpu_awlen;
	wire [`Lawsize     -1 :0] cpu_awsize;
	wire [`Lawburst    -1 :0] cpu_awburst;
	wire [`Lawlock     -1 :0] cpu_awlock;
	wire [`Lawcache    -1 :0] cpu_awcache;
	wire [`Lawprot     -1 :0] cpu_awprot;
	wire                      cpu_awvalid;
	wire                      cpu_awready;
	wire [`LID         -1 :0] cpu_wid;
	wire [`Lwdata      -1 :0] cpu_wdata;
	wire [`Lwstrb      -1 :0] cpu_wstrb;
	wire                      cpu_wlast;
	wire                      cpu_wvalid;
	wire                      cpu_wready;
	wire [`LID         -1 :0] cpu_bid;
	wire [`Lbresp      -1 :0] cpu_bresp;
	wire                      cpu_bvalid;
	wire                      cpu_bready;
	wire [`LID         -1 :0] cpu_arid;
	wire [`Laraddr     -1 :0] cpu_araddr;
	wire [`Larlen      -1 :0] cpu_arlen;
	wire [`Larsize     -1 :0] cpu_arsize;
	wire [`Larburst    -1 :0] cpu_arburst;
	wire [`Larlock     -1 :0] cpu_arlock;
	wire [`Larcache    -1 :0] cpu_arcache;
	wire [`Larprot     -1 :0] cpu_arprot;
	wire                      cpu_arvalid;
	wire                      cpu_arready;
	wire [`LID         -1 :0] cpu_rid;
	wire [`Lrdata      -1 :0] cpu_rdata;
	wire [`Lrresp      -1 :0] cpu_rresp;
	wire                      cpu_rlast;
	wire                      cpu_rvalid;
	wire                      cpu_rready;

	wire                      inst_sram_en;
	wire [ 3:0]               inst_sram_strb;
	wire [31:0]               inst_sram_wdata;
	wire [31:0]               inst_sram_rdata;
	wire                      inst_sram_wr;
	wire                      inst_sram_fetch;
	wire [31:0]               inst_sram_addr;
	wire                      inst_sram_rrdy = 1'b1;
	wire                      inst_sram_ack  = 1'b1;
	wire                      inst_sram_resp = 1'b0;

	wire                      data_sram_en;
	wire [ 3:0]               data_sram_strb;
	wire [31:0]               data_sram_wdata;
	wire [31:0]               data_sram_rdata;
	wire                      data_sram_wr;
	wire                      data_sram_fetch;
	wire [31:0]               data_sram_addr;
	wire                      data_sram_rrdy = 1'b1;
	wire                      data_sram_ack  = 1'b1;
	wire                      data_sram_resp = 1'b0;



	wire [`LID         -1 :0] axi2apb_awid;
	wire [`Lawaddr     -1 :0] axi2apb_awaddr;
	wire [`Lawlen      -1 :0] axi2apb_awlen;
	wire [`Lawsize     -1 :0] axi2apb_awsize;
	wire [`Lawburst    -1 :0] axi2apb_awburst;
	wire [`Lawlock     -1 :0] axi2apb_awlock;
	wire [`Lawcache    -1 :0] axi2apb_awcache;
	wire [`Lawprot     -1 :0] axi2apb_awprot;
	wire                      axi2apb_awvalid;
	wire                      axi2apb_awready;
	// wire [`LID         -1 :0] axi2apb_wid;
	wire [`Lwdata      -1 :0] axi2apb_wdata;
	wire [`Lwstrb      -1 :0] axi2apb_wstrb;
	wire                      axi2apb_wlast;
	wire                      axi2apb_wvalid;
	wire                      axi2apb_wready;
	wire [`LID         -1 :0] axi2apb_bid;
	wire [`Lbresp      -1 :0] axi2apb_bresp;
	wire                      axi2apb_bvalid;
	wire                      axi2apb_bready;
	wire [`LID         -1 :0] axi2apb_arid;
	wire [`Laraddr     -1 :0] axi2apb_araddr;
	wire [`Larlen      -1 :0] axi2apb_arlen;
	wire [`Larsize     -1 :0] axi2apb_arsize;
	wire [`Larburst    -1 :0] axi2apb_arburst;
	wire [`Larlock     -1 :0] axi2apb_arlock;
	wire [`Larcache    -1 :0] axi2apb_arcache;
	wire [`Larprot     -1 :0] axi2apb_arprot;
	wire                      axi2apb_arvalid;
	wire                      axi2apb_arready;
	wire [`LID         -1 :0] axi2apb_rid;
	wire [`Lrdata      -1 :0] axi2apb_rdata;
	wire [`Lrresp      -1 :0] axi2apb_rresp;
	wire                      axi2apb_rlast;
	wire                      axi2apb_rvalid;
	wire                      axi2apb_rready;


	wire [`LID         -1 :0] s1_awid;
	wire [`Lawaddr     -1 :0] s1_awaddr;
	wire [`Lawlen      -1 :0] s1_awlen;
	wire [`Lawsize     -1 :0] s1_awsize;
	wire [`Lawburst    -1 :0] s1_awburst;
	wire [`Lawlock     -1 :0] s1_awlock;
	wire [`Lawcache    -1 :0] s1_awcache;
	wire [`Lawprot     -1 :0] s1_awprot;
	wire                      s1_awvalid;
	wire                      s1_awready;
	// wire [`LID         -1 :0] s1_wid;
	wire [`Lwdata      -1 :0] s1_wdata;
	wire [`Lwstrb      -1 :0] s1_wstrb;
	wire                      s1_wlast;
	wire                      s1_wvalid;
	wire                      s1_wready;
	wire [`LID         -1 :0] s1_bid;
	wire [`Lbresp      -1 :0] s1_bresp;
	wire                      s1_bvalid;
	wire                      s1_bready;
	wire [`LID         -1 :0] s1_arid;
	wire [`Laraddr     -1 :0] s1_araddr;
	wire [`Larlen      -1 :0] s1_arlen;
	wire [`Larsize     -1 :0] s1_arsize;
	wire [`Larburst    -1 :0] s1_arburst;
	wire [`Larlock     -1 :0] s1_arlock;
	wire [`Larcache    -1 :0] s1_arcache;
	wire [`Larprot     -1 :0] s1_arprot;
	wire                      s1_arvalid;
	wire                      s1_arready;
	wire [`LID         -1 :0] s1_rid;
	wire [`Lrdata      -1 :0] s1_rdata;
	wire [`Lrresp      -1 :0] s1_rresp;
	wire                      s1_rlast;
	wire                      s1_rvalid;
	wire                      s1_rready;


    wire [`s1_axil_Laddr-1:0] m1_axil_awaddr;
    wire [2:0]                m1_axil_awprot;
    wire                      m1_axil_awvalid;
    wire                      m1_axil_awready;
    wire [`s1_axil_Ldata-1:0] m1_axil_wdata;
    wire [`s1_axil_Lstrb-1:0] m1_axil_wstrb;
    wire                      m1_axil_wvalid;
    wire                      m1_axil_wready;
    wire [1:0]                m1_axil_bresp;
    wire                      m1_axil_bvalid;
    wire                      m1_axil_bready;
    wire [`s1_axil_Laddr-1:0] m1_axil_araddr;
    wire [2:0]                m1_axil_arprot;
    wire                      m1_axil_arvalid;
    wire                      m1_axil_arready;
    wire [`s1_axil_Ldata-1:0] m1_axil_rdata;
    wire [1:0]                m1_axil_rresp;
    wire                      m1_axil_rvalid;
    wire                      m1_axil_rready;



    la132_top CPU (
		.boot_pc          (32'h1c000000        ),
		.clk              (clk_8M         	   ),
		.clk_count        (clk_8M          	   ),
		.hard_resetn      (locked&sys_resetn   ),
		.soft_resetn      (locked&sys_resetn   ),

		.sleeping         (sleeping_o          ),
        .can_high_freq    (can_high_freq       ),
		.cpu_fetch_pc     (fetch_pc            ),
		.wb_pc            (debug_pc            ),
		.mode_lisa        (1'b1                ), 
		.inst_xor         (32'b0               ),

		.nmi              (1'b0                ),
		.ext_int          (interrupt           ),

		.arid             (cpu_arid[3:0]       ),
		.araddr           (cpu_araddr          ),
		.arlen            (cpu_arlen           ),
		.arsize           (cpu_arsize          ),
		.arburst          (cpu_arburst         ),
		.arlock           (cpu_arlock          ),
		.arcache          (cpu_arcache         ),
		.arprot           (cpu_arprot          ),
		.arvalid          (cpu_arvalid         ),
		.arready          (cpu_arready         ),

		.rid              (cpu_rid[3:0]        ),
		.rdata            (cpu_rdata           ),
		.rresp            (cpu_rresp           ),
		.rlast            (cpu_rlast           ),
		.rvalid           (cpu_rvalid          ),
		.rready           (cpu_rready          ),

		.awid             (cpu_awid[3:0]       ),
		.awaddr           (cpu_awaddr          ),
		.awlen            (cpu_awlen           ),
		.awsize           (cpu_awsize          ),
		.awburst          (cpu_awburst         ),
		.awlock           (cpu_awlock          ),
		.awcache          (cpu_awcache         ),
		.awprot           (cpu_awprot          ),
		.awvalid          (cpu_awvalid         ),
		.awready          (cpu_awready         ),

		.wid              (cpu_wid[3:0]        ),
		.wdata            (cpu_wdata           ),
		.wstrb            (cpu_wstrb           ),
		.wlast            (cpu_wlast           ),
		.wvalid           (cpu_wvalid          ),
		.wready           (cpu_wready          ),

		.bid              (cpu_bid[3:0]        ),
		.bresp            (cpu_bresp           ),
		.bvalid           (cpu_bvalid          ),
		.bready           (cpu_bready          ),

		.inst_sram_en     (inst_sram_en        ),
		.inst_sram_wr     (inst_sram_wr        ),
		.inst_sram_fetch  (inst_sram_fetch     ),
		.inst_sram_strb   (inst_sram_strb      ),
		.inst_sram_addr   (inst_sram_addr      ),
		.inst_sram_wdata  (inst_sram_wdata     ),
		.inst_sram_rdata  (inst_sram_rdata     ),
		.inst_sram_ack    (inst_sram_ack       ),
		.inst_sram_rrdy   (inst_sram_rrdy      ),
		.inst_sram_resp   (inst_sram_resp      ),

		.data_sram_en     (data_sram_en        ),
		.data_sram_wr     (data_sram_wr        ),
		.data_sram_fetch  (data_sram_fetch     ),
		.data_sram_strb   (data_sram_strb      ),
		.data_sram_addr   (data_sram_addr      ),
		.data_sram_wdata  (data_sram_wdata     ),
		.data_sram_rdata  (data_sram_rdata     ),
		.data_sram_ack    (data_sram_ack       ),
		.data_sram_rrdy   (data_sram_rrdy      ),
		.data_sram_resp   (data_sram_resp      ),

		.trstn            (ljtag_trst_i        ),
		.tck              (ljtag_tck_i         ),
		.tdi              (ljtag_tdi_i         ),
		.tms              (ljtag_tms_i         ),
		.tdo              (ljtag_tdo_o         ),
		.ljtag_prrst      (ljtag_prrst_src     ),
		.ljtag_lock       (1'b0                ),

		.prid_revision    (4'd0  			   ),
		.cpunum           (10'b0         	   ),

		.ibus0_valid      (1'b1                ),
		.ibus0_base       (32'h1c00_0000       ), // va: 1c00_0000 & bfc0_0000
		.ibus0_mask       (32'h1f00_0000       ), // flash 128K, + 4 special page
		.ibus1_valid      (1'b1                ),
		.ibus1_base       (32'h9f00_0000       ), // va: 9fR0_0000 & bf00_0000
		.ibus1_mask       (32'hdff0_0000       ),
		.ibus2_valid      (1'b0            	   ), // flash_en
		.ibus2_base       (32'h9fe6_0000       ), // va: 9fe6_0000 & bfe6_0000
		.ibus2_mask       (32'hdfff_ff00       ),
		.ibus3_valid      (1'b0                ), // compact_mem&flash_en),
		.ibus3_base       (32'h8000_3000       ), // for va: 8000_30xx & 0000_00xx -> pa: 0000_30xx & 4000_00xx
		.ibus3_mask       (32'h7fff_ff00       ),
		.dbus0_valid      (1'b1                ),
		.dbus0_base       (32'h8000_0000       ),
		.dbus0_mask       (32'hdfff_e000       ), // 8K byte, for va: 8000_0000 & a000_0000 -> pa: 0000_0000
		.dbus1_valid      (1'b1                ),
		.dbus1_base       (32'h0000_0000       ),
		.dbus1_mask       (32'hffff_e000       ), // 8K byte, for va: 0000_0000             -> pa: 0000_0000
		.dbus2_valid      (1'b0                ), // unused
		.dbus2_base       (32'h0000_0000       ),
		.dbus2_mask       (32'h0000_0000       ),
		.dbus3_valid      (1'b0                ), // unused
		.dbus3_base       (32'h0000_0000       ),
		.dbus3_mask       (32'h0000_0000       ),

		.test_mode        (1'b0                )
	);

    Gowin_SP_Instr IRAM(
        .dout             (inst_sram_rdata     ), //output [31:0] dout
        .clk              (clk_8M              ), //input clk
        .oce              (inst_sram_en        ), //input oce
        .ce               (inst_sram_en        ), //input ce
        .reset            (~(locked&sys_resetn)), //input reset
        .wre              (inst_sram_wr        ), //input wre
        .ad               (inst_sram_addr[31:2]), //input [11:0] ad
        .din              (inst_sram_wdata     ) //input [31:0] din
    );


    Gowin_SP_Data DRAM(
        .dout             (data_sram_rdata     ), //output [31:0] dout
        .clk              (clk_8M              ), //input clk
        .oce              (data_sram_en        ), //input oce
        .ce               (data_sram_en        ), //input ce
        .reset            (~(locked&sys_resetn)), //input reset
        .wre              (data_sram_wr        ), //input wre
        .ad               (data_sram_addr[31:2]), //input [11:0] ad
        .din              (data_sram_wdata     ) //input [31:0] din
    );
    

	axicb_crossbar_top axi_crossbar (
		.aclk			  (clk_100M			   ),
		.aresetn		  (locked&sys_resetn   ),
		.srst			  (~(locked&sys_resetn)),
		.slv0_aclk		  (clk_8M			   ),
		.slv0_aresetn	  (locked&sys_resetn   ),
		.slv0_srst		  (~(locked&sys_resetn)),
		.slv0_awvalid	  (cpu_awvalid		   ),
		.slv0_awready	  (cpu_awready		   ),
		.slv0_awaddr	  (cpu_awaddr		   ),
		.slv0_awlen		  (cpu_awlen		   ),
		.slv0_awsize	  (cpu_awsize		   ),
		.slv0_awburst	  (cpu_awburst		   ),
		.slv0_awlock	  (cpu_awlock		   ),
		.slv0_awcache	  (cpu_awcache		   ),
		.slv0_awprot	  (cpu_awprot		   ),
		.slv0_awid		  (cpu_awid			   ),
		.slv0_wvalid	  (cpu_wvalid		   ),
		.slv0_wready	  (cpu_wready		   ),
		.slv0_wlast		  (cpu_wlast		   ),
		.slv0_wdata		  (cpu_wdata		   ),
		.slv0_wstrb		  (cpu_wstrb		   ),
		.slv0_bvalid	  (cpu_bvalid		   ),
		.slv0_bready	  (cpu_bready		   ),
		.slv0_bid		  (cpu_bid			   ),
		.slv0_bresp		  (cpu_bresp		   ),
		.slv0_arvalid	  (cpu_arvalid		   ),
		.slv0_arready	  (cpu_arready		   ),
		.slv0_araddr	  (cpu_araddr		   ),
		.slv0_arlen		  (cpu_arlen		   ),
		.slv0_arsize	  (cpu_arsize		   ),
		.slv0_arburst	  (cpu_arburst		   ),
		.slv0_arlock	  (cpu_arlock		   ),
		.slv0_arcache	  (cpu_arcache		   ),
		.slv0_arprot	  (cpu_arprot		   ),
		.slv0_arid		  (cpu_arid			   ),
		.slv0_rvalid	  (cpu_rvalid		   ),
		.slv0_rready	  (cpu_rready		   ),
		.slv0_rid		  (cpu_rid			   ),
		.slv0_rresp		  (cpu_rresp		   ),
		.slv0_rdata		  (cpu_rdata		   ),
		.slv0_rlast		  (cpu_rlast		   ),

		
		.mst0_aclk(clk_100M),
		.mst0_aresetn(locked&sys_resetn),
		.mst0_srst(~(locked&sys_resetn)),
		.mst0_awvalid(s0_awvalid),
		.mst0_awready(s0_awready),
		.mst0_awaddr(s0_awaddr),
		.mst0_awlen(s0_awlen),
		.mst0_awsize(s0_awsize),
		.mst0_awburst(s0_awburst),
		.mst0_awlock(s0_awlock),
		.mst0_awcache(s0_awcache),
		.mst0_awprot(s0_awprot),
		// .mst0_awqos(s0_awqos),
		// .mst0_awregion(s0_awregion),
		.mst0_awid(s0_awid),
		// .mst0_awuser(s0_awuser),
		.mst0_wvalid(s0_wvalid),
		.mst0_wready(s0_wready),
		.mst0_wlast(s0_wlast),
		.mst0_wdata(s0_wdata),
		.mst0_wstrb(s0_wstrb),
		// .mst0_wuser(s0_wuser),
		.mst0_bvalid(s0_bvalid),
		.mst0_bready(s0_bready),
		.mst0_bid(s0_bid),
		.mst0_bresp(s0_bresp),
		// .mst0_buser(s0_buser),
		.mst0_arvalid(s0_arvalid),
		.mst0_arready(s0_arready),
		.mst0_araddr(s0_araddr),
		.mst0_arlen(s0_arlen),
		.mst0_arsize(s0_arsize),
		.mst0_arburst(s0_arburst),
		.mst0_arlock(s0_arlock),
		.mst0_arcache(s0_arcache),
		.mst0_arprot(s0_arprot),
		// .mst0_arqos(s0_arqos),
		// .mst0_arregion(s0_arregion),
		.mst0_arid(s0_arid),
		// .mst0_aruser(s0_aruser),
		.mst0_rvalid(s0_rvalid),
		.mst0_rready(s0_rready),
		.mst0_rid(s0_rid),
		.mst0_rresp(s0_rresp),
		.mst0_rdata(s0_rdata),
		.mst0_rlast(s0_rlast),
		// .mst0_ruser(s0_ruser),


		.mst1_aclk(clk_100M),
		.mst1_aresetn(locked&sys_resetn),
		.mst1_srst(~(locked&sys_resetn)),
		.mst1_awvalid(s1_awvalid),
		.mst1_awready(s1_awready),
		.mst1_awaddr(s1_awaddr),
		.mst1_awlen(s1_awlen),
		.mst1_awsize(s1_awsize),
		.mst1_awburst(s1_awburst),
		.mst1_awlock(s1_awlock),
		.mst1_awcache(s1_awcache),
		.mst1_awprot(s1_awprot),
		// .mst1_awqos(s1_awqos),
		// .mst1_awregion(s1_awregion),
		.mst1_awid(s1_awid),
		// .mst1_awuser(s1_awuser),
		.mst1_wvalid(s1_wvalid),
		.mst1_wready(s1_wready),
		.mst1_wlast(s1_wlast),
		.mst1_wdata(s1_wdata),
		.mst1_wstrb(s1_wstrb),
		// mst1_wuser(s1_wuser),
		.mst1_bvalid(s1_bvalid),
		.mst1_bready(s1_bready),
		.mst1_bid(s1_bid),
		.mst1_bresp(s1_bresp),
		// .mst1_buser(s1_buser),
		.mst1_arvalid(s1_arvalid),
		.mst1_arready(s1_arready),
		.mst1_araddr(s1_araddr),
		.mst1_arlen(s1_arlen),
		.mst1_arsize(s1_arsize),
		.mst1_arburst(s1_arburst),
		.mst1_arlock(s1_arlock),
		.mst1_arcache(s1_arcache),
		.mst1_arprot(s1_arprot),
		// .mst1_arqos(s1_arqos),
		// .mst1_arregion(s1_arregion),
		.mst1_arid(s1_arid),
		// .mst1_aruser(s1_aruser),
		.mst1_rvalid(s1_rvalid),
		.mst1_rready(s1_rready),
		.mst1_rid(s1_rid),
		.mst1_rresp(s1_rresp),
		.mst1_rdata(s1_rdata),
		.mst1_rlast(s1_rlast)
		// .mst1_ruser(s1_ruser)
	);


	axi2apb_bridge (
		.clk(clk),
		.rst_n(rst_n),
		.axi_s_awid(axi2apb_awid),
		.axi_s_awaddr(axi2apb_awaddr),
		.axi_s_awlen(axi2apb_awlen),
		.axi_s_awsize(axi2apb_awsize),
		.axi_s_awburst(axi2apb_awburst),
		.axi_s_awlock(axi2apb_awlock),
		.axi_s_awcache(axi2apb_awcache),
		.axi_s_awprot(axi2apb_awprot),
		.axi_s_awvalid(axi2apb_awvalid),
		.axi_s_awready(axi2apb_awready),

		.axi_s_wid(axi2apb_wid),
		.axi_s_wdata(axi2apb_wdata),
		.axi_s_wstrb(axi2apb_wstrb),
		.axi_s_wlast(axi2apb_wlast),
		.axi_s_wvalid(axi2apb_wvalid),
		.axi_s_wready(axi2apb_wready),

		.axi_s_bid(axi2apb_bid),
		.axi_s_bresp(axi2apb_bresp),
		.axi_s_bvalid(axi2apb_bvalid),
		.axi_s_bready(axi2apb_bready),

		.axi_s_arid(axi2apb_arid),
		.axi_s_araddr(axi2apb_araddr),
		.axi_s_arlen(axi2apb_arlen),
		.axi_s_arsize(axi2apb_arsize),
		.axi_s_arburst(axi2apb_arburst),
		.axi_s_arlock(axi2apb_arlock),
		.axi_s_arcache(axi2apb_arcache),
		.axi_s_arprot(axi2apb_arprot),
		.axi_s_arvalid(axi2apb_arvalid),
		.axi_s_arready(axi2apb_arready),

		.axi_s_rid(axi2apb_rid),
		.axi_s_rdata(axi2apb_rdata),
		.axi_s_rresp(axi2apb_rresp),
		.axi_s_rlast(axi2apb_rlast),
		.axi_s_rvalid(axi2apb_rvalid),
		.axi_s_rready(axi2apb_rready),

		.apb_valid_cpu(apb_valid_cpu),

		.apb_clk(apb_clk),
		.apb_reset_n(apb_reset_n),
		.reg_psel(reg_psel),
		.reg_enable(reg_enable),
		.reg_rw(reg_rw),
		.reg_addr(reg_addr),

		.reg_datai(reg_datai),
		.reg_datao(reg_datao),
		.reg_ready_1(reg_ready_1)
	);


	apb_mux9
	(
		.apb_valid_cpu	(apb_valid_cpu	),
		.apb_psel_cpu	(apb_psel_cpu	),
		.apb_rw_cpu		(apb_rw_cpu		),
		.apb_addr_cpu	(apb_addr_cpu	),
		.apb_enab_cpu	(apb_enab_cpu	),
		.apb_datai_cpu	(apb_datai_cpu	),
		.apb_datao_cpu	(apb_datao_cpu	),
		.apb_ack_cpu	(apb_ack_cpu	),

		.apb0_req(apb0_req),
		.apb0_psel(apb0_psel),
		.apb0_rw(apb0_rw),
		.apb0_addr(apb0_addr),
		.apb0_enab(apb0_enab),
		.apb0_datai(apb0_datai),
		.apb0_datao(apb0_datao),
		.apb0_ack(apb0_ack),

		.apb1_req(apb1_req),
		.apb1_psel(apb1_psel),
		.apb1_rw(apb1_rw),
		.apb1_addr(apb1_addr),
		.apb1_enab(apb1_enab),
		.apb1_datai(apb1_datai),
		.apb1_datao(apb1_datao),
		.apb1_ack(apb1_ack),

		.apb2_req(apb2_req),
		.apb2_psel(apb2_psel),
		.apb2_rw(apb2_rw),
		.apb2_addr(apb2_addr),
		.apb2_enab(apb2_enab),
		.apb2_datai(apb2_datai),
		.apb2_datao(apb2_datao),
		.apb2_ack(apb2_ack),

		.apb3_req(apb3_req),
		.apb3_psel(apb3_psel),
		.apb3_rw(apb3_rw),
		.apb3_addr(apb3_addr),
		.apb3_enab(apb3_enab),
		.apb3_datai(apb3_datai),
		.apb3_datao(apb3_datao),
		.apb3_ack(apb3_ack),

		.apb4_req(apb4_req),
		.apb4_psel(apb4_psel),
		.apb4_rw(apb4_rw),
		.apb4_addr(apb4_addr),
		.apb4_enab(apb4_enab),
		.apb4_datai(apb4_datai),
		.apb4_datao(apb4_datao),
		.apb4_ack(apb4_ack),

		.apb5_req(apb5_req),
		.apb5_psel(apb5_psel),
		.apb5_rw(apb5_rw),
		.apb5_addr(apb5_addr),
		.apb5_enab(apb5_enab),
		.apb5_datai(apb5_datai),
		.apb5_datao(apb5_datao),
		.apb5_ack(apb5_ack),


		.apb6_req(apb6_req),
		.apb6_psel(apb6_psel),
		.apb6_rw(apb6_rw),
		.apb6_addr(apb6_addr),
		.apb6_enab(apb6_enab),
		.apb6_datai(apb6_datai),
		.apb6_datao(apb6_datao),
		.apb6_ack(apb6_ack),

		.apb7_req(apb7_req),
		.apb7_psel(apb7_psel),
		.apb7_rw(apb7_rw),
		.apb7_addr(apb7_addr),
		.apb7_enab(apb7_enab),
		.apb7_datai(apb7_datai),
		.apb7_datao(apb7_datao),
		.apb7_ack(apb7_ack),

		.apb8_req(apb8_req),
		.apb8_psel(apb8_psel),
		.apb8_rw(apb8_rw),
		.apb8_addr(apb8_addr),
		.apb8_enab(apb8_enab),
		.apb8_datai(apb8_datai),
		.apb8_datao(apb8_datao),
		.apb8_ack(apb8_ack)
	);


	axi_adapter # (
		.ADDR_WIDTH(32),
		.S_DATA_WIDTH(32),
		.M_DATA_WIDTH(128)
	) axi_adapter_32_to_128 (
    	.clk(clk_100M),
    	.rst(~(locked&sys_resetn)),

    	.s_axi_awid(s1_awid),
    	.s_axi_awaddr(s1_awaddr),
    	.s_axi_awlen(s1_awlen),
    	.s_axi_awsize(s1_awsize),
    	.s_axi_awburst(s1_awburst),
    	.s_axi_awlock(s1_awlock),
    	.s_axi_awcache(s1_awcache),
    	.s_axi_awprot(s1_awprot),
    	// .s_axi_awqos(s1_awqos),
    	// .s_axi_awregion(s1_awregion),
    	// .s_axi_awuser(s1_awuser),
    	.s_axi_awvalid(s1_wvalid),
    	.s_axi_awready(s1_wready),
    	.s_axi_wdata(s1_wdata),
    	.s_axi_wstrb(s1_wstrb),
    	.s_axi_wlast(s1_wlast),
    	// .s_axi_wuser(s1_wuser),
    	.s_axi_wvalid(s1_wvalid),
    	.s_axi_wready(s1_wready),
    	.s_axi_bid(s1_bid),
    	.s_axi_bresp(s1_bresp),
    	// .s_axi_buser(s1_buser),
    	.s_axi_bvalid(s1_bvalid),
    	.s_axi_bready(s1_bready),
    	.s_axi_arid(s1_arid),
    	.s_axi_araddr(s1_araddr),
    	.s_axi_arlen(s1_arlen),
    	.s_axi_arsize(s1_arsize),
    	.s_axi_arburst(s1_arburst),
    	.s_axi_arlock(s1_arlock),
    	.s_axi_arcache(s1_arcache),
    	.s_axi_arprot(s1_arprot),
    	// .s_axi_arqos(s1_arqos),
    	// .s_axi_arregion(s1_arregion),
    	// .s_axi_aruser(s1_aruser),
    	.s_axi_arvalid(s1_arvalid),
    	.s_axi_arready(s1_arready),
    	.s_axi_rid(s1_rid),
    	.s_axi_rdata(s1_rdata),
    	.s_axi_rresp(s1_rresp),
    	.s_axi_rlast(s1_rlast),
    	// .s_axi_ruser(s1_ruser),
    	.s_axi_rvalid(s1_rvalid),
    	.s_axi_rready(s1_rready),

    
    
    
    	.m_axi_awid(),
    	.m_axi_awaddr(),
    	.m_axi_awlen(),
    	.m_axi_awsize(),
    	.m_axi_awburst(),
    	.m_axi_awlock(),
    	.m_axi_awcache(),
    	.m_axi_awprot(),
    	.m_axi_awqos(),
    	.m_axi_awregion(),
    	.m_axi_awuser(),
    	.m_axi_awvalid(),
    	.m_axi_awready(),
    	.m_axi_wdata(),
    	.m_axi_wstrb(),
    	.m_axi_wlast(),
    	.m_axi_wuser(),
    	.m_axi_wvalid(),
    	.m_axi_wready(),
    	.m_axi_bid(),
    	.m_axi_bresp(),
    	.m_axi_buser(),
    	.m_axi_bvalid(),
    	.m_axi_bready(),
    	.m_axi_arid(),
    	.m_axi_araddr(),
    	.m_axi_arlen(),
    	.m_axi_arsize(),
    	.m_axi_arburst(),
    	.m_axi_arlock(),
    	.m_axi_arcache(),
    	.m_axi_arprot(),
    	.m_axi_arqos(),
    	.m_axi_arregion(),
    	.m_axi_aruser(),
    	.m_axi_arvalid(),
    	.m_axi_arready(),
    	.m_axi_rid(),
    	.m_axi_rdata(),
    	.m_axi_rresp(),
    	.m_axi_rlast(),
    	.m_axi_ruser(),
    	.m_axi_rvalid(),
    	.m_axi_rready(),
	);









    // axi_axil_adapter # (
    //     .ADDR_WIDTH       (`s1_axil_Laddr      ),
    //     .AXI_DATA_WIDTH   (`s1_axi_Ldata       ),
    //     .AXI_ID_WIDTH     (`s1_axil_LID        ),
    //     .AXIL_DATA_WIDTH  (`s1_axil_Ldata      )
    // ) s1_axi_axil (
    //     .clk              (clk_100M              ),
    //     .rst              (~(locked&sys_resetn)),

    //     .s_axi_awid       (s1_awid             ),
    //     .s_axi_awaddr     (s1_awaddr           ),
    //     .s_axi_awlen      (s1_awlen            ),
    //     .s_axi_awsize     (s1_awsize           ),
    //     .s_axi_awburst    (s1_awburst          ),
    //     .s_axi_awlock     (s1_awlock           ),
    //     .s_axi_awcache    (s1_awcache          ),
    //     .s_axi_awprot     (s1_awprot           ),
    //     .s_axi_awvalid    (s1_awvalid          ),
    //     .s_axi_awready    (s1_awready          ),
    //     .s_axi_wdata      (s1_wdata            ),
    //     .s_axi_wstrb      (s1_wstrb            ),
    //     .s_axi_wlast      (s1_wlast            ),
    //     .s_axi_wvalid     (s1_wvalid           ),
    //     .s_axi_wready     (s1_wready           ),
    //     .s_axi_bid        (s1_bid              ),
    //     .s_axi_bresp      (s1_bresp            ),
    //     .s_axi_bvalid     (s1_bvalid           ),
    //     .s_axi_bready     (s1_bready           ),
    //     .s_axi_arid       (s1_arid             ),
    //     .s_axi_araddr     (s1_araddr           ),
    //     .s_axi_arlen      (s1_arlen            ),
    //     .s_axi_arsize     (s1_arsize           ),
    //     .s_axi_arburst    (s1_arburst          ),
    //     .s_axi_arlock     (s1_arlock           ),
    //     .s_axi_arcache    (s1_arcache          ),
    //     .s_axi_arprot     (s1_arprot           ),
    //     .s_axi_arvalid    (s1_arvalid          ),
    //     .s_axi_arready    (s1_arready          ),
    //     .s_axi_rid        (s1_rid              ),
    //     .s_axi_rdata      (s1_rdata            ),
    //     .s_axi_rresp      (s1_rresp            ),
    //     .s_axi_rlast      (s1_rlast            ),
    //     .s_axi_rvalid     (s1_rvalid           ),
    //     .s_axi_rready     (s1_rready           ),

    //     .m_axil_awaddr    (m1_axil_awaddr      ),
    //     .m_axil_awprot    (m1_axil_awprot      ),
    //     .m_axil_awvalid   (m1_axil_awvalid     ),
    //     .m_axil_awready   (m1_axil_awready     ),
    //     .m_axil_wdata     (m1_axil_wdata       ),
    //     .m_axil_wstrb     (m1_axil_wstrb       ),
    //     .m_axil_wvalid    (m1_axil_wvalid      ),
    //     .m_axil_wready    (m1_axil_wready      ),
    //     .m_axil_bresp     (m1_axil_bresp       ),
    //     .m_axil_bvalid    (m1_axil_bvalid      ),
    //     .m_axil_bready    (m1_axil_bready      ),
    //     .m_axil_araddr    (m1_axil_araddr      ),
    //     .m_axil_arprot    (m1_axil_arprot      ),
    //     .m_axil_arvalid   (m1_axil_arvalid     ),
    //     .m_axil_arready   (m1_axil_arready     ),
    //     .m_axil_rdata     (m1_axil_rdata       ),
    //     .m_axil_rresp     (m1_axil_rresp       ),
    //     .m_axil_rvalid    (m1_axil_rvalid      ),
    //     .m_axil_rready    (m1_axil_rready      )
    // );


    // LED_driver # (
    //     .C_S00_AXI_DATA_WIDTH   (`s1_axil_Ldata),
    //     .C_S00_AXI_ADDR_WIDTH   (`s1_axil_Laddr)
    // ) LED_driver_inst (
    //     .s00_axi_aclk     (clk_100M              ),
    //     .s00_axi_aresetn  (locked&sys_resetn   ),

    //     .led              (led                 ),

    //     .s00_axi_awaddr   (m1_axil_awaddr      ),
    //     .s00_axi_awprot   (m1_axil_awprot      ),
    //     .s00_axi_awvalid  (m1_axil_awvalid     ),
    //     .s00_axi_awready  (m1_axil_awready     ),
    //     .s00_axi_wdata    (m1_axil_wdata       ),
    //     .s00_axi_wstrb    (m1_axil_wstrb       ),
    //     .s00_axi_wvalid   (m1_axil_wvalid      ),
    //     .s00_axi_wready   (m1_axil_wready      ),
    //     .s00_axi_bresp    (m1_axil_bresp       ),
    //     .s00_axi_bvalid   (m1_axil_bvalid      ),
    //     .s00_axi_bready   (m1_axil_bready      ),
    //     .s00_axi_araddr   (m1_axil_araddr      ),
    //     .s00_axi_arprot   (m1_axil_arprot      ),
    //     .s00_axi_arvalid  (m1_axil_arvalid     ),
    //     .s00_axi_arready  (m1_axil_arready     ),
    //     .s00_axi_rdata    (m1_axil_rdata       ),
    //     .s00_axi_rresp    (m1_axil_rresp       ),
    //     .s00_axi_rvalid   (m1_axil_rvalid      ),
    //     .s00_axi_rready   (m1_axil_rready      )
    // );
endmodule
