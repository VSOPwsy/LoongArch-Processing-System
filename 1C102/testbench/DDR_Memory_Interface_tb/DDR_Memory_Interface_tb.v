`timescale 1ps / 100fs

module DDR_Memory_Interface_tb;

    
    //***************************************************************************
    // Traffic Gen related parameters
    //***************************************************************************
    parameter SIMULATION            = "TRUE";
    parameter PORT_MODE             = "BI_MODE";
    parameter DATA_MODE             = 4'b0010;
    parameter TST_MEM_INSTR_MODE    = "R_W_INSTR_MODE";
    parameter EYE_TEST              = "FALSE";
                                        // set EYE_TEST = "TRUE" to probe memory
                                        // signals. Traffic Generator will only
                                        // write to one single location and no
                                        // read transactions will be generated.
    parameter DATA_PATTERN          = "DGEN_ALL";
                                        // For small devices, choose one only.
                                        // For large device, choose "DGEN_ALL"
                                        // "DGEN_HAMMER", "DGEN_WALKING1",
                                        // "DGEN_WALKING0","DGEN_ADDR","
                                        // "DGEN_NEIGHBOR","DGEN_PRBS","DGEN_ALL"
    parameter CMD_PATTERN           = "CGEN_ALL";
                                        // "CGEN_PRBS","CGEN_FIXED","CGEN_BRAM",
                                        // "CGEN_SEQUENTIAL", "CGEN_ALL"
    parameter BEGIN_ADDRESS         = 32'h00000000;
    parameter END_ADDRESS           = 32'h00000fff;
    parameter PRBS_EADDR_MASK_POS   = 32'hff000000;

    //***************************************************************************
    // The following parameters refer to width of various ports
    //***************************************************************************
    parameter COL_WIDTH             = 10;
                                        // # of memory Column Address bits.
    parameter CS_WIDTH              = 1;
                                        // # of unique CS outputs to memory.
    parameter DM_WIDTH              = 2;
                                        // # of DM (data mask)
    parameter DQ_WIDTH              = 16;
                                        // # of DQ (data)
    parameter DQS_WIDTH             = 2;
    parameter DQS_CNT_WIDTH         = 1;
                                        // = ceil(log2(DQS_WIDTH))
    parameter DRAM_WIDTH            = 8;
                                        // # of DQ per DQS
    parameter ECC                   = "OFF";
    parameter RANKS                 = 1;
                                        // # of Ranks.
    parameter ODT_WIDTH             = 1;
                                        // # of ODT outputs to memory.
    parameter ROW_WIDTH             = 14;
                                        // # of memory Row Address bits.
    parameter ADDR_WIDTH            = 28;
                                        // # = RANK_WIDTH + BANK_WIDTH
                                        //     + ROW_WIDTH + COL_WIDTH;
                                        // Chip Select is always tied to low for
                                        // single rank devices
    //***************************************************************************
    // The following parameters are mode register settings
    //***************************************************************************
    parameter BURST_MODE            = "8";
                                        // DDR3 SDRAM:
                                        // Burst Length (Mode Register 0).
                                        // # = "8", "4", "OTF".
                                        // DDR2 SDRAM:
                                        // Burst Length (Mode Register).
                                        // # = "8", "4".
    parameter CA_MIRROR             = "OFF";
                                        // C/A mirror opt for DDR3 dual rank
    
    //***************************************************************************
    // The following parameters are multiplier and divisor factors for PLLE2.
    // Based on the selected design frequency these parameters vary.
    //***************************************************************************
    parameter CLKIN_PERIOD          = 2500;
                                        // Input Clock Period


    //***************************************************************************
    // Simulation parameters
    //***************************************************************************
    parameter SIM_BYPASS_INIT_CAL   = "FAST";
                                        // # = "SIM_INIT_CAL_FULL" -  Complete
                                        //              memory init &
                                        //              calibration sequence
                                        // # = "SKIP" - Not supported
                                        // # = "FAST" - Complete memory init & use
                                        //              abbreviated calib sequence

    //***************************************************************************
    // IODELAY and PHY related parameters
    //***************************************************************************
    parameter TCQ                   = 100;
    //***************************************************************************
    // IODELAY and PHY related parameters
    //***************************************************************************
    parameter RST_ACT_LOW           = 1;
                                        // =1 for active low reset,
                                        // =0 for active high.

    //***************************************************************************
    // Referece clock frequency parameters
    //***************************************************************************
    parameter REFCLK_FREQ           = 200.0;
                                        // IODELAYCTRL reference clock frequency
    //***************************************************************************
    // System clock frequency parameters
    //***************************************************************************
    parameter tCK                   = 2500;
                                        // memory tCK paramter.
                        // # = Clock Period in pS.
    parameter nCK_PER_CLK           = 4;
                                        // # of memory CKs per fabric CLK

    

    //***************************************************************************
    // Debug and Internal parameters
    //***************************************************************************
    parameter DEBUG_PORT            = "OFF";
                                        // # = "ON" Enable debug signals/controls.
                                        //   = "OFF" Disable debug signals/controls.
    //***************************************************************************
    // Debug and Internal parameters
    //***************************************************************************
    parameter DRAM_TYPE             = "DDR3";

        

    //**************************************************************************//
    // Local parameters Declarations
    //**************************************************************************//

    localparam real TPROP_DQS          = 0.00;
                                        // Delay for DQS signal during Write Operation
    localparam real TPROP_DQS_RD       = 0.00;
                        // Delay for DQS signal during Read Operation
    localparam real TPROP_PCB_CTRL     = 0.00;
                        // Delay for Address and Ctrl signals
    localparam real TPROP_PCB_DATA     = 0.00;
                        // Delay for data signal during Write operation
    localparam real TPROP_PCB_DATA_RD  = 0.00;
                        // Delay for data signal during Read operation

    localparam MEMORY_WIDTH            = 16;
    localparam NUM_COMP                = DQ_WIDTH/MEMORY_WIDTH;
    localparam ECC_TEST 		   	= "OFF" ;
    localparam ERR_INSERT = (ECC_TEST == "ON") ? "OFF" : ECC ;
    

    localparam real REFCLK_PERIOD = (1000000.0/(2*REFCLK_FREQ));
    localparam RESET_PERIOD = 200000; //in pSec  
    localparam real SYSCLK_PERIOD = tCK;
    
    wire [DQ_WIDTH-1:0]   ddr_dq;
    wire [DQS_WIDTH-1:0]    ddr_dqs;
    wire [DQS_WIDTH-1:0]    ddr_dqs_n;
    wire [ROW_WIDTH-1:0]   ddr_addr;
    wire [2:0]    ddr_bank;
    wire          ddr_cs;
    wire          ddr_ras;
    wire          ddr_cas;
    wire          ddr_we;
    wire          ddr_ck;
    wire          ddr_ck_n;
    wire          ddr_cke;
    wire          ddr_odt;
    wire          ddr_reset_n;
    wire [DM_WIDTH-1:0]    ddr_dm;

    reg ctr_clk;
    reg memory_clk;
    reg pll_lock;
    reg sys_resetn;
    wire init_calib_complete;
    wire ui_clk;

    reg ddr_cmd_en;
    reg [31:0] ddr_cmd_addr;
    reg [127:0] ddr_wr_data;
    reg [15:0] ddr_wr_strb;

    wire ddr_cmd_ready;
    wire ddr_wr_data_ready;
    wire ddr_cmd;
    wire ddr_rd_data_valid;
    wire [127:0] ddr_rd_data;
    

    ddr3_memory_interface DDR3_Memory_Interface (
        .clk             (ctr_clk),
        .memory_clk      (memory_clk),
        .pll_lock        (pll_lock),
        .pll_stop        (pll_stop),
        .rst_n           (sys_resetn),
        .init_calib_complete(init_calib_complete),
        .clk_out         (ui_clk),
        .ddr_rst         (ddr_rst),

        .addr            ({ddr_cmd_addr[29:5], 3'b0}),
        .cmd             ({2'b0, ddr_cmd}),
        .cmd_en          (ddr_cmd_en),
        .cmd_ready       (ddr_cmd_ready),
        .rd_data         (ddr_rd_data),
        .rd_data_end     (),
        .rd_data_valid   (ddr_rd_data_valid),
        .burst           (1'b1),
        .wr_data         (ddr_wr_data),
        .wr_data_end     (1'b1),
        .wr_data_mask    (~ddr_wr_strb),
        .wr_data_rdy     (ddr_wr_data_ready),
        .wr_data_en      (ddr_cmd_en & ~ddr_cmd),
        .sr_req          (1'b0),
        .sr_ack          (sr_ack),
        .ref_req         (1'b0),
        .ref_ack         (ref_ack),


        // mem interface
        .O_ddr_addr      (ddr_addr),
        .O_ddr_ba        (ddr_bank),
        .O_ddr_cs_n      (ddr_cs),
        .O_ddr_ras_n     (ddr_ras),
        .O_ddr_cas_n     (ddr_cas),
        .O_ddr_we_n      (ddr_we),
        .O_ddr_clk       (ddr_ck),
        .O_ddr_clk_n     (ddr_ck_n),
        .O_ddr_cke       (ddr_cke),
        .O_ddr_odt       (ddr_odt),
        .O_ddr_reset_n   (ddr_reset_n),
        .O_ddr_dqm       (ddr_dm),
        .IO_ddr_dq       (ddr_dq),
        .IO_ddr_dqs      (ddr_dqs),
        .IO_ddr_dqs_n    (ddr_dqs_n)
    );

    ddr3_model ddr3_inst_0 (
        .rst_n(ddr_reset_n),
        .ck(ddr_ck),
        .ck_n(ddr_ck_n),
        .cke(ddr_cke),
        .cs_n(ddr_cs),
        .ras_n(ddr_ras),
        .cas_n(ddr_cas),
        .we_n(ddr_we),
        .dm_tdqs(ddr_dm[1:0]),
        .ba(ddr_bank),
        .addr(ddr_addr),
        .dq(ddr_dq[15:0]),
        .dqs(ddr_dqs[1:0]),
        .dqs_n(ddr_dqs_n[1:0]),
        .tdqs_n(),
        .odt(ddr_odt)
    );

    // ddr3 ddr3_inst_1 (
    //     .rst_n(ddr_reset_n),
    //     .ck(ddr_ck),
    //     .ck_n(ddr_ck_n),
    //     .cke(ddr_cke),
    //     .cs_n(ddr_cs),
    //     .ras_n(ddr_ras),
    //     .cas_n(ddr_cas),
    //     .we_n(ddr_we),
    //     .dm_tdqs(ddr_dm[3:2]),
    //     .ba(ddr_bank),
    //     .addr(ddr_addr),
    //     .dq(ddr_dq[31:16]),
    //     .dqs(ddr_dqs[3:2]),
    //     .dqs_n(ddr_dqs_n[3:2]),
    //     .tdqs_n(),
    //     .odt(ddr_odt)
    // );

    always #2500 ctr_clk = ! ctr_clk;
    always #625 memory_clk = ! memory_clk;

    initial begin
        ctr_clk = 1;
        memory_clk = 1;
        pll_lock = 1;
        sys_resetn = 1;
        #15000 sys_resetn = 0;
        #200000 sys_resetn = 1;

        #100000;
    end

endmodule