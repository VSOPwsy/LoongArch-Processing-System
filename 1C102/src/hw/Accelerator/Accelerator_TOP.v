module Accelerator_TOP (
    input clk,
    input rstn,
);


    control_register control_register (
        .clk(clk),
        .rstn(rstn),
        .start(start),
        .addr_base_a,
        .addr_base_b,
        .m(),   // C = A(m, k) @ B(k, n)
        .k(),
        .n(),
        .read_a(read_a),
        .read_b(read_b),
        .burst_len(),
        .dma_addr(dma_addr),
        .dma_start
        .dma_done()last,
        .offset(offset)

    );


    in_dma in_dma (
        .clk,
        .rstn,
        .addr(dma_addr),
        .burst_len,
        .dma_start
        .axi

        .read_a(read_a),
        .read_b(read_b),
        .dma2buf_data_valid
        .dma2buf_data_ready_a
        .dma2buf_data_ready_b
    );

    in_buffer # (
        .SIZE(32)
    ) in_buffer_a (
        .clk(clk),
        .rstn(rstn),
        .in_mode(in_mode),
        .index_in(index_in),
        .offset(offset),
        .data_in(data_in),
        .in_valid(in_valid),
        .in_last(in_last & read_a),
        .in_ready(in_ready_a),
        .full(full_a),
        .empty(empty_a),
        .out_mode(out_mode),
        .index_out(index_out),
        .data_out(data_out),
        .out_valid(out_valid),
        .out_last(out_last),
        .out_ready(out_ready)
    );


    in_buffer # (
        .SIZE(32)
    ) in_buffer_b (
        .clk(clk),
        .rstn(rstn),
        .in_mode(in_mode),
        .index_in(index_in),
        .offset(offset),
        .data_in(data_in),
        .in_valid(in_valid & read_b),
        .in_last(in_last),
        .in_ready(in_ready_b),
        .full(full_b),
        .empty(empty_b),
        .out_mode(out_mode),
        .index_out(index_out),
        .data_out(data_out),
        .out_valid(out_valid),
        .out_last(out_last),
        .out_ready(out_ready)
    );

endmodule
