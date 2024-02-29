`timescale 1ns / 1ps

`include"config.v"

module TOP (
    input clk_osc,
    input sys_resetn,

    output [3:0] led
);

    wire locked;
    wire clk_8M;

    Gowin_PLL PLL (
        .lock(locked), //output lock
        .clkout0(clk_8M), //output clkout0
        .clkin(clk_osc), //input clkin
        .reset(~sys_resetn) //input reset
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
		.hard_resetn      (sys_resetn          ),
		.soft_resetn      (sys_resetn          ),

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

    
	axi_slave_mux_cpu AXI_Interconnect (
		.axi_s_aclk       (clk_8M              ),
		.axi_s_aresetn    (sys_resetn          ),
		.axi_s_awid       (cpu_awid            ),
		.axi_s_awaddr     (cpu_awaddr          ),
		.axi_s_awlen      (cpu_awlen           ),
		.axi_s_awsize     (cpu_awsize          ),
		.axi_s_awburst    (cpu_awburst         ),
		.axi_s_awlock     (cpu_awlock          ),
		.axi_s_awcache    (cpu_awcache         ),
		.axi_s_awprot     (cpu_awprot          ),
		.axi_s_awvalid    (cpu_awvalid         ),
		.axi_s_awready    (cpu_awready         ),
		.axi_s_wready     (cpu_wready          ),
		.axi_s_wid        (cpu_wid             ),
		.axi_s_wdata      (cpu_wdata           ),
		.axi_s_wstrb      (cpu_wstrb           ),
		.axi_s_wlast      (cpu_wlast           ),
		.axi_s_wvalid     (cpu_wvalid          ),
		.axi_s_bid        (cpu_bid             ),
		.axi_s_bresp      (cpu_bresp           ),
		.axi_s_bvalid     (cpu_bvalid          ),
		.axi_s_bready     (cpu_bready          ),
		.axi_s_arid       (cpu_arid            ),
		.axi_s_araddr     (cpu_araddr          ),
		.axi_s_arlen      (cpu_arlen           ),
		.axi_s_arsize     (cpu_arsize          ),
		.axi_s_arburst    (cpu_arburst         ),
		.axi_s_arlock     (cpu_arlock          ),
		.axi_s_arcache    (cpu_arcache         ),
		.axi_s_arprot     (cpu_arprot          ),
		.axi_s_arvalid    (cpu_arvalid         ),
		.axi_s_arready    (cpu_arready         ),
		.axi_s_rready     (cpu_rready          ),
		.axi_s_rid        (cpu_rid             ),
		.axi_s_rdata      (cpu_rdata           ),
		.axi_s_rresp      (cpu_rresp           ),
		.axi_s_rlast      (cpu_rlast           ),
		.axi_s_rvalid     (cpu_rvalid          ),

		// .s0_awid          (apb_awid            ),
		// .s0_awaddr        (apb_awaddr          ),
		// .s0_awlen         (apb_awlen           ),
		// .s0_awsize        (apb_awsize          ),
		// .s0_awburst       (apb_awburst         ),
		// .s0_awlock        (apb_awlock          ),
		// .s0_awcache       (apb_awcache         ),
		// .s0_awprot        (apb_awprot          ),
		// .s0_awvalid       (apb_awvalid         ),
		// .s0_awready       (apb_awready         ),
		// .s0_wid           (apb_wid             ),
		// .s0_wdata         (apb_wdata           ),
		// .s0_wstrb         (apb_wstrb           ),
		// .s0_wlast         (apb_wlast           ),
		// .s0_wvalid        (apb_wvalid          ),
		// .s0_wready        (apb_wready          ),
		// .s0_bid           (apb_bid             ),
		// .s0_bresp         (apb_bresp           ),
		// .s0_bvalid        (apb_bvalid          ),
		// .s0_bready        (apb_bready          ),
		// .s0_arid          (apb_arid            ),
		// .s0_araddr        (apb_araddr          ),
		// .s0_arlen         (apb_arlen           ),
		// .s0_arsize        (apb_arsize          ),
		// .s0_arburst       (apb_arburst         ),
		// .s0_arlock        (apb_arlock          ),
		// .s0_arcache       (apb_arcache         ),
		// .s0_arprot        (apb_arprot          ),
		// .s0_arvalid       (apb_arvalid         ),
		// .s0_arready       (apb_arready         ),
		// .s0_rid           (apb_rid             ),
		// .s0_rdata         (apb_rdata           ),
		// .s0_rresp         (apb_rresp           ),
		// .s0_rlast         (apb_rlast           ),
		// .s0_rvalid        (apb_rvalid          ),
		// .s0_rready        (apb_rready          ),
		
		.s1_awid          (s1_awid             ),
		.s1_awaddr        (s1_awaddr           ),
		.s1_awlen         (s1_awlen            ),
		.s1_awsize        (s1_awsize           ),
		.s1_awburst       (s1_awburst          ),
		.s1_awlock        (s1_awlock           ),
		.s1_awcache       (s1_awcache          ),
		.s1_awprot        (s1_awprot           ),
		.s1_awvalid       (s1_awvalid          ),
		.s1_awready       (s1_awready          ),
		// .s1_wid           (s1_wid              ),   ////
		.s1_wdata         (s1_wdata            ),
		.s1_wstrb         (s1_wstrb            ),
		.s1_wlast         (s1_wlast            ),
		.s1_wvalid        (s1_wvalid           ),
		.s1_wready        (s1_wready           ),
		.s1_bid           (s1_bid              ),
		.s1_bresp         (s1_bresp            ),
		.s1_bvalid        (s1_bvalid           ),
		.s1_bready        (s1_bready           ),
		.s1_arid          (s1_arid             ),
		.s1_araddr        (s1_araddr           ),
		.s1_arlen         (s1_arlen            ),
		.s1_arsize        (s1_arsize           ),
		.s1_arburst       (s1_arburst          ),
		.s1_arlock        (s1_arlock           ),
		.s1_arcache       (s1_arcache          ),
		.s1_arprot        (s1_arprot           ),
		.s1_arvalid       (s1_arvalid          ),
		.s1_arready       (s1_arready          ),
		.s1_rid           (s1_rid              ),
		.s1_rdata         (s1_rdata            ),
		.s1_rresp         (s1_rresp            ),
		.s1_rlast         (s1_rlast            ),
		.s1_rvalid        (s1_rvalid           ),
		.s1_rready        (s1_rready           )
    );


    axi_axil_adapter # (
        .ADDR_WIDTH       (`s1_axil_Laddr      ),
        .AXI_DATA_WIDTH   (`s1_axi_Ldata       ),
        .AXI_ID_WIDTH     (`s1_axil_LID        ),
        .AXIL_DATA_WIDTH  (`s1_axil_Ldata      )
    ) s1_axi_axil (
        .clk              (clk_osc             ),
        .rst              (~sys_resetn         ),

        .s_axi_awid       (s1_awid             ),
        .s_axi_awaddr     (s1_awaddr           ),
        .s_axi_awlen      (s1_awlen            ),
        .s_axi_awsize     (s1_awsize           ),
        .s_axi_awburst    (s1_awburst          ),
        .s_axi_awlock     (s1_awlock           ),
        .s_axi_awcache    (s1_awcache          ),
        .s_axi_awprot     (s1_awprot           ),
        .s_axi_awvalid    (s1_awvalid          ),
        .s_axi_awready    (s1_awready          ),
        .s_axi_wdata      (s1_wdata            ),
        .s_axi_wstrb      (s1_wstrb            ),
        .s_axi_wlast      (s1_wlast            ),
        .s_axi_wvalid     (s1_wvalid           ),
        .s_axi_wready     (s1_wready           ),
        .s_axi_bid        (s1_bid              ),
        .s_axi_bresp      (s1_bresp            ),
        .s_axi_bvalid     (s1_bvalid           ),
        .s_axi_bready     (s1_bready           ),
        .s_axi_arid       (s1_arid             ),
        .s_axi_araddr     (s1_araddr           ),
        .s_axi_arlen      (s1_arlen            ),
        .s_axi_arsize     (s1_arsize           ),
        .s_axi_arburst    (s1_arburst          ),
        .s_axi_arlock     (s1_arlock           ),
        .s_axi_arcache    (s1_arcache          ),
        .s_axi_arprot     (s1_arprot           ),
        .s_axi_arvalid    (s1_arvalid          ),
        .s_axi_arready    (s1_arready          ),
        .s_axi_rid        (s1_rid              ),
        .s_axi_rdata      (s1_rdata            ),
        .s_axi_rresp      (s1_rresp            ),
        .s_axi_rlast      (s1_rlast            ),
        .s_axi_rvalid     (s1_rvalid           ),
        .s_axi_rready     (s1_rready           ),

        .m_axil_awaddr    (m1_axil_awaddr      ),
        .m_axil_awprot    (m1_axil_awprot      ),
        .m_axil_awvalid   (m1_axil_awvalid     ),
        .m_axil_awready   (m1_axil_awready     ),
        .m_axil_wdata     (m1_axil_wdata       ),
        .m_axil_wstrb     (m1_axil_wstrb       ),
        .m_axil_wvalid    (m1_axil_wvalid      ),
        .m_axil_wready    (m1_axil_wready      ),
        .m_axil_bresp     (m1_axil_bresp       ),
        .m_axil_bvalid    (m1_axil_bvalid      ),
        .m_axil_bready    (m1_axil_bready      ),
        .m_axil_araddr    (m1_axil_araddr      ),
        .m_axil_arprot    (m1_axil_arprot      ),
        .m_axil_arvalid   (m1_axil_arvalid     ),
        .m_axil_arready   (m1_axil_arready     ),
        .m_axil_rdata     (m1_axil_rdata       ),
        .m_axil_rresp     (m1_axil_rresp       ),
        .m_axil_rvalid    (m1_axil_rvalid      ),
        .m_axil_rready    (m1_axil_rready      )
    );


    LED_driver # (
        .C_S00_AXI_DATA_WIDTH   (`s1_axil_Ldata),
        .C_S00_AXI_ADDR_WIDTH   (`s1_axil_Laddr)
    ) LED_driver_inst (
        .s00_axi_aclk     (clk_8M              ),
        .s00_axi_aresetn  (sys_resetn          ),

        .led              (led                 ),

        .s00_axi_awaddr   (m1_axil_awaddr      ),
        .s00_axi_awprot   (m1_axil_awprot      ),
        .s00_axi_awvalid  (m1_axil_awvalid     ),
        .s00_axi_awready  (m1_axil_awready     ),
        .s00_axi_wdata    (m1_axil_wdata       ),
        .s00_axi_wstrb    (m1_axil_wstrb       ),
        .s00_axi_wvalid   (m1_axil_wvalid      ),
        .s00_axi_wready   (m1_axil_wready      ),
        .s00_axi_bresp    (m1_axil_bresp       ),
        .s00_axi_bvalid   (m1_axil_bvalid      ),
        .s00_axi_bready   (m1_axil_bready      ),
        .s00_axi_araddr   (m1_axil_araddr      ),
        .s00_axi_arprot   (m1_axil_arprot      ),
        .s00_axi_arvalid  (m1_axil_arvalid     ),
        .s00_axi_arready  (m1_axil_arready     ),
        .s00_axi_rdata    (m1_axil_rdata       ),
        .s00_axi_rresp    (m1_axil_rresp       ),
        .s00_axi_rvalid   (m1_axil_rvalid      ),
        .s00_axi_rready   (m1_axil_rready      )
    );
endmodule
