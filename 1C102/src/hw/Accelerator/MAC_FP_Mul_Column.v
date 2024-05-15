module MAC_FP_Mul_Column #(
    parameter SIZE = 16,
    parameter LATENCY = 3
)(
    input clk,
    input rstn,
    input stall,

    input [SIZE*32-1:0] mul_in_a,
    input [31:0] mul_in_b,
    output [SIZE*32-1:0] mul_out,

    input valid_pipe_in,
    output valid_pipe_out,

    input [$clog2(SIZE)-1:0] b_col_pipe_in,
    input [$clog2(SIZE)-1:0] b_col_pipe_out,

    input new_pipe_in,
    output new_pipe_out,

    input done_pipe_in,
    output done_pipe_out
);


    reg [LATENCY-1:0] valid_pipe;
    reg [LATENCY*$clog2(SIZE)-1:0] b_col_pipe;
    reg [LATENCY-1:0] new_pipe;
    reg [LATENCY-1:0] done_pipe;

    always @(posedge clk) begin
        if (~rstn) begin
            valid_pipe <= 0;
            b_col_pipe <= 0;
            new_pipe <= 0;
            done_pipe <= 0;
        end
        else if (stall) begin
            valid_pipe <= 0;
            b_col_pipe <= 0;
            new_pipe <= 0;
            done_pipe <= 0;
        end
        else begin
            valid_pipe <= {valid_pipe[LATENCY-2:0], valid_pipe_in};
            b_col_pipe <= {b_col_pipe[LATENCY*$clog2(SIZE)-1-$clog2(SIZE):0], b_col_pipe_in};
            new_pipe <= {new_pipe[LATENCY-2:0], new_pipe_in};
            done_pipe <= {done_pipe[LATENCY-2:0], done_pipe_in};
        end
    end

    assign valid_pipe_out = valid_pipe[LATENCY-1];
    assign b_col_pipe_out = b_col_pipe[LATENCY*$clog2(SIZE)-1 -: $clog2(SIZE)];
    assign new_pipe_out = new_pipe[LATENCY-1];
    assign done_pipe_out = done_pipe[LATENCY-1];

    genvar i;
    generate
        for (i = 0; i < SIZE; i = i + 1) begin
            float_mult float_mult (
                .clk(clk),
                .rst_n(rstn),
                .stall(stall),
                .mul_a(mul_in_a[i*32+:32]),
                .mul_b(mul_in_b),
                .out_a(mul_out[i*32+:32])
            );
        end
    endgenerate


endmodule