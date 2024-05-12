module in_buffer #(
    parameter BUFFER_SIZE = 32
)(
    input clk,
    input rstn,
    input in_mode,  // Set to 0 when the addresses of the elements in a column are continuous
                    // Set to 1 when the addresses of the elements in a row are continuous
    input [$clog2(BUFFER_SIZE):0] index_in,////////////////
    input [$clog2(BUFFER_SIZE/8)-1:0] index_offset,
    input [4:0] addr_offset,////////////
    input [255:0] data_in,
    input in_valid,
    input in_last,
    output in_ready,

    input out_mode, // Set to 0 when a column matrix is needed
                    // Set to 1 when a row matrix is needed
    input [$clog2(BUFFER_SIZE)-1:0]index_out,//////////////
    output data_out,//////////////////////
    output out_valid,
    input out_last,
    input out_ready
);

    reg [1:0] double_buffer_wr_ptr;
    reg [1:0] double_buffer_rd_ptr;
    reg full;
    reg empty;
    reg [256-8-1:0] align_buffer;
    wire [BUFFER_SIZE*32-1:0] data_out_0, data_out_1;
    reg in_ready_reg;
    reg out_valid_reg;

    assign in_ready = in_ready_reg;
    assign out_valid = out_valid_reg;
    always @(posedge clk) begin
        if (~rstn) begin
            align_buffer <= 0;
        end
        else begin
            if (in_valid & |in_ready) begin
                align_buffer <= data_in;
            end
        end
    end

    always @(posedge clk) begin
        if (~rstn) begin
            double_buffer_wr_ptr <= 0;
            double_buffer_rd_ptr <= 0;
        end
        else begin
            if (in_last) begin
                double_buffer_wr_ptr <= double_buffer_wr_ptr + 1;
            end
            if (out_last) begin
                double_buffer_rd_ptr <= double_buffer_rd_ptr + 1;
            end
            full = (double_buffer_wr_ptr[1] ^ double_buffer_rd_ptr[1]) & (double_buffer_wr_ptr[0] == double_buffer_rd_ptr[0]);
            empty = double_buffer_wr_ptr == double_buffer_rd_ptr;
            in_ready_reg = ~full;
            out_valid_reg = ~empty;
        end
    end

    genvar i, j;
    generate
        wire [BUFFER_SIZE*BUFFER_SIZE*32-1:0] _buf_0_data_out;
        wire [BUFFER_SIZE*BUFFER_SIZE*32-1:0] _buf_1_data_out;

        for (i = 0; i < BUFFER_SIZE; i = i + 1) begin: _ROW_0
            for (j = 0; j < BUFFER_SIZE; j = j + 1) begin: _COLUMN_0
                reg [31:0] buf_cell_0;
                wire cs_0;
                wire wr_en_0;
                wire [255:0] data_in_0_eff;
                wire [255:0] data_in_0;
                assign cs_0 = in_ready & double_buffer_wr_ptr == 0 & (index_offset == i / 8) &
                              (in_mode == 0 & index_in == j + 1) | (in_mode == 1 & index_in == i + 1);
                assign wr_en_0 = in_valid & in_ready & double_buffer_wr_ptr == 0 & index_in != 0;
                assign data_in_0_eff = {data_in, align_buffer} >> (addr_offset*8);

                wire [31:0] data_in_0_column = data_in_0_eff[i*32+:32];
                wire [31:0] data_in_0_row = data_in_0_eff[j*32+:32];

                buff_cell buff_cell_0 (
                    .clk(clk),
                    .data_in(in_mode == 0 ? data_in_0_column : data_in_0_row),
                    .cs(cs_0),
                    .wr_en(wr_en_0),
                
                    .data_out(_buf_0_data_out[i*BUFFER_SIZE*32 + j*32 +: 32])
                );
            end
        end

        wire [BUFFER_SIZE*32-1:0] data_out_0_column;
        wire [BUFFER_SIZE*32-1:0] data_out_0_row;
        for (i = 0; i < BUFFER_SIZE; i = i + 1) begin
            assign data_out_0_column[i*32+:32] = _buf_0_data_out[i*BUFFER_SIZE*32 + index_out*32 +: 32];
        end
        assign data_out_0_row = _buf_0_data_out[index_out*BUFFER_SIZE*32 +: BUFFER_SIZE*32];

        assign data_out_0 = out_mode == 0 ? data_out_0_column : data_out_0_row;

        ////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////
        for (i = 0; i < BUFFER_SIZE; i = i + 1) begin: _ROW_1
            for (j = 0; j < BUFFER_SIZE; j = j + 1) begin: _COLUMN_1
                reg [31:0] buf_cell_1;
                wire cs_1;
                wire wr_en_1;
                wire [255:0] data_in_1_eff;
                wire [255:0] data_in_1;
                assign cs_1 = in_ready & double_buffer_wr_ptr == 1 & (index_offset == i / 8) &
                              (in_mode == 0 & index_in == j + 1) | (in_mode == 1 & index_in == i + 1);
                assign wr_en_1 = in_valid & in_ready & double_buffer_wr_ptr == 1 & index_in != 0;
                assign data_in_1_eff = {data_in, align_buffer} >> (addr_offset*8);

                wire [31:0] data_in_1_column = data_in_1_eff[i*32+:32];
                wire [31:0] data_in_1_row = data_in_1_eff[j*32+:32];

                buff_cell buff_cell_1 (
                    .clk(clk),
                    .data_in(in_mode == 0 ? data_in_1_column : data_in_1_row),
                    .cs(cs_1),
                    .wr_en(wr_en_1),
                
                    .data_out(_buf_1_data_out[i*BUFFER_SIZE*32 + j*32 +: 32])
                );
            end
        end

        wire [BUFFER_SIZE*32-1:0] data_out_1_column;
        wire [BUFFER_SIZE*32-1:0] data_out_1_row;
        for (i = 0; i < BUFFER_SIZE; i = i + 1) begin
            assign data_out_1_column[i*32+:32] = _buf_1_data_out[i*BUFFER_SIZE*32 + index_out*32 +: 32];
        end
        assign data_out_1_row = _buf_1_data_out[index_out*BUFFER_SIZE*32 +: BUFFER_SIZE*32];

        assign data_out_1 = out_mode == 0 ? data_out_1_column : data_out_1_row;
    endgenerate


endmodule

module buff_cell (
    input clk,
    input [31:0] data_in,
    input cs,
    input wr_en,

    output [31:0] data_out
);
reg [31:0] buf_cell;
always @(posedge clk) begin
    if (cs & wr_en) begin
        buf_cell <= data_in;
    end
end
assign data_out = buf_cell;

endmodule