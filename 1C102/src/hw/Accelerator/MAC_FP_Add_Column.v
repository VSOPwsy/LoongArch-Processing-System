module MAC_FP_Add_Column #(
    parameter SIZE = 16,
    parameter LATENCY = 3
)(
    input clk,
    input rstn,
    input stall,

    input [SIZE*32-1:0] add_in_a,
    input [SIZE*32-1:0] add_in_b,
    output [SIZE*32-1:0] add_out,

    input valid_pipe_in,
    output valid_pipe_out,

    input [$clog2(SIZE)-1:0] b_col_pipe_in,
    input [$clog2(SIZE)-1:0] b_col_pipe_out,

    input done_pipe_in,
    output done_pipe_out
);


    reg [LATENCY-1:0] valid_pipe;
    reg [LATENCY*$clog2(SIZE)-1:0] b_col_pipe;
    reg [LATENCY-1:0] done_pipe;

    always @(posedge clk) begin
        if (~rstn) begin
            valid_pipe <= 0;
            b_col_pipe <= 0;
            done_pipe <= 0;
        end
        else if (stall) begin
           // STALL 
        end
        else begin
            valid_pipe <= {valid_pipe[LATENCY-2:0], valid_pipe_in};
            b_col_pipe <= {b_col_pipe[LATENCY*$clog2(SIZE)-1-$clog2(SIZE):0], b_col_pipe_in};
            done_pipe <= {done_pipe[LATENCY-2:0], done_pipe_in};
        end
    end

    assign valid_pipe_out = valid_pipe[LATENCY-1];
    assign b_col_pipe_out = b_col_pipe[LATENCY*$clog2(SIZE)-1 -: $clog2(SIZE)];
    assign done_pipe_out = done_pipe[LATENCY-1];

    genvar i;
    generate
        for (i = 0; i < SIZE; i = i + 1) begin
            float_adder float_adder (
                .clk(clk),
                .rst_n(rstn),
                .stall(stall),
                .add_a(add_in_a[i*32+:32]),
                .add_b(add_in_b[i*32+:32]),
                .adder_out(add_out[i*32+:32])
            );
        end
    endgenerate


endmodule