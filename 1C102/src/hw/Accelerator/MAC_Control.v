module MAC_Control #(
    parameter SIZE = 16
)(
    input clk,
    input rstn,
    input stall,

    input [31:0] k,
    
    output [$clog2(SIZE)-1:0] in_buf_rd_index,
    input in_buf_rd_valid,
    input in_buf_rd_ready,
    output in_buf_rd_done,
    input [SIZE*32-1:0] in_buf_rd_data_a,
    input [SIZE*32-1:0] in_buf_rd_data_b,
    output [SIZE*32-1:0] ctr2mul_data_a,
    output [31:0] ctr2mul_data_b,
    output [$clog2(SIZE)-1:0] ctr2mul_b_col,
    output ctr2mul_new,
    output ctr2mul_done
);

    reg [31:0] b_col_cnt;
    wire b_col_cnt_update_now, b_col_cnt_is_max_now;

    reg [31:0] index_cnt;
    wire index_cnt_updata_now, index_cnt_is_max_now;

    reg [31:0] k_cnt;
    wire k_cnt_update_now, k_cnt_is_max_now;

    assign in_buf_rd_ready = ~stall;

    assign b_col_cnt_update_now = in_buf_rd_valid & in_buf_rd_ready;
    assign b_col_cnt_is_max_now = b_col_cnt == SIZE - 1;
    always @(posedge clk) begin
        if (~rstn) begin
            b_col_cnt <= 0;
        end
        else begin
            if (b_col_cnt_update_now) begin
                b_col_cnt <= b_col_cnt_is_max_now ? 0 : b_col_cnt + 1;
            end
        end
    end


    assign index_cnt_updata_now = b_col_cnt_update_now & b_col_cnt_is_max_now;
    assign index_cnt_is_max_now = index_cnt == SIZE - 1;
    always @(posedge clk) begin
        if (~rstn) begin
            index_cnt <= 0;
        end
        else begin
            if (index_cnt_updata_now) begin
                index_cnt <= index_cnt_is_max_now ? 0 : index_cnt + 1;
            end
        end
    end


    assign k_cnt_update_now = index_cnt_updata_now & index_cnt_is_max_now;
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



    assign in_buf_rd_index = index_cnt;
    assign in_buf_rd_done = index_cnt_updata_now & index_cnt_is_max_now;
    assign ctr2mul_data_a = in_buf_rd_data_a;
    assign ctr2mul_data_b = in_buf_rd_data_b[b_col_cnt*32+:32];
    assign ctr2mul_b_col = b_col_cnt;

    assign ctr2mul_new = k_cnt == 0 & index_cnt == 0;
    assign ctr2mul_done = k_cnt_update_now & k_cnt_is_max_now;


endmodule
