module control_register #(
    parameter SIZE = 16
)(
    input clk,
    input rstn,
    input [31:0] addr_base_a,
    input [31:0] addr_base_b,
    input [31:0] m,
    input [31:0] k,
    input [31:0] n,
    input a_in_mode,
    input b_in_mode,
    input start,
    output dma_start,
    output [31:0] dma_addr_a,
    output [31:0] dma_addr_b,
    input dma_valid,
    input dma_ready,
    input dma_done,

    input [255:0] dma_data,
    output [255:0] buf_data_in,

    output read_a,
    output read_b
);
    




    reg [31:0] m_cnt;
    wire m_cnt_update_now, m_cnt_is_max_now;


    reg [31:0] n_cnt;
    wire n_cnt_update_now, n_cnt_is_max_now;


    reg [31:0] block_a_cnt;///////////////////////////
    wire block_a_cnt_update_now, block_a_cnt_is_max_now;

    
    reg [31:0] block_b_cnt;///////////////////////////
    wire block_b_cnt_update_now, block_b_cnt_is_max_now;

    reg [31:0] burst_cnt;
    wire burst_cnt_update_now, burst_cnt_is_max_now;


    reg [31:0] index_cnt;
    wire index_cnt_update_now, index_cnt_is_max_now;


    reg [255:0] buf_data_in_a, buf_data_in_b;


    reg [2:0] buf_state;
    localparam IDLE   = 3'b000;
    localparam LOAD_A = 3'b001;
    localparam DMA_A  = 3'b010;
    localparam LOAD_B = 3'b011;
    localparam DMA_B  = 3'b100;

    reg [31:0] dma_addr_a_reg;
    reg [31:0] dma_addr_b_reg;
    reg dma_start_reg;
    
    assign m_cnt_update_now = n_cnt_update_now & n_cnt_is_max_now;
    assign m_cnt_is_max_now = m_cnt >= m - SIZE;
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

    assign n_cnt_update_now = block_b_cnt_update_now & block_b_cnt_is_max_now;
    assign n_cnt_is_max_now = n_cnt >= n - SIZE;
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

    assign block_a_cnt_update_now = read_a & burst_cnt_update_now & burst_cnt_is_max_now;
    assign block_a_cnt_is_max_now = block_a_cnt_update_now == SIZE - 1;
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


    assign block_b_cnt_update_now = read_b & burst_cnt_update_now & burst_cnt_is_max_now;
    assign block_b_cnt_is_max_now = block_b_cnt_update_now == SIZE - 1;
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



    reg k_cnt;
    wire k_cnt_update_now, k_cnt_is_max_now;
    assign k_cnt_update_now = block_b_cnt_update_now & block_b_cnt_is_max_now;
    assign k_cnt_is_max_now = k_cnt >= k - SIZE;
    always @(posedge clk) begin
        if (~rstn) begin
            k_cnt <= 0;
        end
        else begin
            if (k_cnt_update_now) begin
                k_cnt <= k_cnt_is_max_now ? 0 : k_cnt + SIZE;
            end
        end
    end



    assign burst_cnt_update_now = dma_valid & dma_ready;
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
        buf_data_in_a = dma_data;
        if (a_in_mode == 0 & (k_cnt + block_a_cnt > k)) begin
            buf_data_in_a = 0;
        end
        if (a_in_mode == 1 & (k_cnt + burst_cnt > k)) begin
            buf_data_in_a = dma_data & ((~{256{1'b0}}) >> (32 * (k_cnt + 8 * burst_cnt - k)));
        end
    end


    always @(*) begin
        buf_data_in_b = dma_data;
        if (b_in_mode == 0 & (k_cnt + burst_cnt > k)) begin
            buf_data_in_b = dma_data & ((~{256{1'b0}}) >> (32 * (k_cnt + 8 * burst_cnt - k)));
        end
        if (b_in_mode == 1 & (k_cnt + burst_cnt > k)) begin
            buf_data_in_b = 0;
        end
    end

    assign buf_data_in = read_a ? buf_data_in_a : buf_data_in_b;


    always @(posedge clk) begin
        if (~rstn) begin
            buf_state <= IDLE;
            dma_start_reg <= 0;
            dma_addr_a_reg <= 0;
            dma_addr_b_reg <= 0;
        end
        else begin
            buf_state <= buf_state;
            case (buf_state)
                IDLE: begin
                    if (start) begin
                        dma_addr_a_reg <= addr_base_a;
                        dma_addr_b_reg <= addr_base_b;
                        buf_state <= LOAD_A;
                        dma_start_reg <= 1;
                    end
                end
                LOAD_A: begin
                    dma_start_reg <= 0;
                    if (burst_cnt_update_now & burst_cnt_is_max_now) begin
                        if (block_a_cnt_update_now & block_a_cnt_is_max_now) begin
                            buf_state <= LOAD_B;
                            dma_start_reg <= 1;
                            if (b_in_mode == 0) begin
                                dma_addr_b_reg <= addr_base_b + k * n_cnt + m_cnt;
                            end
                            else begin
                                dma_addr_b_reg <= addr_base_b + n * m_cnt + n_cnt;
                            end
                        end
                        else begin
                            buf_state <= LOAD_A;
                            dma_start_reg <= 1;
                            if (a_in_mode == 0) begin
                                dma_addr_a_reg <= dma_addr_a_reg + m;
                            end
                            else begin
                                dma_addr_a_reg <= dma_addr_a_reg + k;
                            end
                        end
                    end
                end

                LOAD_B: begin
                    dma_start_reg <= 0;
                    if (burst_cnt_update_now & burst_cnt_is_max_now) begin
                        if (block_b_cnt_update_now & block_b_cnt_is_max_now) begin
                            buf_state <= LOAD_A;
                            dma_start_reg <= 1;
                            if (a_in_mode == 0) begin
                                dma_addr_a_reg <= addr_base_a + m * n_cnt + m_cnt;
                            end
                            else begin
                                dma_addr_a_reg <= addr_base_a + n * m_cnt + n_cnt;
                            end
                        end
                        else begin
                            buf_state <= LOAD_B;
                            dma_start_reg <= 1;
                            if (b_in_mode == 0) begin
                                dma_addr_b_reg <= dma_addr_b_reg + k;
                            end
                            else begin
                                dma_addr_b_reg <= dma_addr_b_reg + n;
                            end
                        end
                    end
                end
            endcase
        end
    end

    assign dma_start = dma_start_reg;
    assign dma_addr_a = dma_addr_a_reg;
    assign dma_addr_b = dma_addr_b_reg;
    assign read_a = buf_state == LOAD_A;
    assign read_b = buf_state == LOAD_B;

endmodule