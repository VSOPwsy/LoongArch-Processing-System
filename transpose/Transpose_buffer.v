`include "Defines.vh"

module Transpose_buf#
(
	parameter DAT_WIDTH=256,
	parameter MEM_DEPTH=16,
	parameter log2_MEM_DEPTH=4
)
(
	input clk,
    input rst_n,
    
	input wr_vld,
	input [log2_MEM_DEPTH-1:0]waddr,
	input [DAT_WIDTH-1:0]wdata,
	input [log2_MEM_DEPTH:0]waddr_max,
	output wr_rdy,
	
	input rd_vld,
	output rd_rdy,
	input [log2_MEM_DEPTH-1:0]raddr,
	output reg [DAT_WIDTH-1:0]rdata,
	input [log2_MEM_DEPTH:0]raddr_max,
	output reg rd_dat_out_vld
);

reg mode; //"1" write "0"read
reg [DAT_WIDTH-1:0]mem[MEM_DEPTH-1:0]; 
//reg [log2_MEM_DEPTH:0] raddr_cnt;

wire rd_last = ((raddr == raddr_max - 1) & (rd_vld) & (rd_rdy));
wire wr_last = ((waddr == waddr_max - 1) & (wr_vld) & (wr_rdy));

assign rd_rdy = (mode == 1'b0) ? 1'b1 : 1'b0;
assign wr_rdy = (mode == 1'b1) ? 1'b1 : 1'b0;

//state
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		mode <= 0;
	end
	else begin
		if (rd_last) begin
			mode <= 1;
		end
		else if(wr_last) begin
			mode <= 0;
		end
 	end
end

//read addr
// always @(posedge clk or negedge rst_n) begin
// 	if (!rst_n) begin
// 		raddr_cnt <= 0;
// 	end
// 	else begin
// 		if (mode == 1) begin
// 			raddr_cnt <= 0;
// 		end
// 		else begin
// 			raddr_cnt <= raddr_cnt + 1;
// 		end
// 	end
// end

//data 
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		rdata <= 0; 
		rd_dat_out_vld <= 0;
	end
	else begin
		if ((mode == 0) & (rd_vld) & (rd_rdy)) begin
			rdata <= mem[raddr]; 
			rd_dat_out_vld <= 1;
		end
		else if ((mode == 1) & (wr_vld) & (wr_rdy)) begin
			mem[waddr] <= wdata;
			rd_dat_out_vld <= 0;
		end
	end 
end
endmodule