module axicb_pipeline (
	aclk,
	aresetn,
	srst,
	i_valid,
	i_ready,
	i_data,
	o_valid,
	o_ready,
	o_data
);
	parameter DATA_BUS_W = 8;
	parameter NB_PIPELINE = 1;
	input wire aclk;
	input wire aresetn;
	input wire srst;
	input wire i_valid;
	output wire i_ready;
	input wire [DATA_BUS_W - 1:0] i_data;
	output reg o_valid;
	input wire o_ready;
	output reg [DATA_BUS_W - 1:0] o_data;
	generate
		if (NB_PIPELINE == 0) begin : NO_PIPELINE
			wire [1:1] sv2v_tmp_EA0FC;
			assign sv2v_tmp_EA0FC = i_valid;
			always @(*) o_valid = sv2v_tmp_EA0FC;
			wire [DATA_BUS_W:1] sv2v_tmp_97F9E;
			assign sv2v_tmp_97F9E = i_data;
			always @(*) o_data = sv2v_tmp_97F9E;
			assign i_ready = o_ready;
		end
		else if (NB_PIPELINE == 1) begin : ONE_STAGE_PIPELINE
			wire full;
			always @(posedge aclk or negedge aresetn)
				if (~aresetn) begin
					o_valid <= 1'b0;
					o_data <= {DATA_BUS_W {1'b0}};
				end
				else if (srst) begin
					o_valid <= 1'b0;
					o_data <= {DATA_BUS_W {1'b0}};
				end
				else if (~full) begin
					o_valid <= i_valid;
					o_data <= i_data;
				end
			assign full = o_valid & ~o_ready;
			assign i_ready = !full;
		end
		else begin : N_STAGE_PIPELINE
			wire pipe_valid;
			wire pipe_ready;
			wire [DATA_BUS_W - 1:0] pipe_data;
			axicb_pipeline #(
				.DATA_BUS_W(DATA_BUS_W),
				.NB_PIPELINE(1)
			) pipe_n(
				.aclk(aclk),
				.aresetn(aresetn),
				.srst(srst),
				.i_valid(i_valid),
				.i_ready(i_ready),
				.i_data(i_data),
				.o_valid(pipe_valid),
				.o_ready(pipe_ready),
				.o_data(pipe_data)
			);
			wire [1:1] sv2v_tmp_pipe_n_m1_o_valid;
			always @(*) o_valid = sv2v_tmp_pipe_n_m1_o_valid;
			wire [DATA_BUS_W:1] sv2v_tmp_pipe_n_m1_o_data;
			always @(*) o_data = sv2v_tmp_pipe_n_m1_o_data;
			axicb_pipeline #(
				.DATA_BUS_W(DATA_BUS_W),
				.NB_PIPELINE(NB_PIPELINE - 1)
			) pipe_n_m1(
				.aclk(aclk),
				.aresetn(aresetn),
				.srst(srst),
				.i_valid(pipe_valid),
				.i_ready(pipe_ready),
				.i_data(pipe_data),
				.o_valid(sv2v_tmp_pipe_n_m1_o_valid),
				.o_ready(o_ready),
				.o_data(sv2v_tmp_pipe_n_m1_o_data)
			);
		end
	endgenerate
endmodule
`resetall