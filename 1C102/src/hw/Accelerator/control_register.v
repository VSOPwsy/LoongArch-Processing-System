module control_register #(
    parameter BUFFER_SIZE = 16
)(
    input clk,
    input rstn,

    input [31:0] addr_base_a,
    input [31:0] addr_base_b,
    input [31:0] addr_base_c,
    input [31:0] m,
    input [31:0] k,
    input [31:0] n,
    input a_in_mode,
    input b_in_mode,

    input start,

    output in_dma_start,
    output [31:0] in_dma_addr,
    output [3:0] in_dma_burst_len,
    input axi_rvalid,
    input axi_rready,
    input [255:0] axi_rdata,

    input in_buf_wr_ready,
    output [255:0] in_buf_wr_data,
    output [$clog2(BUFFER_SIZE)-1:0] in_buf_wr_index,

    output [$clog2(BUFFER_SIZE/8):0] index_offset,
    output [$clog2(256/8)-1:0] addr_offset,
    output in_buf_wr_dummy,
    output in_buf_wr_done,

    output read_a,
    output read_b,



    input out_buf_rd_valid,
    input [BUFFER_SIZE*32-1:0] out_buf_rd_data,
    output [$clog2(BUFFER_SIZE)-1:0] out_buf_rd_index,

    input out_dma_ready,
    output out_dma_start,
    output [31:0] out_dma_addr,
    output [3:0] out_dma_burst_len,
    output out_dma_rd_done,
    input axi_wvalid,
    input axi_wready,
    output [255:0] axi_wdata,
    output [31:0] axi_wstrb
);

    reg [31:0] m_cnt;
    wire m_cnt_update_now, m_cnt_is_max_now;


    reg [31:0] n_cnt;
    wire n_cnt_update_now, n_cnt_is_max_now;


    reg [31:0] block_a_cnt;
    wire block_a_cnt_update_now, block_a_cnt_is_max_now;

    
    reg [31:0] block_b_cnt;
    wire block_b_cnt_update_now, block_b_cnt_is_max_now;

    reg [31:0] k_cnt;
    wire k_cnt_update_now, k_cnt_is_max_now;


    reg [31:0] burst_cnt;
    wire burst_cnt_update_now, burst_cnt_is_max_now;




    reg [255:0] buf_data_in_a, buf_data_in_b;


    reg [2:0] in_buf_state;
    localparam IDLE   = 3'b000;
    localparam LOAD_A = 3'b001;
    localparam DMA_A  = 3'b010;
    localparam LOAD_B = 3'b011;
    localparam DMA_B  = 3'b100;

    reg [31:0] in_dma_addr_a_reg;
    reg [31:0] in_dma_addr_b_reg;
    reg in_dma_start_reg;
    reg [3:0] in_dma_burst_len_reg;
    
    assign m_cnt_update_now = n_cnt_update_now & n_cnt_is_max_now;
    assign m_cnt_is_max_now = m_cnt + BUFFER_SIZE >= m;
    always @(posedge clk) begin
        if (~rstn) begin
            m_cnt <= 0;
        end
        else begin
            if (m_cnt_update_now) begin
                m_cnt <= m_cnt_is_max_now ? 0 : m_cnt + BUFFER_SIZE;
            end
        end
    end

    assign n_cnt_update_now = k_cnt_update_now & k_cnt_is_max_now;
    assign n_cnt_is_max_now = n_cnt + BUFFER_SIZE >= n;
    always @(posedge clk) begin
        if (~rstn) begin
            n_cnt <= 0;
        end
        else begin
            if (n_cnt_update_now) begin
                n_cnt <= n_cnt_is_max_now ? 0 : n_cnt + BUFFER_SIZE;
            end
        end
    end

    assign block_a_cnt_update_now = read_a & burst_cnt_update_now & burst_cnt_is_max_now;
    assign block_a_cnt_is_max_now = block_a_cnt == BUFFER_SIZE - 1;
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
    assign block_b_cnt_is_max_now = block_b_cnt == BUFFER_SIZE - 1;
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



    assign k_cnt_update_now = block_b_cnt_update_now & block_b_cnt_is_max_now;
    assign k_cnt_is_max_now = k_cnt + BUFFER_SIZE >= k;
    always @(posedge clk) begin
        if (~rstn) begin
            k_cnt <= 0;
        end
        else begin
            if (k_cnt_update_now) begin
                k_cnt <= k_cnt_is_max_now ? 0 : k_cnt + BUFFER_SIZE;
            end
        end
    end



    assign burst_cnt_update_now = axi_rvalid & axi_rready;
    assign burst_cnt_is_max_now = burst_cnt == in_dma_burst_len_reg;
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


    

    // burst 0 for dummy, therefore replace (burst_cnt + 1) with burst_cnt
    always @(*) begin
        buf_data_in_a = axi_rdata;
        if (a_in_mode == 0 & (k_cnt + block_a_cnt + 1 > k)) begin
            buf_data_in_a = 0;
        end
        if (a_in_mode == 1 & (k_cnt + 8 * burst_cnt > k)) begin
            buf_data_in_a = axi_rdata & ({256{1'b1}} >> (32 * (k_cnt + 8 * burst_cnt - k)));
        end
    end

    // burst 0 for dummy, therefore replace (burst_cnt + 1) with burst_cnt
    always @(*) begin
        buf_data_in_b = axi_rdata;
        if (b_in_mode == 0 & (k_cnt + 8 * burst_cnt > k)) begin
            buf_data_in_b = axi_rdata & ({256{1'b1}} >> (32 * (k_cnt + 8 * burst_cnt - k)));
        end
        if (b_in_mode == 1 & (k_cnt + block_b_cnt + 1 > k)) begin
            buf_data_in_b = 0;
        end
    end

    assign in_buf_wr_data = read_a ? buf_data_in_a : buf_data_in_b;


    always @(posedge clk) begin
        if (~rstn) begin
            in_buf_state <= IDLE;
            in_dma_start_reg <= 0;
            in_dma_addr_a_reg <= 0;
            in_dma_addr_b_reg <= 0;
        end
        else begin
            in_buf_state <= in_buf_state;
            case (in_buf_state)
                IDLE: begin
                    if (start) begin
                        in_dma_addr_a_reg <= addr_base_a;
                        in_dma_addr_b_reg <= addr_base_b;
                        in_buf_state <= LOAD_A;
                    end
                end

                LOAD_A: begin
                    if (in_buf_wr_ready) begin
                        in_dma_start_reg <= 1;
                        in_dma_burst_len_reg <= BUFFER_SIZE / 8;
                        in_buf_state <= DMA_A;
                        if (a_in_mode == 0) begin
                            in_dma_addr_a_reg <= addr_base_a + m * k_cnt * 4 + m_cnt * 4;
                        end
                        else begin
                            in_dma_addr_a_reg <= addr_base_a + k * m_cnt * 4 + k_cnt * 4;
                        end
                    end
                end

                DMA_A: begin
                    in_dma_start_reg <= 0;
                    if (burst_cnt_update_now & burst_cnt_is_max_now) begin
                        if (block_a_cnt_update_now & block_a_cnt_is_max_now) begin
                            in_buf_state <= LOAD_B;
                        end
                        else begin
                            in_buf_state <= DMA_A;
                            in_dma_start_reg <= 1;
                            if (a_in_mode == 0) begin
                                in_dma_addr_a_reg <= in_dma_addr_a_reg + m * 4;
                            end
                            else begin
                                in_dma_addr_a_reg <= in_dma_addr_a_reg + k * 4;
                            end
                        end
                    end
                end

                LOAD_B: begin
                    if (in_buf_wr_ready) begin
                        in_dma_start_reg <= 1;
                        in_dma_burst_len_reg <= BUFFER_SIZE / 8;
                        in_buf_state <= DMA_B;
                        if (b_in_mode == 0) begin
                            in_dma_addr_b_reg <= addr_base_b + k * n_cnt * 4 + k_cnt * 4;
                        end
                        else begin
                            in_dma_addr_b_reg <= addr_base_b + n * k_cnt * 4 + n_cnt * 4;
                        end
                    end
                end

                DMA_B: begin
                    in_dma_start_reg <= 0;
                    if (burst_cnt_update_now & burst_cnt_is_max_now) begin
                        if (block_b_cnt_update_now & block_b_cnt_is_max_now) begin
                            if (m_cnt_update_now & m_cnt_is_max_now) begin
                                in_buf_state <= IDLE;
                            end
                            else begin
                                in_buf_state <= LOAD_A;
                            end
                        end
                        else begin
                            in_buf_state <= DMA_B;
                            in_dma_start_reg <= 1;
                            if (b_in_mode == 0) begin
                                in_dma_addr_b_reg <= in_dma_addr_b_reg + k * 4;
                            end
                            else begin
                                in_dma_addr_b_reg <= in_dma_addr_b_reg + n * 4;
                            end
                        end
                    end
                end
            endcase
        end
    end
    wire [31:0] in_dma_addr_meta;
    assign in_dma_start = in_dma_start_reg;
    assign in_dma_addr_meta = read_a ? in_dma_addr_a_reg : in_dma_addr_b_reg;
    assign in_dma_addr = {in_dma_addr_meta[31:5], 5'b0};
    assign in_dma_burst_len = in_dma_burst_len_reg;
    assign read_a = in_buf_state == DMA_A | in_buf_state == LOAD_A;
    assign read_b = in_buf_state == DMA_B | in_buf_state == LOAD_B;

    assign addr_offset = in_dma_addr_meta[4:0];
    assign index_offset = burst_cnt;
    assign in_buf_wr_index = read_a ? block_a_cnt : block_b_cnt;
    assign in_buf_wr_dummy = burst_cnt == 0;
    assign in_buf_wr_done = burst_cnt_is_max_now & (block_a_cnt_is_max_now | block_b_cnt_is_max_now);


    ////////////////////////////////////////////////////////////////////////////////////////////
    ////////// for out_dma
    ////////////////////////////////////////////////////////////////////////////////////////////
    reg [31:0] m_out_cnt;
    wire m_out_cnt_update_now, m_out_cnt_is_max_now;

    reg [31:0] n_out_cnt;
    wire n_out_cnt_update_now, n_out_cnt_is_max_now;

    reg [31:0] block_out_cnt;
    wire block_out_cnt_update_now, block_out_cnt_is_max_now;

    reg [31:0] burst_out_cnt;
    wire burst_out_cnt_update_now, burst_out_cnt_is_max_now;


    reg [3:0] out_dma_burst_len_reg;
    reg out_dma_start_reg;
    reg [31:0] out_dma_addr_reg;

    reg [1:0] out_buf_state;
    localparam OUT_DMA_IDLE = 2'b00;
    localparam OUT_DMA_LOAD = 2'b01;
    localparam OUT_DMA_BUSY = 2'b10;


    assign m_out_cnt_update_now = n_out_cnt_update_now & n_out_cnt_is_max_now;
    assign m_out_cnt_is_max_now = m_out_cnt + BUFFER_SIZE >= m;
    always @(posedge clk) begin
        if (~rstn) begin
            m_out_cnt <= 0;
        end
        else begin
            if (m_out_cnt_update_now) begin
                m_out_cnt <= m_out_cnt_is_max_now ? 0 :m_out_cnt + BUFFER_SIZE;
            end
        end
    end



    assign n_out_cnt_update_now = block_out_cnt_update_now & block_out_cnt_is_max_now;
    assign n_out_cnt_is_max_now = n_out_cnt + BUFFER_SIZE >= n;
    always @(posedge clk) begin
        if (~rstn) begin
            n_out_cnt <= 0;
        end
        else begin
            if (n_out_cnt_update_now) begin
                n_out_cnt <= n_out_cnt_is_max_now ? 0 : n_out_cnt + BUFFER_SIZE;
            end
        end
    end


    assign block_out_cnt_update_now = burst_out_cnt_update_now & burst_out_cnt_is_max_now;
    assign block_out_cnt_is_max_now = (block_out_cnt == BUFFER_SIZE - 1) | (n_out_cnt + block_out_cnt == n - 1);
    always @(posedge clk) begin
        if (~rstn) begin
            block_out_cnt <= 0;
        end
        else begin
            if (block_out_cnt_update_now) begin
                block_out_cnt <= block_out_cnt_is_max_now ? 0 : block_out_cnt + 1;
            end
        end
    end



    assign burst_out_cnt_update_now = axi_wvalid & axi_wready;
    assign burst_out_cnt_is_max_now = burst_out_cnt == out_dma_burst_len_reg;
    always @(posedge clk) begin
        if (~rstn) begin
            burst_out_cnt <= 0;
        end
        else begin
            if (burst_out_cnt_update_now) begin
                burst_out_cnt <= burst_out_cnt_is_max_now ? 0 : burst_out_cnt + 1;
            end
        end
    end



    always @(posedge clk) begin
        if (~rstn) begin
            out_buf_state <= OUT_DMA_IDLE;
            out_dma_start_reg <= 0;
            out_dma_addr_reg <= 0;
            out_dma_burst_len_reg <= BUFFER_SIZE / 8;
        end
        else begin
            out_buf_state <= out_buf_state;
            case (out_buf_state)
                OUT_DMA_IDLE: begin
                    if (start) begin
                        out_dma_addr_reg <= addr_base_c;
                        out_buf_state <= OUT_DMA_LOAD;
                    end
                end

                OUT_DMA_LOAD: begin
                    if (out_buf_rd_valid & out_dma_ready) begin
                        out_dma_start_reg <= 1;
                        out_dma_burst_len_reg <= BUFFER_SIZE / 8;//////////////////////////////////////
                        out_dma_addr_reg <= addr_base_c + n_out_cnt * m * 4 + m_out_cnt * 4;
                        out_buf_state <= OUT_DMA_BUSY;
                    end
                end

                OUT_DMA_BUSY: begin
                    out_dma_start_reg <= 0;
                    if (burst_out_cnt_update_now & burst_out_cnt_is_max_now) begin
                        if (m_out_cnt_update_now & m_out_cnt_is_max_now) begin
                            out_buf_state <= IDLE;
                        end
                        else begin
                            out_buf_state <= OUT_DMA_LOAD;
                        end
                    end
                end
            endcase
        end
    end

    assign out_buf_rd_index = block_out_cnt;

    assign out_dma_start = out_dma_start_reg;
    assign out_dma_burst_len = out_dma_burst_len_reg;
    assign out_dma_addr = out_dma_addr_reg;
    assign out_dma_rd_done = block_out_cnt_update_now & block_out_cnt_is_max_now;
    

    reg [BUFFER_SIZE*32-1:0] out_buf_rd_data_reg;

    always @(*) begin
        out_buf_rd_data_reg = out_buf_rd_data >> (256 * burst_out_cnt);
    end


    reg [255:0] axi_wdata_align_buffer;
    reg [31:0] axi_wstrb_align_buffer;
    always @(posedge clk) begin
        if (~rstn) begin
            axi_wdata_align_buffer <= 0;
        end
        else begin
            if (axi_wvalid & axi_wready) begin
                axi_wdata_align_buffer <= out_buf_rd_data_reg;
                if (m_out_cnt + 8 * (burst_out_cnt + 1) >= m) begin
                    axi_wstrb_align_buffer <= {32{1'b1}} >> (32 * (m_out_cnt + 8 * (burst_out_cnt + 1) - m));
                end
                else begin
                    axi_wstrb_align_buffer <= {32{1'b1}};
                end
            end
        end
    end

    reg [255:0] axi_wdata_reg;
    reg [511:0] axi_wdata_meta_reg;
    reg [31:0] axi_wstrb_reg;
    reg [63:0] axi_wstrb_meta_reg;


    always @(*) begin
        axi_wdata_meta_reg = {out_buf_rd_data_reg[255:0], axi_wdata_align_buffer} >> (8 * (32 - addr_base_c[4:0]));
        axi_wdata_reg = axi_wdata_meta_reg[255:0];

        axi_wstrb_meta_reg = {burst_out_cnt_is_max_now ? {32{1'b0}} : {32{1'b1}}, axi_wstrb_align_buffer} >> (32 - addr_base_c[4:0]);
        axi_wstrb_reg = axi_wstrb_meta_reg[31:0];
    end
    
    assign axi_wdata = axi_wdata_reg;
    assign axi_wstrb = axi_wstrb_reg;

endmodule