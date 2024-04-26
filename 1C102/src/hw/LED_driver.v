`include "config.v"

module LED_driver # (
	parameter ADDR_WIDTH = 32,
	parameter DATA_WIDTH = 32,
	parameter LED_NUM = 4
)(
	input wire                      	clk,
	input wire                      	resetn,

	input wire                      	apb_psel,
	input wire                      	apb_rw,    // 0 for rd, 1 for wr
	input wire  [ADDR_WIDTH     -1 :0]	apb_addr,
	input wire                      	apb_enab,
	input wire  [DATA_WIDTH -1 :0] apb_datai,
	output wire [DATA_WIDTH -1 :0] apb_datao,
	output wire                      	apb_ack,
	output wire [DATA_WIDTH -1 :0] led
);

    wire [LED_NUM-1:0]	R0;
	wire [LED_NUM-1:0] 	reg_apb_wdata;
	wire [0:0]    		reg_apb_addr;
	wire           		reg_apb_wen;

	wire [DATA_WIDTH-1:0] yjq_wdata;
	wire [0:0]		  	yjq_addr;
	wire           	   	yjq_wen;
	

	apb_register #(
		.ADDR_WIDTH(ADDR_WIDTH),
		.DATA_WIDTH(DATA_WIDTH),
    	.REG_NUM(1),
		.REG_DATA_WIDTH(LED_NUM)
	) apb_register_inst (
    	.clk(clk),
    	.resetn(resetn),

    	.reg_apb_wen(reg_apb_wen),
    	.reg_apb_wdata(reg_apb_wdata),
    	.reg_apb_addr(reg_apb_addr),

		.yjq_wen(yjq_wen),
		.yjq_wdata(yjq_wdata),
		.yjq_addr(yjq_addr),

    	.R0(R0)
	);

	apb_register_if #(
		.ADDR_WIDTH(ADDR_WIDTH),
		.DATA_WIDTH(DATA_WIDTH),
    	.REG_NUM(1),
		.REG_DATA_WIDTH(LED_NUM)
	) apb_reg_inst (
    	.clk(clk),
    	.resetn(resetn),
    	.apb_psel(apb_psel),
    	.apb_rw(apb_rw),
    	.apb_addr(apb_addr),
    	.apb_enab(apb_enab),
    	.apb_datai(apb_datai),
    	.apb_reg_wdata(reg_apb_wdata),  
    	.apb_reg_addr(reg_apb_addr),   
    	.apb_reg_wen(reg_apb_wen),    
    	.R0(R0),
    	.apb_datao(apb_datao),
    	.apb_ack(apb_ack)
	);

	assign led = R0[0+:LED_NUM];
endmodule
