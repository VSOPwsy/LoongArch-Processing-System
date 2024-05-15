module MAC_top #(
    parameter SIZE = 16
)(
    input clk,
    input rstn,

    input [31:0] k,

    output [$clog2(SIZE)-1:0] in_buf_rd_index,
    input in_buf_rd_valid,
    output in_buf_rd_ready,
    output in_buf_rd_done,
    input [SIZE*32-1:0] in_buf_rd_data_a,
    input [SIZE*32-1:0] in_buf_rd_data_b,

    output [$clog2(SIZE)-1:0] out_buf_rd_index,
    input out_buf_rd_valid,
    output out_buf_rd_ready,
    input [SIZE*32-1:0] out_buf_rd_data,

    output [$clog2(SIZE)-1:0] out_buf_wr_index,
    output out_buf_wr_valid,
    input out_buf_wr_ready,
    output [SIZE*32-1:0] out_buf_wr_data,

    output out_buf_done
);

    wire stall_ctr, stall_mul, stall_add;
    wire [SIZE*32-1:0] ctr2mul_data_a;
    wire [31:0] ctr2mul_data_b;
    wire [$clog2(SIZE)-1:0] ctr2mul_b_col;

    wire [SIZE*32-1:0] mul2acc_data;

    MAC_Control #(
        .SIZE(SIZE)
    ) MAC_Control (
        .clk(clk),
        .rstn(rstn),
        .stall(stall_ctr),
        .k(k),
        .in_buf_rd_index(in_buf_rd_index),
        .in_buf_rd_valid(in_buf_rd_valid),
        .in_buf_rd_ready(in_buf_rd_ready),
        .in_buf_rd_done(in_buf_rd_done),
        .in_buf_rd_data_a(in_buf_rd_data_a),
        .in_buf_rd_data_b(in_buf_rd_data_b),
        .ctr2mul_b_col(ctr2mul_b_col),
        .ctr2mul_data_a(ctr2mul_data_a),
        .ctr2mul_data_b(ctr2mul_data_b),
        .ctr2mul_new(ctr2mul_new),
        .ctr2mul_done(ctr2mul_done)
    );


    MAC_FP_Mul_Column #(
        .SIZE(SIZE),
        .LATENCY(3)
    ) MAC_FP_Mul_Column (
        .clk(clk),
        .rstn(rstn),
        .stall(stall_mul),
        .valid_pipe_in(in_buf_rd_valid & in_buf_rd_ready),
        .b_col_pipe_in(ctr2mul_b_col),
        .new_pipe_in(ctr2mul_new),
        .done_pipe_in(ctr2mul_done),
        .mul_in_a(ctr2mul_data_a),
        .mul_in_b(ctr2mul_data_b),
        .valid_pipe_out(mul2acc_valid),
        .b_col_pipe_out(out_buf_rd_index),
        .new_pipe_out(mul2acc_new),
        .done_pipe_out(mul2acc_done),
        .mul_out(mul2acc_data)
    );


    MAC_FP_Add_Column #(
        .SIZE(SIZE),
        .LATENCY(3)
    ) MAC_FP_Add_Column (
        .clk(clk),
        .rstn(rstn),
        .stall(stall_add),
        .valid_pipe_in(mul2acc_valid & out_buf_rd_valid & out_buf_rd_ready),
        .b_col_pipe_in(out_buf_rd_index),
        .done_pipe_in(mul2acc_done),
        .add_in_a(mul2acc_data),
        .add_in_b(mul2acc_new ? 0 : out_buf_rd_data),
        .valid_pipe_out(out_buf_wr_valid),
        .b_col_pipe_out(out_buf_wr_index),
        .done_pipe_out(out_buf_done),
        .add_out(out_buf_wr_data)
    );

    assign stall_ctr = stall_mul;
    assign stall_mul = ~out_buf_rd_valid | stall_add;
    assign stall_add = ~out_buf_wr_ready;

    assign out_buf_rd_ready = ~stall_add;

endmodule
