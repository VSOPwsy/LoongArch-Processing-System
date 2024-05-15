module in_buffer #(
    parameter BUFFER_SIZE = 32
)(
    input clk,
    input rstn,
    input in_mode,  // Set to 0 when the addresses of the elements in a column are continuous
                    // Set to 1 when the addresses of the elements in a row are continuous
    input [$clog2(BUFFER_SIZE)-1:0] wr_index,////////////////
    input [$clog2(BUFFER_SIZE/8):0] index_offset,
    input [4:0] addr_offset,////////////
    input [255:0] wr_data,
    input wr_valid,
    output wr_ready,
    input wr_dummy,
    input wr_last,
    input wr_done,

    input out_mode, // Set to 0 when a column matrix is needed
                    // Set to 1 when a row matrix is needed
    input [$clog2(BUFFER_SIZE)-1:0]rd_index,//////////////
    output [BUFFER_SIZE*32-1:0] rd_data,//////////////////////
    output rd_valid,
    input rd_done,
    input rd_ready
);

    genvar i, j;

    reg [1:0] double_buffer_wr_ptr;
    reg [1:0] double_buffer_rd_ptr;
    reg full;
    reg empty;
    reg [256-1:0] align_buffer;
    wire [BUFFER_SIZE*32-1:0] data_out_0, data_out_1;
    reg in_ready_reg;
    reg out_valid_reg;

    assign wr_ready = in_ready_reg;
    assign rd_valid = out_valid_reg;
    always @(posedge clk) begin
        if (~rstn) begin
            align_buffer <= 0;
        end
        else begin
            if (wr_valid & |wr_ready) begin
                align_buffer <= wr_data;
            end
        end
    end

    reg dummy_double_buffer_wr_ptr;
    reg [BUFFER_SIZE*BUFFER_SIZE-1:0] dummy_cs;

    wire [511:0] wr_data_meta;
    assign wr_data_meta = {wr_data, align_buffer} >> (8*addr_offset);

    always @(posedge clk) begin
        if (~rstn) begin
            dummy_double_buffer_wr_ptr <= 0;
        end
        else begin
            if (wr_valid & |wr_ready) begin
                dummy_double_buffer_wr_ptr <= double_buffer_wr_ptr[0];
            end
        end
    end


    generate
        for (i = 0; i < BUFFER_SIZE; i = i + 1) begin
            for (j = 0; j < BUFFER_SIZE; j = j + 1) begin
                always @(posedge clk) begin
                    dummy_cs[i*BUFFER_SIZE+j] <= wr_index == i & index_offset == j/8;
                end
            end
        end
    endgenerate

    always @(posedge clk) begin
        if (~rstn) begin
            double_buffer_wr_ptr <= 0;
            double_buffer_rd_ptr <= 0;
        end
        else begin
            if (wr_done) begin
                double_buffer_wr_ptr <= double_buffer_wr_ptr + 1;
            end
            if (rd_done) begin
                double_buffer_rd_ptr <= double_buffer_rd_ptr + 1;
            end
        end
    end

    always @(*) begin
        full = (double_buffer_wr_ptr[1] ^ double_buffer_rd_ptr[1]) & (double_buffer_wr_ptr[0] == double_buffer_rd_ptr[0]);
        empty = double_buffer_wr_ptr == double_buffer_rd_ptr;
        in_ready_reg = ~full;
        out_valid_reg = ~empty;
    end

    generate
        wire [BUFFER_SIZE*BUFFER_SIZE*32-1:0] _buf_0_data_out;
        wire [BUFFER_SIZE*BUFFER_SIZE*32-1:0] _buf_1_data_out;

        for (i = 0; i < BUFFER_SIZE; i = i + 1) begin: _ROW_0
            for (j = 0; j < BUFFER_SIZE; j = j + 1) begin: _COLUMN_0
                assign cs_0 = dummy_cs[i*BUFFER_SIZE+j] & dummy_double_buffer_wr_ptr == 0;
                assign wr_en_0 = wr_valid & wr_ready & ~wr_dummy;

                wire [31:0] data_in_0_column = wr_data_meta[(i%8)*32+:32];
                wire [31:0] data_in_0_row = wr_data_meta[(j%8)*32+:32];

                buff_cell buff_cell_0 (
                    .clk(clk),
                    .wr_data(in_mode == 0 ? data_in_0_column : data_in_0_row),
                    .cs(cs_0),
                    .wr_en(wr_en_0),
                
                    .rd_data(_buf_0_data_out[i*BUFFER_SIZE*32 + j*32 +: 32])
                );
            end
        end

        wire [BUFFER_SIZE*32-1:0] data_out_0_column;
        wire [BUFFER_SIZE*32-1:0] data_out_0_row;
        for (i = 0; i < BUFFER_SIZE; i = i + 1) begin
            assign data_out_0_column[i*32+:32] = _buf_0_data_out[i*BUFFER_SIZE*32 + rd_index*32 +: 32];
        end
        assign data_out_0_row = _buf_0_data_out[rd_index*BUFFER_SIZE*32 +: BUFFER_SIZE*32];

        assign data_out_0 = out_mode == 0 ? data_out_0_column : data_out_0_row;

        ////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////
        for (i = 0; i < BUFFER_SIZE; i = i + 1) begin: _ROW_1
            for (j = 0; j < BUFFER_SIZE; j = j + 1) begin: _COLUMN_1
                assign cs_1 = dummy_cs[i*BUFFER_SIZE+j] & dummy_double_buffer_wr_ptr == 1;
                assign wr_en_1 = wr_valid & wr_ready & ~wr_dummy;

                wire [31:0] data_in_1_column = wr_data_meta[(i%8)*32+:32];
                wire [31:0] data_in_1_row = wr_data_meta[(j%8)*32+:32];

                buff_cell buff_cell_1 (
                    .clk(clk),
                    .wr_data(in_mode == 0 ? data_in_1_column : data_in_1_row),
                    .cs(cs_1),
                    .wr_en(wr_en_1),
                
                    .rd_data(_buf_1_data_out[i*BUFFER_SIZE*32 + j*32 +: 32])
                );
            end
        end

        wire [BUFFER_SIZE*32-1:0] data_out_1_column;
        wire [BUFFER_SIZE*32-1:0] data_out_1_row;
        for (i = 0; i < BUFFER_SIZE; i = i + 1) begin
            assign data_out_1_column[i*32+:32] = _buf_1_data_out[i*BUFFER_SIZE*32 + rd_index*32 +: 32];
        end
        assign data_out_1_row = _buf_1_data_out[rd_index*BUFFER_SIZE*32 +: BUFFER_SIZE*32];

        assign data_out_1 = out_mode == 0 ? data_out_1_column : data_out_1_row;
    endgenerate
    assign rd_data = double_buffer_rd_ptr[0] == 0 ? data_out_0 : data_out_1;

endmodule

module buff_cell (
    input clk,
    input [31:0] wr_data,
    input cs,
    input wr_en,

    output [31:0] rd_data
);
reg [31:0] buf_cell;
always @(posedge clk) begin
    if (cs & wr_en) begin
        buf_cell <= wr_data;
    end
end
assign rd_data = buf_cell;

endmodule