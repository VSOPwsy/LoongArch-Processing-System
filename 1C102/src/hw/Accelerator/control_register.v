module control_register #(
    parameter SIZE = 16
)(
    input clk,
    input rstn,
    input addr_base_a,
    input addr_base_b,
    input m,
    input k,
    input n,
    input start,
    output dma_start,
    input dma_done,

    input dma_data,
    output buf_data_in,

    output read_a,
    output read_b
);

    reg buffer_state;   // 0: load matrix a
                        // 1: load matrix b

    always @(posedge clk) begin
        if (~rstn) begin
            buffer_state <= 0;
        end
        if (dma_done) begin
            buffer_state <= ~buffer_state;
        end
    end

    assign read_a = ~buffer_state;
    assign read_b = buffer_state;
    
    reg addr_cnt_a;
    reg addr_cnt_b;
    reg dma_start_reg;
    always @(posedge clk) begin
        if (start) begin
            addr_cnt_a <= addr_base_a;
            addr_cnt_b <= addr_base_b;
        end
        else begin
            case (buffer_state)
                0: begin
                    if (dma_done) begin
                        addr_cnt_a <= addr_cnt_a + 1;
                    end
                end

                1: begin
                    if (dma_done) begin
                        addr_cnt_b <= addr_cnt_b + 1;
                    end
                end
            endcase
        end
    end








    reg m_cnt;
    wire m_cnt_update_now, m_cnt_is_max_now;
    assign m_cnt_update_now = n_cnt_update_now & n_cnt_is_max_now;
    assign m_cnt_is_max_now = m_cnt >= m;
    always @(posedge clk) begin
        if (~rstn) begin
            m_cnt <= 0;
        end
        else begin
            if (m_cnt_update_now) begin
                m_cnt <= m_cnt_is_max_now ? 0 : m_cnt + SIZE;
            end
        end
    end


    reg n_cnt;
    wire n_cnt_update_now, n_cnt_is_max_now;
    assign n_cnt_update_now = block_b_cnt_update_now & block_b_cnt_is_max_now;
    assign n_cnt_is_max_now = n_cnt >= n;
    always @(posedge clk) begin
        if (~rstn) begin
            n_cnt <= 0;
        end
        else begin
            if (n_cnt_update_now) begin
                n_cnt <= n_cnt_is_max_now ? 0 : n_cnt + SIZE;
            end
        end
    end


    reg block_a_cnt;///////////////////////////
    wire block_a_cnt_update_now, block_a_cnt_is_max_now;
    assign block_a_cnt_update_now = read_a & dma_rlast;
    assign block_a_cnt_is_max_now = block_a_cnt_is_max_now == SIZE - 1;
    always @(posedge clk) begin
        if (~rstn) begin
            block_a_cnt <= 0;
        end
        else begin
            if (block_a_cnt_update_now) begin
                block_a_cnt <= block_a_cnt_is_max_now ? 0 : block_a_cnt + 1;
            end
        end
    end


    reg block_b_cnt;///////////////////////////
    wire block_b_cnt_update_now, block_b_cnt_is_max_now;
    assign block_b_cnt_update_now = read_b & dma_rlast;
    assign block_b_cnt_is_max_now = block_b_cnt_is_max_now == SIZE - 1;
    always @(posedge clk) begin
        if (~rstn) begin
            block_b_cnt <= 0;
        end
        else begin
            if (block_b_cnt_update_now) begin
                block_b_cnt <= block_b_cnt_is_max_now ? 0 : block_b_cnt + 1;
            end
        end
    end


    reg burst_cnt;
    wire burst_cnt_update_now, burst_cnt_is_max_now;
    assign burst_cnt_update_now = dam_rlast;
    assign burst_cnt_is_max_now = burst_cnt == (SIZE / (256 / 32)) - 1;
    always @(posedge clk) begin
        if (~rstn) begin
            burst_cnt <= 0;
        end
        else begin
            if (burst_cnt_update_now) begin
                burst_cnt <= burst_cnt_is_max_now ? 0 : burst_cnt + 1;
            end
        end
    end


    reg index_cnt;
    wire index_cnt_update_now, index_cnt_is_max_now;
    assign index_cnt_update_now = burst_cnt_update_now & burst_cnt_is_max_now;
    assign index_cnt_is_max_now = index_cnt == (SIZE - 1);
    always @(posedge clk) begin
        if (~rstn) begin
            index_cnt <= 0;
        end
        else begin
            if (index_cnt_update_now) begin
                index_cnt <= index_cnt_is_max_now ? 0 : index_cnt + 1;
            end
        end
    end



    always @(*) begin
        buf_data_in = dma_data;
        if (a_in_mode == 0 & m_cnt + block_a_cnt > m) begin
            buf_data_in = dma_data & ((~(256{1'b0})) >> (8 * (m_cnt + block_a_cnt - m)));
        end
        if (a_in_mode == 1 & m_cnt + burst_cnt > m) begin
            buf_data_in = dma_data & ((~(256{1'b0})) >> (8 * (m_cnt + burst_cnt - m)));
        end
    end


    always @(*) begin
        buf_data_in = dma_data;
        if (b_in_mode == 0 & n_cnt + block_b_cnt > n) begin
            buf_data_in = dma_data & ((~(256{1'b0})) >> (8 * (n_cnt + block_b_cnt - n)));
        end
        if (b_in_mode == 1 & n_cnt + burst_cnt > n) begin
            buf_data_in = dma_data & ((~(256{1'b0})) >> (8 * (n_cnt + burst_cnt - n)));
        end
    end

endmodule