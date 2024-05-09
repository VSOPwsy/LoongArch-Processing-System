module LED_driver #(
	parameter ADDR_WIDTH = 32,
	parameter APB_DATA_WIDTH = 32
)(
	input wire                      	clk,
	input wire                      	resetn,

	input wire                      	apb_psel,
	input wire                      	apb_rw,    // 0 for rd, 1 for wr
	input wire  [ADDR_WIDTH     -1 :0]	apb_addr,
	input wire                      	apb_enab,
	input wire  [APB_DATA_WIDTH -1 :0] apb_datai,
	output wire [APB_DATA_WIDTH -1 :0] apb_datao,
	output wire                      	apb_ack,
	output wire [APB_DATA_WIDTH -1 :0] led
);

    wire [APB_DATA_WIDTH-1:0] R0;
	wire [APB_DATA_WIDTH-1:0] reg_apb_wdata;
	wire [2:0]    reg_apb_addr;
	wire           reg_apb_wen;

	wire [APB_DATA_WIDTH-1:0] yjq_wdata;
	wire [2:0]		  yjq_addr;
	wire           	   yjq_wen;
	

	apb_register #(
    	.REG_NUM(2)
	) apb_register_inst (
    	.clk(clk),
    	.resetn(resetn),

    	.reg_apb_wen(reg_apb_wen),
    	.reg_apb_wdata(reg_apb_wdata),
    	.reg_apb_addr(reg_apb_addr),

		.yjq_wen(yjq_wen),
		.yjq_wdata(yjq_wdata),
		.yjq_addr(yjq_addr),

    	.R0(R0),
		.R1(R1)
	);

	apb_register_if #(
    	.REG_NUM(2)
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
		.R1(R1),
    	.apb_datao(apb_datao),
    	.apb_ack(apb_ack)
	);

	assign led = R0[3:0];
endmodule
