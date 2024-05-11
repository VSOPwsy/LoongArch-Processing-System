`timescale 1ns / 1ps

`define FPGA

`define SIMULATION

/*****************
*   AXI interface
******************/

`define APB_ADDR_BASE       32'hbf000000
`define APB_ADDR_LEN        32'h00ffffff
`define APB_ADDR_END        (`APB_ADDR_BASE + `APB_ADDR_LEN)

`define DDR_ADDR_BASE       32'h40000000
`define DDR_ADDR_LEN        32'h0fffffff
`define DDR_ADDR_END        (`DDR_ADDR_BASE + `DDR_ADDR_LEN)

//AXI0
`define AXI_SLV0_ADDR_BASE   (`APB_ADDR_BASE)
`define AXI_SLV0_ADDR_LEN    (`APB_ADDR_LEN )

//AXI1
`define AXI_SLV1_ADDR_BASE   (`DDR_ADDR_BASE)
`define AXI_SLV1_ADDR_LEN    (`DDR_ADDR_LEN )
//AXI2
`define AXI_SLV2_ADDR_BASE   32'hffffffff
`define AXI_SLV2_ADDR_LEN    32'h00000000
//AXI3
`define AXI_SLV3_ADDR_BASE   32'hffffffff
`define AXI_SLV3_ADDR_LEN    32'h00000000
//AXI4
`define AXI_SLV4_ADDR_BASE   32'hffffffff
`define AXI_SLV4_ADDR_LEN    32'h00000000


`define ID_WIDTH 8
`define ADDR_WIDTH 32
`define DATA_WIDTH  32
`define STRB_WIDTH  (`DATA_WIDTH/8)
`define LEN_WIDTH 4
`define SIZE_WIDTH 3
`define BURST_WIDTH 2
`define LOCK_WIDTH 2
`define CACHE_WIDTH 4
`define PROT_WIDTH 3
`define RESP_WIDTH 2

`define DDR_DATA_WIDTH  256
`define DDR_STRB_WIDTH  (`DDR_DATA_WIDTH/8)

`define CPU_ID_WIDTH    4
`define CPU_DATA_WIDTH  32
`define CPU_STRB_WIDTH  (`CPU_DATA_WIDTH/8)

`define APB_DATA_WIDTH  (`CPU_DATA_WIDTH)
`define APB_STRB_WIDTH  (`CPU_STRB_WIDTH)


/*****************
*   APB interface      9-way APB
******************/
//APB0
//INTC
`define APB_SLV0_ADDR_BASE   32'hbfea0000     //APB0 base address    
`define APB_SLV0_ADDR_LEN    32'h00000007     //APB0 length
//APB1
//UART1
`define APB_SLV1_ADDR_BASE   32'hbfe88000     //APB1 base address    
`define APB_SLV1_ADDR_LEN    32'h00000007     //APB1 length
//APB2
//SD DMA
`define APB_SLV2_ADDR_BASE   32'hbfff0000     //APB2 base address    
`define APB_SLV2_ADDR_LEN    32'h0000001c     //APB2 length
//APB3
//DDR State
`define APB_SLV3_ADDR_BASE   32'hbfff1000     //APB3 base address    
`define APB_SLV3_ADDR_LEN    32'h00000001     //APB3 length
//APB4
`define APB_SLV4_ADDR_BASE   32'hffffffff     //APB4 base address    
`define APB_SLV4_ADDR_LEN    32'hffffffff     //APB4 length
//APB5
`define APB_SLV5_ADDR_BASE   32'hffffffff     //APB5 base address    
`define APB_SLV5_ADDR_LEN    32'hffffffff     //APB5 length
//APB6
`define APB_SLV6_ADDR_BASE   32'hffffffff     //APB6 base address     
`define APB_SLV6_ADDR_LEN    32'hffffffff     //APB6 length
//APB7
`define APB_SLV7_ADDR_BASE   32'hffffffff     //APB7 base address   
`define APB_SLV7_ADDR_LEN    32'hffffffff     //APB7 length
//APB8
//LED
`define APB_SLV8_ADDR_BASE   32'hbff00000     //APB8 base address   
`define APB_SLV8_ADDR_LEN    32'h00000001     //APB8 length


// Model
`define MODEL_DDR_MIN_ADDR  32'd000000
`define MODEL_DDR_MAX_ADDR  32'd384000
`define MODEL_SD_SEC_NUM    16'd1212
`define MODEL_ADDR_START    32'd67072
`define MODEL_HEAD_NUM      6'd0




// FLASH controller
`define ERASE_PAGE_CMD   4'b1010
`define PROGR_PAGE_CMD   4'b1110
`define CLEAR_HVPL_CMD   4'b0100
`define UPDATE_KEY_CMD   4'b1111
`define UPDATE_BOUND_CMD 4'b1001
`define VERIF            4'b0001
`define TEST_KEY         4'b0010
`define INT_CLEAR        4'b0011
`define SLEEP            4'b1100

`define WAIT0 0
`define SEQ1  1
`define WAIT1 2
`define SEQ2  3
`define WAIT2 4
`define SEQ3  5
`define WAIT3 6
`define SEQ0  7

`define TS2P 1
`define PE   2
`define TPS3 3

`define FM_BASE_ADDR 32'h1f000000
`define FM_MASK_ADDR 32'hff3c0000  // for 128K

`define CMD_ADDR     32'h1fe60000
`define CADDR_H      32'h1fe60004
`define CADDR_L      32'h1fe60008
`define VERIF_DATA   32'h1fe60010
`define STATUS_ADDR  32'h1fe60014
`define PE_TIME_MODE 32'h1fe60018

`define TEST_KEY_H  32'h1fe6001c
`define TEST_KEY_L  32'h1fe60020
`define WRITE_KEY   32'h1fe60024
`define TRIMMING1   32'h1fe60028
`define TRIMMING2   32'h1fe6002c
`define TRIMMING3   32'h1fe60030

`define BOUND       32'h1fe60034
`define CFG_DATA    32'h1fe60038

// HPET
`define HPET_CFG    4'h0
`define HPET_CNT    4'h4
`define HPET_CMP    4'h8
`define HPET_STP    4'hc

// confreg 
`define INT_EN      20'ha0000
`define INT_EDGE    20'ha0001
`define INT_POL     20'ha0002
`define INT_CLR     20'ha0003
`define INT_SET     20'ha0004
`define INT_OUT     20'ha0005
`define SRPROT      20'ha0006

`define PKG_SEL_SPIB2 32'h55000000
`define PKG_SEL_SPIB3 32'h00000001

// `define PKG_SEL_IO2ND 32'hffffffff
// `define PKG_SEL_GPIO  32'h0

// I2C
`define I2C_CMD_NOP   4'b0000
`define I2C_CMD_START 4'b0001
`define I2C_CMD_STOP  4'b0010
`define I2C_CMD_WRITE 4'b0100
`define I2C_CMD_READ  4'b1000

`ifdef SIMULATION
    `define den2048Mb
    `define x16
`endif

