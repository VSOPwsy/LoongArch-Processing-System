`timescale 1ns / 1ps

`include"config.v"

module TOP (
	input			clk_osc,
	input			sys_resetn,

	output	[3:0]	led,

	input 			RsRx,
	output 			RsTx,


	inout	[15:0]	ddr_dq,
	inout	[1:0]	ddr_dqs,
	inout	[1:0]	ddr_dqs_n,
	output	[13:0]	ddr_addr,
	output	[2:0]	ddr_bank,
	output			ddr_cs,
	output			ddr_ras,
	output			ddr_cas,
	output			ddr_we,
	output			ddr_ck,
	output			ddr_ck_n,
	output			ddr_cke,
	output			ddr_odt,
	output			ddr_reset_n,
	output	[1:0]	ddr_dm,

	input			sd_miso,
	output			sd_clk,
	output			sd_cs,
	output			sd_mosi
);

    wire locked0, locked1, locked2;
    wire locked;
    wire clk_8M, clk_50M, clk_100M, clk_400M;
    assign locked = locked0 & locked1 & locked2;
	assign clk_50M = clk_osc;

	wire ddr_ui_clk;

    /*
     * For GW5A
     */
//    Gowin_PLL PLL (
//        .lock	(locked), //output lock
//        .clkout0	(clk_8M), //output clkout0
//        .clkin	(clk_osc), //input clkin
//        .reset	(~sys_resetn) //input reset
//    );

    /*
     * For GW2A
     */
    Gowin_rPLL PLL (
        .clkout	(clk_8M), //output clkout
        .lock	(locked0), //output lock
        .reset	(~sys_resetn), //input reset
        .clkin	(clk_osc) //input clkin
    );

    
    Gowin_rPLL_100M PLL_100M(
        .clkout	(clk_100M), //output clkout
        .lock	(locked1), //output lock
        .reset	(~sys_resetn), //input reset
        .clkin	(clk_osc) //input clkin
    );


    Gowin_rPLL_400M PLL_400M(
        .clkout	(clk_400M), //output clkout
        .lock	(locked2), //output lock
        .reset	(~sys_resetn), //input reset
        .clkin	(clk_osc) //input clkin
    );


    wire [31:0]               	fetch_pc;
	wire                      	sleeping_o;
    wire                      	can_high_freq;
	wire [31:0]               	debug_pc;
    wire [5:0]                	interrupt;

	wire [`ID_WIDTH      -1 :0] cpu_awid;
	wire [`ADDR_WIDTH    -1 :0] cpu_awaddr;
	wire [`LEN_WIDTH     -1 :0] cpu_awlen;
	wire [`SIZE_WIDTH    -1 :0] cpu_awsize;
	wire [`BURST_WIDTH   -1 :0] cpu_awburst;
	wire [`LOCK_WIDTH    -1 :0] cpu_awlock;
	wire [`CACHE_WIDTH   -1 :0] cpu_awcache;
	wire [`PROT_WIDTH    -1 :0] cpu_awprot;
	wire                      	cpu_awvalid;
	wire                      	cpu_awready;
	wire [`ID_WIDTH      -1 :0] cpu_wid;
	wire [`CPU_DATA_WIDTH-1 :0] cpu_wdata;
	wire [`CPU_STRB_WIDTH-1 :0] cpu_wstrb;
	wire                      	cpu_wlast;
	wire                      	cpu_wvalid;
	wire                      	cpu_wready;
	wire [`ID_WIDTH      -1 :0] cpu_bid;
	wire [`RESP_WIDTH   -1 :0 ]	cpu_bresp;
	wire                      	cpu_bvalid;
	wire                      	cpu_bready;
	wire [`ID_WIDTH      -1 :0] cpu_arid;
	wire [`ADDR_WIDTH    -1 :0] cpu_araddr;
	wire [`LEN_WIDTH     -1 :0] cpu_arlen;
	wire [`SIZE_WIDTH    -1 :0] cpu_arsize;
	wire [`BURST_WIDTH   -1 :0] cpu_arburst;
	wire [`LOCK_WIDTH    -1 :0] cpu_arlock;
	wire [`CACHE_WIDTH   -1 :0] cpu_arcache;
	wire [`PROT_WIDTH    -1 :0] cpu_arprot;
	wire                      	cpu_arvalid;
	wire                      	cpu_arready;
	wire [`ID_WIDTH      -1 :0] cpu_rid;
	wire [`CPU_DATA_WIDTH-1 :0] cpu_rdata;
	wire [`RESP_WIDTH    -1 :0] cpu_rresp;
	wire                      	cpu_rlast;
	wire                      	cpu_rvalid;
	wire                      	cpu_rready;

	wire                      	inst_sram_en;
	wire [ 3:0]               	inst_sram_strb;
	wire [31:0]               	inst_sram_wdata;
	wire [31:0]               	inst_sram_rdata;
	wire                      	inst_sram_wr;
	wire                      	inst_sram_fetch;
	wire [31:0]               	inst_sram_addr;
	wire                      	inst_sram_rrdy = 1'b1;
	wire                      	inst_sram_ack  = 1'b1;
	wire                      	inst_sram_resp = 1'b0;

	wire                      	data_sram_en;
	wire [ 3:0]               	data_sram_strb;
	wire [31:0]               	data_sram_wdata;
	wire [31:0]               	data_sram_rdata;
	wire                      	data_sram_wr;
	wire                      	data_sram_fetch;
	wire [31:0]               	data_sram_addr;
	wire                      	data_sram_rrdy = 1'b1;
	wire                      	data_sram_ack  = 1'b1;
	wire                      	data_sram_resp = 1'b0;

	wire						timer_int;
	wire						i2c_int;
	wire						uart1_int;
	wire						uart0_int;
	wire						flash_int;
	wire						spi_int;
	wire						vpwm_int;
	wire						dma_int;

	wire [`ID_WIDTH      -1 :0] axi2apb_awid;
	wire [`ADDR_WIDTH    -1 :0] axi2apb_awaddr;
	wire [`LEN_WIDTH     -1 :0] axi2apb_awlen;
	wire [`SIZE_WIDTH    -1 :0] axi2apb_awsize;
	wire [`BURST_WIDTH   -1 :0] axi2apb_awburst;
	wire [`LOCK_WIDTH    -1 :0] axi2apb_awlock;
	wire [`CACHE_WIDTH   -1 :0] axi2apb_awcache;
	wire [`PROT_WIDTH    -1 :0] axi2apb_awprot;
	wire                      	axi2apb_awvalid;
	wire                      	axi2apb_awready;
	wire [`CPU_DATA_WIDTH-1 :0] axi2apb_wdata;
	wire [`CPU_STRB_WIDTH-1 :0] axi2apb_wstrb;
	wire                      	axi2apb_wlast;
	wire                      	axi2apb_wvalid;
	wire                      	axi2apb_wready;
	wire [`ID_WIDTH      -1 :0] axi2apb_bid;
	wire [`RESP_WIDTH    -1 :0] axi2apb_bresp;
	wire                      	axi2apb_bvalid;
	wire                      	axi2apb_bready;
	wire [`ID_WIDTH      -1 :0] axi2apb_arid;
	wire [`ADDR_WIDTH    -1 :0] axi2apb_araddr;
	wire [`LEN_WIDTH     -1 :0] axi2apb_arlen;
	wire [`SIZE_WIDTH    -1 :0] axi2apb_arsize;
	wire [`BURST_WIDTH   -1 :0] axi2apb_arburst;
	wire [`LOCK_WIDTH    -1 :0] axi2apb_arlock;
	wire [`CACHE_WIDTH   -1 :0] axi2apb_arcache;
	wire [`PROT_WIDTH    -1 :0] axi2apb_arprot;
	wire                      	axi2apb_arvalid;
	wire                      	axi2apb_arready;
	wire [`ID_WIDTH      -1 :0] axi2apb_rid;
	wire [`CPU_DATA_WIDTH-1 :0] axi2apb_rdata;
	wire [`RESP_WIDTH    -1 :0] axi2apb_rresp;
	wire                      	axi2apb_rlast;
	wire                      	axi2apb_rvalid;
	wire                      	axi2apb_rready;

	wire 					  	apb_clk;
	wire  					  	apb_reset_n;
	wire                      	apb_psel;
	wire                      	apb_rw;
	wire [`ADDR_WIDTH    -1 :0] apb_addr;
	wire                      	apb_enable;
	wire [`APB_DATA_WIDTH-1 :0] apb_datai;
	wire [`APB_DATA_WIDTH-1 :0] apb_datao;
	wire                      	apb_ready;

	wire                      	apb0_psel;
	wire                      	apb0_rw;
	wire [`ADDR_WIDTH    -1 :0] apb0_addr;
	wire                      	apb0_enab;
	wire [`APB_DATA_WIDTH-1 :0] apb0_datai;
	wire [`APB_DATA_WIDTH-1 :0] apb0_datao;
	wire                      	apb0_ack;

	wire                      	apb1_psel;
	wire                      	apb1_rw;
	wire [`ADDR_WIDTH    -1 :0] apb1_addr;
	wire                      	apb1_enab;
	wire [`APB_DATA_WIDTH-1 :0] apb1_datai;
	wire [`APB_DATA_WIDTH-1 :0] apb1_datao;
	wire                      	apb1_ack;

	wire                      	apb2_psel;
	wire                      	apb2_rw;
	wire [`ADDR_WIDTH    -1 :0] apb2_addr;
	wire                      	apb2_enab;
	wire [`APB_DATA_WIDTH-1 :0] apb2_datai;
	wire [`APB_DATA_WIDTH-1 :0] apb2_datao;
	wire                      	apb2_ack;

	wire [`ID_WIDTH      -1 :0] cpu_arb_32_awid;
	wire [`ADDR_WIDTH    -1 :0] cpu_arb_32_awaddr;
	wire [`LEN_WIDTH     -1 :0] cpu_arb_32_awlen;
	wire [`SIZE_WIDTH    -1 :0] cpu_arb_32_awsize;
	wire [`BURST_WIDTH   -1 :0] cpu_arb_32_awburst;
	wire [`LOCK_WIDTH    -1 :0] cpu_arb_32_awlock;
	wire [`CACHE_WIDTH   -1 :0] cpu_arb_32_awcache;
	wire [`PROT_WIDTH    -1 :0] cpu_arb_32_awprot;
	wire                      	cpu_arb_32_awvalid;
	wire                      	cpu_arb_32_awready;
	wire [`CPU_DATA_WIDTH-1 :0] cpu_arb_32_wdata;
	wire [`CPU_STRB_WIDTH-1 :0] cpu_arb_32_wstrb;
	wire                      	cpu_arb_32_wlast;
	wire                      	cpu_arb_32_wvalid;
	wire                      	cpu_arb_32_wready;
	wire [`ID_WIDTH      -1 :0] cpu_arb_32_bid;
	wire [`RESP_WIDTH    -1 :0] cpu_arb_32_bresp;
	wire                      	cpu_arb_32_bvalid;
	wire                      	cpu_arb_32_bready;
	wire [`ID_WIDTH      -1 :0] cpu_arb_32_arid;
	wire [`ADDR_WIDTH    -1 :0] cpu_arb_32_araddr;
	wire [`LEN_WIDTH     -1 :0] cpu_arb_32_arlen;
	wire [`SIZE_WIDTH    -1 :0] cpu_arb_32_arsize;
	wire [`BURST_WIDTH   -1 :0] cpu_arb_32_arburst;
	wire [`LOCK_WIDTH    -1 :0] cpu_arb_32_arlock;
	wire [`CACHE_WIDTH   -1 :0] cpu_arb_32_arcache;
	wire [`PROT_WIDTH    -1 :0] cpu_arb_32_arprot;
	wire                      	cpu_arb_32_arvalid;
	wire                      	cpu_arb_32_arready;
	wire [`ID_WIDTH      -1 :0] cpu_arb_32_rid;
	wire [`ADDR_WIDTH    -1 :0] cpu_arb_32_rdata;
	wire [`RESP_WIDTH    -1 :0] cpu_arb_32_rresp;
	wire                      	cpu_arb_32_rlast;
	wire                      	cpu_arb_32_rvalid;
	wire                      	cpu_arb_32_rready;

	wire [`ID_WIDTH      -1 :0] cpu_arb_128_awid;
	wire [`ADDR_WIDTH    -1 :0] cpu_arb_128_awaddr;
	wire [`LEN_WIDTH     -1 :0] cpu_arb_128_awlen;
	wire [`SIZE_WIDTH    -1 :0] cpu_arb_128_awsize;
	wire [`BURST_WIDTH   -1 :0] cpu_arb_128_awburst;
	wire [`LOCK_WIDTH    -1 :0] cpu_arb_128_awlock;
	wire [`CACHE_WIDTH   -1 :0] cpu_arb_128_awcache;
	wire [`PROT_WIDTH    -1 :0] cpu_arb_128_awprot;
	wire                      	cpu_arb_128_awvalid;
	wire                      	cpu_arb_128_awready;
	wire [`DDR_DATA_WIDTH-1 :0] cpu_arb_128_wdata;
	wire [`DDR_STRB_WIDTH-1 :0] cpu_arb_128_wstrb;
	wire                      	cpu_arb_128_wlast;
	wire                      	cpu_arb_128_wvalid;
	wire                      	cpu_arb_128_wready;
	wire [`ID_WIDTH      -1 :0] cpu_arb_128_bid;
	wire [`RESP_WIDTH    -1 :0] cpu_arb_128_bresp;
	wire                      	cpu_arb_128_bvalid;
	wire                      	cpu_arb_128_bready;
	wire [`ID_WIDTH      -1 :0] cpu_arb_128_arid;
	wire [`ADDR_WIDTH    -1 :0] cpu_arb_128_araddr;
	wire [`LEN_WIDTH     -1 :0] cpu_arb_128_arlen;
	wire [`SIZE_WIDTH    -1 :0] cpu_arb_128_arsize;
	wire [`BURST_WIDTH   -1 :0] cpu_arb_128_arburst;
	wire [`LOCK_WIDTH    -1 :0] cpu_arb_128_arlock;
	wire [`CACHE_WIDTH   -1 :0] cpu_arb_128_arcache;
	wire [`PROT_WIDTH    -1 :0] cpu_arb_128_arprot;
	wire                      	cpu_arb_128_arvalid;
	wire                      	cpu_arb_128_arready;
	wire [`ID_WIDTH      -1 :0] cpu_arb_128_rid;
	wire [`DDR_DATA_WIDTH-1 :0] cpu_arb_128_rdata;
	wire [`RESP_WIDTH    -1 :0] cpu_arb_128_rresp;
	wire                      	cpu_arb_128_rlast;
	wire                      	cpu_arb_128_rvalid;
	wire                      	cpu_arb_128_rready;

	wire [`ID_WIDTH      -1 :0] arb_ctr_awid;
	wire [`ADDR_WIDTH    -1 :0] arb_ctr_awaddr;
	wire [7:0]               	arb_ctr_awlen;
	wire [2:0]               	arb_ctr_awsize;
	wire [1:0]               	arb_ctr_awburst;
	wire                     	arb_ctr_awlock;
	wire [3:0]               	arb_ctr_awcache;
	wire [2:0]               	arb_ctr_awprot;
	wire                      	arb_ctr_awvalid;
	wire                      	arb_ctr_awready;
	wire [`DDR_DATA_WIDTH-1 :0] arb_ctr_wdata;
	wire [`DDR_STRB_WIDTH-1 :0] arb_ctr_wstrb;
	wire                     	arb_ctr_wlast;
	wire                     	arb_ctr_wvalid;
	wire                     	arb_ctr_wready;
	wire [`DDR_ARB_ID_WIDTH-1:0]arb_ctr_bid;
	wire [1:0]               	arb_ctr_bresp;
	wire                     	arb_ctr_bvalid;
	wire                     	arb_ctr_bready;
	wire [`DDR_ARB_ID_WIDTH-1:0]arb_ctr_arid;
	wire [`ADDR_WIDTH	 -1 :0] arb_ctr_araddr;
	wire [7:0]               	arb_ctr_arlen;
	wire [2:0]               	arb_ctr_arsize;
	wire [1:0]               	arb_ctr_arburst;
	wire                     	arb_ctr_arlock;
	wire [3:0]               	arb_ctr_arcache;
	wire [2:0]               	arb_ctr_arprot;
	wire                     	arb_ctr_arvalid;
	wire                     	arb_ctr_arready;
	wire [`DDR_ARB_ID_WIDTH-1:0]arb_ctr_rid;
	wire [`DDR_DATA_WIDTH-1 :0] arb_ctr_rdata;
	wire [1:0]               	arb_ctr_rresp;
	wire                     	arb_ctr_rlast;
	wire                     	arb_ctr_rvalid;
	wire                     	arb_ctr_rready;

	wire						init_calib_complete;


	wire						ml_app_rdy;
	wire						ml_app_cmd_en;
	wire [`ADDR_WIDTH	 -1 :0] ml_app_addr;
	wire						ml_app_wdf_rdy;
	wire [`DDR_DATA_WIDTH-1 :0] ml_app_wdf_data;
	wire [`DDR_STRB_WIDTH-1 :0] ml_app_wdf_mask;
	wire						ml_app_wdf_wren;

	wire						init_model_complete;

	assign int

    la132_top CPU (
		.boot_pc			(32'h1c000000			),
		.clk				(clk_8M					),
		.clk_count			(clk_8M					),
		.hard_resetn		(locked&sys_resetn		),
		.soft_resetn		(locked&sys_resetn		),

		.sleeping			(sleeping_o				),
        .can_high_freq		(can_high_freq			),
		.cpu_fetch_pc		(fetch_pc				),
		.wb_pc				(debug_pc				),
		.mode_lisa			(1'b1					), 
		.inst_xor			(32'b0					),

		.nmi				(1'b0					),
		.ext_int			(interrupt				),

		.arid				(cpu_arid[3:0]			),
		.araddr				(cpu_araddr				),
		.arlen				(cpu_arlen				),
		.arsize				(cpu_arsize				),
		.arburst			(cpu_arburst			),
		.arlock				(cpu_arlock				),
		.arcache			(cpu_arcache			),
		.arprot				(cpu_arprot				),
		.arvalid			(cpu_arvalid			),
		.arready			(cpu_arready			),

		.rid				(cpu_rid[3:0]			),
		.rdata				(cpu_rdata				),
		.rresp				(cpu_rresp				),
		.rlast				(cpu_rlast				),
		.rvalid				(cpu_rvalid				),
		.rready				(cpu_rready				),

		.awid				(cpu_awid[3:0]			),
		.awaddr				(cpu_awaddr				),
		.awlen				(cpu_awlen				),
		.awsize				(cpu_awsize				),
		.awburst			(cpu_awburst			),
		.awlock				(cpu_awlock				),
		.awcache			(cpu_awcache			),
		.awprot				(cpu_awprot				),
		.awvalid			(cpu_awvalid			),
		.awready			(cpu_awready			),

		.wid				(cpu_wid[3:0]			),
		.wdata				(cpu_wdata				),
		.wstrb				(cpu_wstrb				),
		.wlast				(cpu_wlast				),
		.wvalid				(cpu_wvalid				),
		.wready				(cpu_wready				),

		.bid				(cpu_bid[3:0]			),
		.bresp				(cpu_bresp				),
		.bvalid				(cpu_bvalid				),
		.bready				(cpu_bready				),

		.inst_sram_en		(inst_sram_en			),
		.inst_sram_wr		(inst_sram_wr			),
		.inst_sram_fetch	(inst_sram_fetch		),
		.inst_sram_strb		(inst_sram_strb			),
		.inst_sram_addr		(inst_sram_addr			),
		.inst_sram_wdata	(inst_sram_wdata		),
		.inst_sram_rdata	(inst_sram_rdata		),
		.inst_sram_ack		(inst_sram_ack			),
		.inst_sram_rrdy		(inst_sram_rrdy			),
		.inst_sram_resp		(inst_sram_resp			),

		.data_sram_en		(data_sram_en			),
		.data_sram_wr		(data_sram_wr			),
		.data_sram_fetch	(data_sram_fetch		),
		.data_sram_strb		(data_sram_strb			),
		.data_sram_addr		(data_sram_addr			),
		.data_sram_wdata	(data_sram_wdata		),
		.data_sram_rdata	(data_sram_rdata		),
		.data_sram_ack		(data_sram_ack			),
		.data_sram_rrdy		(data_sram_rrdy			),
		.data_sram_resp		(data_sram_resp			),

		.trstn				(ljtag_trst_i			),
		.tck				(ljtag_tck_i			),
		.tdi				(ljtag_tdi_i			),
		.tms				(ljtag_tms_i			),
		.tdo				(ljtag_tdo_o			),
		.ljtag_prrst		(ljtag_prrst_src		),
		.ljtag_lock			(1'b0					),

		.prid_revision		(4'd0					),
		.cpunum				(10'b0					),

		.ibus0_valid		(1'b1					),
		.ibus0_base			(32'h1c00_0000			), // va: 1c00_0000 & bfc0_0000
		.ibus0_mask			(32'h1f00_0000			), // flash 128K, + 4 special page
		.ibus1_valid		(1'b1					),
		.ibus1_base			(32'h9f00_0000			), // va: 9fR0_0000 & bf00_0000
		.ibus1_mask			(32'hdff0_0000			),
		.ibus2_valid		(1'b0					), // flash_en
		.ibus2_base			(32'h9fe6_0000			), // va: 9fe6_0000 & bfe6_0000
		.ibus2_mask			(32'hdfff_ff00			),
		.ibus3_valid		(1'b0					), // compact_mem&flash_en),
		.ibus3_base			(32'h8000_3000			), // for va: 8000_30xx & 0000_00xx -> pa: 0000_30xx & 4000_00xx
		.ibus3_mask			(32'h7fff_ff00			),
		.dbus0_valid		(1'b1					),
		.dbus0_base			(32'h8000_0000			),
		.dbus0_mask			(32'hdfff_e000			), // 8K byte, for va: 8000_0000 & a000_0000 -> pa: 0000_0000
		.dbus1_valid		(1'b1					),
		.dbus1_base			(32'h0000_0000			),
		.dbus1_mask			(32'hffff_e000			), // 8K byte, for va: 0000_0000             -> pa: 0000_0000
		.dbus2_valid		(1'b0					), // unused
		.dbus2_base			(32'h0000_0000			),
		.dbus2_mask			(32'h0000_0000			),
		.dbus3_valid		(1'b0					), // unused
		.dbus3_base			(32'h0000_0000			),
		.dbus3_mask			(32'h0000_0000			),

		.test_mode			(1'b0					)
	);

    Gowin_SP_Instr IRAM (
        .dout				(inst_sram_rdata		), //output [31:0] dout
        .clk				(clk_8M					), //input clk
        .oce				(inst_sram_en			), //input oce
        .ce					(inst_sram_en			), //input ce
        .reset				(~(locked&sys_resetn)	), //input reset
        .wre				(inst_sram_wr			), //input wre
        .ad					(inst_sram_addr[31:2]	), //input [11:0] ad
        .din				(inst_sram_wdata		) //input [31:0] din
    );


    Gowin_SP_Data DRAM (
        .dout				(data_sram_rdata		), //output [31:0] dout
        .clk				(clk_8M					), //input clk
        .oce				(data_sram_en			), //input oce
        .ce					(data_sram_en			), //input ce
        .reset				(~(locked&sys_resetn)	), //input reset
        .wre				(data_sram_wr			), //input wre
        .ad					(data_sram_addr[31:2]	), //input [11:0] ad
        .din				(data_sram_wdata		) //input [31:0] din
    );
    

	axicb_crossbar_top # (
		.AXI_ADDR_W			(`ADDR_WIDTH			),
		.AXI_ID_W			(`ID_WIDTH				),
		.AXI_DATA_W			(`CPU_DATA_WIDTH		),
		
		.MST0_CDC			(1						),
		.MST0_OSTDREQ_NUM	(0						),
		.MST0_PRIORITY		(0						),

		.SLV0_CDC			(0						),
		.SLV0_START_ADDR	(`APB_ADDR_BASE			),
		.SLV0_END_ADDR		(`APB_ADDR_END			),
		.SLV0_OSTDREQ_NUM	(0						),
		.SLV0_KEEP_BASE_ADDR(1						),

		.SLV1_CDC			(0						),
		.SLV1_START_ADDR	(`DDR_ADDR_BASE			),
		.SLV1_END_ADDR		(`DDR_ADDR_END			),
		.SLV1_OSTDREQ_NUM	(0						),
		.SLV1_KEEP_BASE_ADDR(1						)
	) AXI_Crossbar (
		.aclk				(clk_100M				),
		.aresetn			(locked&sys_resetn		),
		.srst				(~(locked&sys_resetn)	),
		.slv0_aclk			(clk_8M					),
		.slv0_aresetn		(locked&sys_resetn		),
		.slv0_srst			(~(locked&sys_resetn)	),
		.slv0_awvalid		(cpu_awvalid			),
		.slv0_awready		(cpu_awready			),
		.slv0_awaddr		(cpu_awaddr				),
		.slv0_awlen			(cpu_awlen				),
		.slv0_awsize		(cpu_awsize				),
		.slv0_awburst		(cpu_awburst			),
		.slv0_awlock		(cpu_awlock				),
		.slv0_awcache		(cpu_awcache			),
		.slv0_awprot		(cpu_awprot				),
		.slv0_awid			(cpu_awid				),
		.slv0_wvalid		(cpu_wvalid				),
		.slv0_wready		(cpu_wready				),
		.slv0_wlast			(cpu_wlast				),
		.slv0_wdata			(cpu_wdata				),
		.slv0_wstrb			(cpu_wstrb				),
		.slv0_bvalid		(cpu_bvalid				),
		.slv0_bready		(cpu_bready				),
		.slv0_bid			(cpu_bid				),
		.slv0_bresp			(cpu_bresp				),
		.slv0_arvalid		(cpu_arvalid			),
		.slv0_arready		(cpu_arready			),
		.slv0_araddr		(cpu_araddr				),
		.slv0_arlen			(cpu_arlen				),
		.slv0_arsize		(cpu_arsize				),
		.slv0_arburst		(cpu_arburst			),
		.slv0_arlock		(cpu_arlock				),
		.slv0_arcache		(cpu_arcache			),
		.slv0_arprot		(cpu_arprot				),
		.slv0_arid			(cpu_arid				),
		.slv0_rvalid		(cpu_rvalid				),
		.slv0_rready		(cpu_rready				),
		.slv0_rid			(cpu_rid				),
		.slv0_rresp			(cpu_rresp				),
		.slv0_rdata			(cpu_rdata				),
		.slv0_rlast			(cpu_rlast				),

		
		.mst0_aclk			(clk_100M				),
		.mst0_aresetn		(locked&sys_resetn		),
		.mst0_srst			(~(locked&sys_resetn)	),
		.mst0_awvalid		(axi2apb_awvalid		),
		.mst0_awready		(axi2apb_awready		),
		.mst0_awaddr		(axi2apb_awaddr			),
		.mst0_awlen			(axi2apb_awlen			),
		.mst0_awsize		(axi2apb_awsize			),
		.mst0_awburst		(axi2apb_awburst		),
		.mst0_awlock		(axi2apb_awlock			),
		.mst0_awcache		(axi2apb_awcache		),
		.mst0_awprot		(axi2apb_awprot			),
		.mst0_awid			(axi2apb_awid			),
		.mst0_wvalid		(axi2apb_wvalid			),
		.mst0_wready		(axi2apb_wready			),
		.mst0_wlast			(axi2apb_wlast			),
		.mst0_wdata			(axi2apb_wdata			),
		.mst0_wstrb			(axi2apb_wstrb			),
		.mst0_bvalid		(axi2apb_bvalid			),
		.mst0_bready		(axi2apb_bready			),
		.mst0_bid			(axi2apb_bid			),
		.mst0_bresp			(axi2apb_bresp			),
		.mst0_arvalid		(axi2apb_arvalid		),
		.mst0_arready		(axi2apb_arready		),
		.mst0_araddr		(axi2apb_araddr			),
		.mst0_arlen			(axi2apb_arlen			),
		.mst0_arsize		(axi2apb_arsize			),
		.mst0_arburst		(axi2apb_arburst		),
		.mst0_arlock		(axi2apb_arlock			),
		.mst0_arcache		(axi2apb_arcache		),
		.mst0_arprot		(axi2apb_arprot			),
		.mst0_arid			(axi2apb_arid			),
		.mst0_rvalid		(axi2apb_rvalid			),
		.mst0_rready		(axi2apb_rready			),
		.mst0_rid			(axi2apb_rid			),
		.mst0_rresp			(axi2apb_rresp			),
		.mst0_rdata			(axi2apb_rdata			),
		.mst0_rlast			(axi2apb_rlast			),


		.mst1_aclk			(clk_100M				),
		.mst1_aresetn		(locked&sys_resetn		),
		.mst1_srst			(~(locked&sys_resetn)	),
		.mst1_awvalid		(cpu_arb_32_awvalid		),
		.mst1_awready		(cpu_arb_32_awready		),
		.mst1_awaddr		(cpu_arb_32_awaddr		),
		.mst1_awlen			(cpu_arb_32_awlen		),
		.mst1_awsize		(cpu_arb_32_awsize		),
		.mst1_awburst		(cpu_arb_32_awburst		),
		.mst1_awlock		(cpu_arb_32_awlock		),
		.mst1_awcache		(cpu_arb_32_awcache		),
		.mst1_awprot		(cpu_arb_32_awprot		),
		.mst1_awid			(cpu_arb_32_awid		),
		.mst1_wvalid		(cpu_arb_32_wvalid		),
		.mst1_wready		(cpu_arb_32_wready		),
		.mst1_wlast			(cpu_arb_32_wlast		),
		.mst1_wdata			(cpu_arb_32_wdata		),
		.mst1_wstrb			(cpu_arb_32_wstrb		),
		.mst1_bvalid		(cpu_arb_32_bvalid		),
		.mst1_bready		(cpu_arb_32_bready		),
		.mst1_bid			(cpu_arb_32_bid			),
		.mst1_bresp			(cpu_arb_32_bresp		),
		.mst1_arvalid		(cpu_arb_32_arvalid		),
		.mst1_arready		(cpu_arb_32_arready		),
		.mst1_araddr		(cpu_arb_32_araddr		),
		.mst1_arlen			(cpu_arb_32_arlen		),
		.mst1_arsize		(cpu_arb_32_arsize		),
		.mst1_arburst		(cpu_arb_32_arburst		),
		.mst1_arlock		(cpu_arb_32_arlock		),
		.mst1_arcache		(cpu_arb_32_arcache		),
		.mst1_arprot		(cpu_arb_32_arprot		),
		.mst1_arid			(cpu_arb_32_arid		),
		.mst1_rvalid		(cpu_arb_32_rvalid		),
		.mst1_rready		(cpu_arb_32_rready		),
		.mst1_rid			(cpu_arb_32_rid			),
		.mst1_rresp			(cpu_arb_32_rresp		),
		.mst1_rdata			(cpu_arb_32_rdata		),
		.mst1_rlast			(cpu_arb_32_rlast		)
	);



	/*
	 * AXI SLAVE 0
	 */
	axi2apb_bridge apb (
		.clk				(clk_100M				),
		.rst_n				(locked&sys_resetn		),
		.axi_s_awid			(axi2apb_awid			),
		.axi_s_awaddr		(axi2apb_awaddr			),
		.axi_s_awlen		(axi2apb_awlen			),
		.axi_s_awsize		(axi2apb_awsize			),
		.axi_s_awburst		(axi2apb_awburst		),
		.axi_s_awlock		(axi2apb_awlock			),
		.axi_s_awcache		(axi2apb_awcache		),
		.axi_s_awprot		(axi2apb_awprot			),
		.axi_s_awvalid		(axi2apb_awvalid		),
		.axi_s_awready		(axi2apb_awready		),

		.axi_s_wid			(axi2apb_wid			),
		.axi_s_wdata		(axi2apb_wdata			),
		.axi_s_wstrb		(axi2apb_wstrb			),
		.axi_s_wlast		(axi2apb_wlast			),
		.axi_s_wvalid		(axi2apb_wvalid			),
		.axi_s_wready		(axi2apb_wready			),

		.axi_s_bid			(axi2apb_bid			),
		.axi_s_bresp		(axi2apb_bresp			),
		.axi_s_bvalid		(axi2apb_bvalid			),
		.axi_s_bready		(axi2apb_bready			),

		.axi_s_arid			(axi2apb_arid			),
		.axi_s_araddr		(axi2apb_araddr			),
		.axi_s_arlen		(axi2apb_arlen			),
		.axi_s_arsize		(axi2apb_arsize			),
		.axi_s_arburst		(axi2apb_arburst		),
		.axi_s_arlock		(axi2apb_arlock			),
		.axi_s_arcache		(axi2apb_arcache		),
		.axi_s_arprot		(axi2apb_arprot			),
		.axi_s_arvalid		(axi2apb_arvalid		),
		.axi_s_arready		(axi2apb_arready		),

		.axi_s_rid			(axi2apb_rid			),
		.axi_s_rdata		(axi2apb_rdata			),
		.axi_s_rresp		(axi2apb_rresp			),
		.axi_s_rlast		(axi2apb_rlast			),
		.axi_s_rvalid		(axi2apb_rvalid			),
		.axi_s_rready		(axi2apb_rready			),

		.apb_clk			(apb_clk				),
		.apb_reset_n		(apb_reset_n			),
		.reg_psel			(apb_psel				),
		.reg_rw				(apb_rw					),
		.reg_addr			(apb_addr				),
		.reg_enable			(apb_enable				),
		.reg_datai			(apb_datai				),
		.reg_datao			(apb_datao				),
		.reg_ready_1		(apb_ready				)
	);


	apb_mux9 apb_mux (
		.apb_psel_cpu		(apb_psel				),
		.apb_rw_cpu			(apb_rw					),
		.apb_addr_cpu		(apb_addr				),
		.apb_enab_cpu		(apb_enable				),
		.apb_datai_cpu		(apb_datai				),
		.apb_datao_cpu		(apb_datao				),
		.apb_ack_cpu		(apb_ready				),

		.apb0_req			( ),
		.apb0_psel			(apb0_psel				),
		.apb0_rw			(apb0_rw				),
		.apb0_addr			(apb0_addr				),
		.apb0_enab			(apb0_enab				),
		.apb0_datai			(apb0_datai				),
		.apb0_datao			(apb0_datao				),
		.apb0_ack			(apb0_ack				),
		
		.apb1_psel			(apb2_psel				),
		.apb1_rw			(apb2_rw				),
		.apb1_addr			(apb2_addr				),
		.apb1_enab			(apb2_enab				),
		.apb1_datai			(apb2_datai				),
		.apb1_datao			(apb2_datao				),
		.apb1_ack			(apb2_ack				),

		.apb2_psel			(apb2_psel				),
		.apb2_rw			(apb2_rw				),
		.apb2_addr			(apb2_addr				),
		.apb2_enab			(apb2_enab				),
		.apb2_datai			(apb2_datai				),
		.apb2_datao			(apb2_datao				),
		.apb2_ack			(apb2_ack				)
	);


	LED_driver LED (
		.clk				(apb_clk				),
		.resetn				(apb_reset_n			),
		.apb_psel			(apb0_psel				),
		.apb_rw				(apb0_rw				),
		.apb_addr			(apb0_addr				),
		.apb_enab			(apb0_enab				),
		.apb_datai			(apb0_datai				),
		.apb_datao			(apb0_datao				),
		.apb_ack			(apb0_ack				),

		.led				(led[1:0]				)
	);

	UART_TOP UART(
		.apb_pclk			(apb_clk				),
		.apb_prstn			(apb_reset_n			),

		.apb_psel			(apb1_psel				),
		.apb_pwrite			(apb1_pwrite			),
		.apb_paddr			(apb1_addr				),
		.apb_penable		(apb1_enab				),
		.apb_pwdata			(apb1_pwdata			),
		.apb_prdata			(apb1_prdata			),
		.RsRx				(RsRx					),
		.RsTx				(RsTx					),
		.uart_irq			(), //
		.uart_ready			(apb1_ack				) 
	);	
	
	
	CONFREG IntController(
		.apb_pclk			(apb_clk				),
		.apb_prstn			(apb_reset_n			),
		
		.apb_psel			(apb2_psel				),
		.apb_pwrite			(apb2_rw				),
		.apb_paddr			(apb2_addr				),
		.apb_penable		(apb2_enab				),
		.apb_pwdata			(apb2_datai				),
		.apb_prdata			(apb2_datao				),
		.apb_ack			(apb2_ack				),

		.timer_int			(timer_int				),
		.i2c_int			(i2c_int				),
		.uart1_int			(uart1_int				),
		.uart0_int			(uart0_int				),
		.flash_int			(flash_int				),
		.spi_int			(spi_int				),
		.vpwm_int			(vpwm_int				),
		.dma_int			(dma_int				),

		.int_o				(interrupt[4]			)
	);

	// axi_adapter # (
	// 	.ADDR_WIDTH			(`ADDR_WIDTH			),
	// 	.S_DATA_WIDTH		(`CPU_DATA_WIDTH		),
	// 	.M_DATA_WIDTH		(`DDR_DATA_WIDTH		)
	// ) axi_adapter_32_to_128 (
    // 	.clk				(clk_100M				),
    // 	.rst				(~(locked&sys_resetn)	),

    // 	.s_axi_awid			(cpu_arb_32_awid		),
    // 	.s_axi_awaddr		(cpu_arb_32_awaddr		),
    // 	.s_axi_awlen		(cpu_arb_32_awlen		),
    // 	.s_axi_awsize		(cpu_arb_32_awsize		),
    // 	.s_axi_awburst		(cpu_arb_32_awburst		),
    // 	.s_axi_awlock		(cpu_arb_32_awlock		),
    // 	.s_axi_awcache		(cpu_arb_32_awcache		),
    // 	.s_axi_awprot		(cpu_arb_32_awprot		),
    // 	.s_axi_awvalid		(cpu_arb_32_awvalid		),
    // 	.s_axi_awready		(cpu_arb_32_awready		),
    // 	.s_axi_wdata		(cpu_arb_32_wdata		),
    // 	.s_axi_wstrb		(cpu_arb_32_wstrb		),
    // 	.s_axi_wlast		(cpu_arb_32_wlast		),
    // 	.s_axi_wvalid		(cpu_arb_32_wvalid		),
    // 	.s_axi_wready		(cpu_arb_32_wready		),
    // 	.s_axi_bid			(cpu_arb_32_bid			),
    // 	.s_axi_bresp		(cpu_arb_32_bresp		),
    // 	.s_axi_bvalid		(cpu_arb_32_bvalid		),
    // 	.s_axi_bready		(cpu_arb_32_bready		),
    // 	.s_axi_arid			(cpu_arb_32_arid		),
    // 	.s_axi_araddr		(cpu_arb_32_araddr		),
    // 	.s_axi_arlen		(cpu_arb_32_arlen		),
    // 	.s_axi_arsize		(cpu_arb_32_arsize		),
    // 	.s_axi_arburst		(cpu_arb_32_arburst		),
    // 	.s_axi_arlock		(cpu_arb_32_arlock		),
    // 	.s_axi_arcache		(cpu_arb_32_arcache		),
    // 	.s_axi_arprot		(cpu_arb_32_arprot		),
    // 	.s_axi_arvalid		(cpu_arb_32_arvalid		),
    // 	.s_axi_arready		(cpu_arb_32_arready		),
    // 	.s_axi_rid			(cpu_arb_32_rid			),
    // 	.s_axi_rdata		(cpu_arb_32_rdata		),
    // 	.s_axi_rresp		(cpu_arb_32_rresp		),
    // 	.s_axi_rlast		(cpu_arb_32_rlast		),
    // 	.s_axi_rvalid		(cpu_arb_32_rvalid		),
    // 	.s_axi_rready		(cpu_arb_32_rready		),
    
    // 	.m_axi_awid			(cpu_arb_128_awid		),
    // 	.m_axi_awaddr		(cpu_arb_128_awaddr		),
    // 	.m_axi_awlen		(cpu_arb_128_awlen		),
    // 	.m_axi_awsize		(cpu_arb_128_awsize		),
    // 	.m_axi_awburst		(cpu_arb_128_awburst	),
    // 	.m_axi_awlock		(cpu_arb_128_awlock		),
    // 	.m_axi_awcache		(cpu_arb_128_awcache	),
    // 	.m_axi_awprot		(cpu_arb_128_awprot		),
    // 	.m_axi_awvalid		(cpu_arb_128_awvalid	),
    // 	.m_axi_awready		(cpu_arb_128_awready	),
    // 	.m_axi_wdata		(cpu_arb_128_wdata		),
    // 	.m_axi_wstrb		(cpu_arb_128_wstrb		),
    // 	.m_axi_wlast		(cpu_arb_128_wlast		),
    // 	.m_axi_wvalid		(cpu_arb_128_wvalid		),
    // 	.m_axi_wready		(cpu_arb_128_wready		),
    // 	.m_axi_bid			(cpu_arb_128_bid		),
    // 	.m_axi_bresp		(cpu_arb_128_bresp		),
    // 	.m_axi_bvalid		(cpu_arb_128_bvalid		),
    // 	.m_axi_bready		(cpu_arb_128_bready		),
    // 	.m_axi_arid			(cpu_arb_128_arid		),
    // 	.m_axi_araddr		(cpu_arb_128_araddr		),
    // 	.m_axi_arlen		(cpu_arb_128_arlen		),
    // 	.m_axi_arsize		(cpu_arb_128_arsize		),
    // 	.m_axi_arburst		(cpu_arb_128_arburst	),
    // 	.m_axi_arlock		(cpu_arb_128_arlock		),
    // 	.m_axi_arcache		(cpu_arb_128_arcache	),
    // 	.m_axi_arprot		(cpu_arb_128_arprot		),
    // 	.m_axi_arvalid		(cpu_arb_128_arvalid	),
    // 	.m_axi_arready		(cpu_arb_128_arready	),
    // 	.m_axi_rid			(cpu_arb_128_rid		),
    // 	.m_axi_rdata		(cpu_arb_128_rdata		),
    // 	.m_axi_rresp		(cpu_arb_128_rresp		),
    // 	.m_axi_rlast		(cpu_arb_128_rlast		),
    // 	.m_axi_rvalid		(cpu_arb_128_rvalid		),
    // 	.m_axi_rready		(cpu_arb_128_rready		)
	// );


	// axicb_crossbar_top # (
	// 	.AXI_ADDR_W			(`ADDR_WIDTH			),
	// 	.AXI_ID_W			(`DDR_ARB_ID_WIDTH		),
	// 	.AXI_DATA_W			(`DDR_DATA_WIDTH		),
		
	// 	.MST0_CDC			(0						),
	// 	.MST0_ID_MASK		('h10					),
	// 	.MST0_OSTDREQ_NUM	(0						),
	// 	.MST0_PRIORITY		(0						),

	// 	.MST1_CDC			(0						),
	// 	.MST1_ID_MASK		('h20					),
	// 	.MST1_OSTDREQ_NUM	(0						),
	// 	.MST1_PRIORITY		(0						),
		
	// 	.MST2_CDC			(0						),
	// 	.MST2_ID_MASK		('h30					),
	// 	.MST2_OSTDREQ_NUM	(0						),
	// 	.MST2_PRIORITY		(0						),

	// 	.SLV0_CDC			(0						),
	// 	.SLV0_START_ADDR	(`DDR_ADDR_BASE			),
	// 	.SLV0_END_ADDR		(`DDR_ADDR_END			),
	// 	.SLV0_OSTDREQ_NUM	(0						),
	// 	.SLV0_KEEP_BASE_ADDR(0						)
	// ) AXI_Arbiter (
	// 	.aclk				(clk_100M				),
	// 	.aresetn			(locked&sys_resetn		),
	// 	.srst				(~(locked&sys_resetn)	),
	// 	.slv0_aclk			(clk_100M				),
	// 	.slv0_aresetn		(locked&sys_resetn		),
	// 	.slv0_srst			(~(locked&sys_resetn)	),
	// 	.slv0_awvalid		(cpu_arb_128_awvalid	),
	// 	.slv0_awready		(cpu_arb_128_awready	),
	// 	.slv0_awaddr		(cpu_arb_128_awaddr		),
	// 	.slv0_awlen			(cpu_arb_128_awlen		),
	// 	.slv0_awsize		(cpu_arb_128_awsize		),
	// 	.slv0_awburst		(cpu_arb_128_awburst	),
	// 	.slv0_awlock		(cpu_arb_128_awlock		),
	// 	.slv0_awcache		(cpu_arb_128_awcache	),
	// 	.slv0_awprot		(cpu_arb_128_awprot		),
	// 	.slv0_awid			({'d1,cpu_arb_128_awid}	),
	// 	.slv0_wvalid		(cpu_arb_128_wvalid		),
	// 	.slv0_wready		(cpu_arb_128_wready		),
	// 	.slv0_wlast			(cpu_arb_128_wlast		),
	// 	.slv0_wdata			(cpu_arb_128_wdata		),
	// 	.slv0_wstrb			(cpu_arb_128_wstrb		),
	// 	.slv0_bvalid		(cpu_arb_128_bvalid		),
	// 	.slv0_bready		(cpu_arb_128_bready		),
	// 	.slv0_bid			(cpu_arb_128_bid		),
	// 	.slv0_bresp			(cpu_arb_128_bresp		),
	// 	.slv0_arvalid		(cpu_arb_128_arvalid	),
	// 	.slv0_arready		(cpu_arb_128_arready	),
	// 	.slv0_araddr		(cpu_arb_128_araddr		),
	// 	.slv0_arlen			(cpu_arb_128_arlen		),
	// 	.slv0_arsize		(cpu_arb_128_arsize		),
	// 	.slv0_arburst		(cpu_arb_128_arburst	),
	// 	.slv0_arlock		(cpu_arb_128_arlock		),
	// 	.slv0_arcache		(cpu_arb_128_arcache	),
	// 	.slv0_arprot		(cpu_arb_128_arprot		),
	// 	.slv0_arid			({'d1,cpu_arb_128_arid}	),
	// 	.slv0_rvalid		(cpu_arb_128_rvalid		),
	// 	.slv0_rready		(cpu_arb_128_rready		),
	// 	.slv0_rid			(cpu_arb_128_rid		),
	// 	.slv0_rresp			(cpu_arb_128_rresp		),
	// 	.slv0_rdata			(cpu_arb_128_rdata		),
	// 	.slv0_rlast			(cpu_arb_128_rlast		),

		
	// 	.mst0_aclk			(clk_100M				),
	// 	.mst0_aresetn		(locked&sys_resetn		),
	// 	.mst0_srst			(~(locked&sys_resetn)	),
	// 	.mst0_awvalid		(arb_ctr_awvalid		),
	// 	.mst0_awready		(arb_ctr_awready		),
	// 	.mst0_awaddr		(arb_ctr_awaddr			),
	// 	.mst0_awlen			(arb_ctr_awlen			),
	// 	.mst0_awsize		(arb_ctr_awsize			),
	// 	.mst0_awburst		(arb_ctr_awburst		),
	// 	.mst0_awlock		(arb_ctr_awlock			),
	// 	.mst0_awcache		(arb_ctr_awcache		),
	// 	.mst0_awprot		(arb_ctr_awprot			),
	// 	.mst0_awid			(arb_ctr_awid			),
	// 	.mst0_wvalid		(arb_ctr_wvalid			),
	// 	.mst0_wready		(arb_ctr_wready			),
	// 	.mst0_wlast			(arb_ctr_wlast			),
	// 	.mst0_wdata			(arb_ctr_wdata			),
	// 	.mst0_wstrb			(arb_ctr_wstrb			),
	// 	.mst0_bvalid		(arb_ctr_bvalid			),
	// 	.mst0_bready		(arb_ctr_bready			),
	// 	.mst0_bid			(arb_ctr_bid			),
	// 	.mst0_bresp			(arb_ctr_bresp			),
	// 	.mst0_arvalid		(arb_ctr_arvalid		),
	// 	.mst0_arready		(arb_ctr_arready		),
	// 	.mst0_araddr		(arb_ctr_araddr			),
	// 	.mst0_arlen			(arb_ctr_arlen			),
	// 	.mst0_arsize		(arb_ctr_arsize			),
	// 	.mst0_arburst		(arb_ctr_arburst		),
	// 	.mst0_arlock		(arb_ctr_arlock			),
	// 	.mst0_arcache		(arb_ctr_arcache		),
	// 	.mst0_arprot		(arb_ctr_arprot			),
	// 	.mst0_arid			(arb_ctr_arid			),
	// 	.mst0_rvalid		(arb_ctr_rvalid			),
	// 	.mst0_rready		(arb_ctr_rready			),
	// 	.mst0_rid			(arb_ctr_rid			),
	// 	.mst0_rresp			(arb_ctr_rresp			),
	// 	.mst0_rdata			(arb_ctr_rdata			),
	// 	.mst0_rlast			(arb_ctr_rlast			)
	// );


	// DDR_Controller # (
	// 	.DATA_WIDTH			(`DDR_DATA_WIDTH		),
	// 	.ADDR_WIDTH			(`ADDR_WIDTH			),
	// 	.ID_WIDTH			(`DDR_ARB_ID_WIDTH		)
	// ) ddr_ctr (
	// 	.clk				(clk_100M				),
	// 	.memory_clk			(clk_400M				),
	// 	.pll_lock			(locked2				),
	// 	.resetn				(locked&sys_resetn		),
	// 	.ui_clk				(ddr_ui_clk				),
	// 	.s_axi_awid			(arb_ctr_awid			),
	// 	.s_axi_awaddr		(arb_ctr_awaddr			),
	// 	.s_axi_awlen		(arb_ctr_awlen			),
	// 	.s_axi_awsize		(arb_ctr_awsize			),
	// 	.s_axi_awburst		(arb_ctr_awburst		),
	// 	.s_axi_awlock		(arb_ctr_awlock			),
	// 	.s_axi_awcache		(arb_ctr_awcache		),
	// 	.s_axi_awprot		(arb_ctr_awprot			),
	// 	.s_axi_awvalid		(arb_ctr_awvalid		),
	// 	.s_axi_awready		(arb_ctr_awready		),
	// 	.s_axi_wdata		(arb_ctr_wdata			),
	// 	.s_axi_wstrb		(arb_ctr_wstrb			),
	// 	.s_axi_wlast		(arb_ctr_wlast			),
	// 	.s_axi_wvalid		(arb_ctr_wvalid			),
	// 	.s_axi_wready		(arb_ctr_wready			),
	// 	.s_axi_bid			(arb_ctr_bid			),
	// 	.s_axi_bresp		(arb_ctr_bresp			),
	// 	.s_axi_bvalid		(arb_ctr_bvalid			),
	// 	.s_axi_bready		(arb_ctr_bready			),
	// 	.s_axi_arid			(arb_ctr_arid			),
	// 	.s_axi_araddr		(arb_ctr_araddr			),
	// 	.s_axi_arlen		(arb_ctr_arlen			),
	// 	.s_axi_arsize		(arb_ctr_arsize			),
	// 	.s_axi_arburst		(arb_ctr_arburst		),
	// 	.s_axi_arlock		(arb_ctr_arlock			),
	// 	.s_axi_arcache		(arb_ctr_arcache		),
	// 	.s_axi_arprot		(arb_ctr_arprot			),
	// 	.s_axi_arvalid		(arb_ctr_arvalid		),
	// 	.s_axi_arready		(arb_ctr_arready		),
	// 	.s_axi_rid			(arb_ctr_rid			),
	// 	.s_axi_rdata		(arb_ctr_rdata			),
	// 	.s_axi_rresp		(arb_ctr_rresp			),
	// 	.s_axi_rlast		(arb_ctr_rlast			),
	// 	.s_axi_ruser		(arb_ctr_ruser			),
	// 	.s_axi_rvalid		(arb_ctr_rvalid			),
	// 	.s_axi_rready		(arb_ctr_rready			),

	// 	.ml_app_rdy			(ml_app_rdy				),
	// 	.ml_app_cmd_en		(ml_app_cmd_en			),
	// 	.ml_app_addr		(ml_app_addr			),
	// 	.ml_app_wdf_rdy		(ml_app_wdf_rdy			),
	// 	.ml_app_wdf_data	(ml_app_wdf_data		),
	// 	.ml_app_wdf_mask	(ml_app_wdf_mask		),
	// 	.ml_app_wdf_wren	(ml_app_wdf_wren		),
	// 	.init_model_complete(init_model_complete	),

	// 	.init_calib_complete(init_calib_complete	),
	// 	.ddr_dq				(ddr_dq					),
	// 	.ddr_dqs			(ddr_dqs				),
	// 	.ddr_dqs_n			(ddr_dqs_n				),
	// 	.ddr_addr			(ddr_addr				),
	// 	.ddr_bank			(ddr_bank				),
	// 	.ddr_cs				(ddr_cs					),
	// 	.ddr_ras			(ddr_ras				),
	// 	.ddr_cas			(ddr_cas				),
	// 	.ddr_we				(ddr_we					),
	// 	.ddr_ck				(ddr_ck					),
	// 	.ddr_ck_n			(ddr_ck_n				),
	// 	.ddr_cke			(ddr_cke				),
	// 	.ddr_odt			(ddr_odt				),
	// 	.ddr_reset_n		(ddr_reset_n			),
	// 	.ddr_dm				(ddr_dm					)
	// );
	// // assign led[2:0] = 0;
	// assign led[3] = init_model_complete;

	// //assign init_model_complete = 1'b1;
	// sd_read_para_top ModelLoader (    
	// 	.sys_clk			(clk_osc				),
	// 	.sys_rst_n			(locked&sys_resetn		),
	// 	.sd_miso			(sd_miso				),
	// 	.sd_clk				(sd_clk					),
	// 	.sd_cs				(sd_cs					),
	// 	.sd_mosi			(sd_mosi				),
	// 	.ui_clk				(ddr_ui_clk				),
	// 	.init_calib_complete(init_calib_complete	),
	// 	.app_rdy			(ml_app_rdy				),
	// 	.app_cmd_en			(ml_app_cmd_en			),
	// 	.app_addr			(ml_app_addr			),
	// 	.app_wdf_rdy		(ml_app_wdf_rdy			),
	// 	.app_wdf_data		(ml_app_wdf_data		),
	// 	.app_wdf_mask		(ml_app_wdf_mask		),
	// 	.app_wdf_wren		(ml_app_wdf_wren		),
	// 	.init_model_complete(init_model_complete	)
	// );

endmodule
