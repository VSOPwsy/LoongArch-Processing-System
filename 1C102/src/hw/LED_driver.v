`timescale 1 ns / 1 ps
`include "config.v"

module LED_driver #
(
	parameter REG_NUM = 4
)
(
	input wire                      	clk,
	input wire                      	resetn,

	input wire                      	apb_req,
	input wire                      	apb_psel,
	input wire                      	apb_rw,    // 0 for rd, 1 for wr
	input wire  [`ADDR_WIDTH     -1 :0]	apb_addr,
	input wire                      	apb_enab,
	input wire  [`APB_DATA_WIDTH -1 :0] apb_datai,
	output wire [`APB_DATA_WIDTH -1 :0] apb_datao,
	output wire                      	apb_ack
);

	apb_register_if # (
		.REG_NUM(REG_NUM)
	) apb_if (
		.clk(clk),
		.resetn(resetn),

		.apb_req(apb_req),
		.apb_psel(apb_psel),
		.apb_rw(apb_rw),
		.apb_addr(apb_addr),
		.apb_enab(apb_enab),
		.apb_datai(apb_datai),
		.apb_datao(apb_datao),
		.apb_ack(apb_ack),

		.R0(R0),
		.R1(R1),
		.R2(R2),
		.R3(R3)
	);

endmodule
