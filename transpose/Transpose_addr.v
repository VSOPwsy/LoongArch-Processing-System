`include "Defines.vh"

module Transpose_addr
(
	input clk,
	input rst_n,

	//from CSR
	input start,
	input [`log2_CH-`log2Tout-1:0]CH_in_div_Tout, 
    input [`log2_W-1:0]w_in, 
    
	//rd response from MCIF
	input rd_resp_vld,
	output rd_resp_rdy,
    input [`MAX_DAT_DW * `Tout-1:0]rd_dat,
	output rd_fifo_pop,

    output wr_vld,
    output reg [`base_log2Tin-1:0]wr_addr,
    output [`base_log2Tin:0]wr_addr_max,
    output [`MAX_DAT_DW*`Tout-1:0]wr_dat,
    input  wr_rdy
);

wire done;
reg state;
reg [`log2_Trans_pixel-1:0] weight_write_cnt; 
reg [`log2_CH -`log2Tout-1:0] channel_cnt; ///??????? log2_CH-1
reg [`log2_W-1:0] burst_cnt;
wire [`log2AXI_BURST_LEN-1:0] burst_length;

//signals
wire burst_cnt_max = (w_in-1)>>`log2AXI_BURST_LEN;
assign burst_length = (burst_cnt == burst_cnt_max)?(w_in[`log2AXI_BURST_LEN-1:0]-1):(`AXI_BURST_LEN-1);

wire weight_write_cnt_max_flag = (weight_write_cnt == burst_length)? 1'b1:1'b0; 
wire channel_cnt_max_flag = (channel_cnt == CH_in_div_Tout-1)? 1'b1: 1'b0;
wire burst_cnt_max_flag = (burst_cnt == burst_cnt_max)? 1'b1: 1'b0;

wire weight_write_cnt_update_flag = rd_resp_vld & rd_resp_rdy;
wire channel_cnt_update_flag = weight_write_cnt_update_flag & weight_write_cnt_max_flag;
wire burst_cnt_update_flag = channel_cnt_update_flag & channel_cnt_max_flag;

//output directly
assign wr_dat = rd_dat;
assign rd_fifo_pop = rd_resp_vld & rd_resp_rdy;
assign wr_vld = rd_resp_vld & rd_resp_rdy;
assign rd_resp_rdy = state & wr_rdy;

//state
assign done = burst_cnt_max_flag & burst_cnt_update_flag;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		state <= 0;
	end
	else if (start) begin
		state <= 1;
	end
	else if (done) begin
		state <= 0;
	end
	else begin
		state <= 0;
	end
end

//cnt update
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		weight_write_cnt <= 0;
	end
	else begin
		if (weight_write_cnt_update_flag) begin
			if (weight_write_cnt_max_flag) begin
				weight_write_cnt <= 0;
			end
			else begin
				weight_write_cnt <= weight_write_cnt + 1'b1;
			end
		end
		else begin
			weight_write_cnt <= weight_write_cnt;
		end
	end
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		channel_cnt <= 0;
	end
	else begin
		if (channel_cnt_update_flag) begin
			if (channel_cnt_max_flag) begin
				channel_cnt <= 0;
			end
			else begin
				channel_cnt <= channel_cnt + 1'b1;
			end
		end
		else begin
			channel_cnt <= channel_cnt;
		end
	end
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		burst_cnt <= 0;
	end
	else begin
		if (burst_cnt_update_flag) begin
			if (burst_cnt_max_flag) begin
				burst_cnt <= 0;
			end
			else begin
				burst_cnt <= burst_cnt + 1'b1;
			end
		end
		else begin
			burst_cnt <= burst_cnt;
		end
	end
end

//addr
wire [2:0] Tin_div_Tout = `base_Tin / `Tout;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		wr_addr <= 0;
	end
	else begin
		case (Tin_div_Tout)
			3'b001:wr_addr <= weight_write_cnt;
			3'b010:wr_addr <= weight_write_cnt * 2 + channel_cnt[0];
			3'b100:wr_addr <= weight_write_cnt * 4 + channel_cnt[1:0];
			default: wr_addr <= weight_write_cnt;
		endcase
	end
end
assign wr_addr_max = (burst_length + 1) * Tin_div_Tout; //???

endmodule