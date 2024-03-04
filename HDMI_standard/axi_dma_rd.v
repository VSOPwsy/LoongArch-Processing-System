`resetall
`timescale 1ns / 1ps
`default_nettype none

module stream_generator #
(
    parameter AXIS_DATA_WIDTH = 8,
    parameter AXIS_KEEP_WIDTH = (AXIS_DATA_WIDTH/8),
    parameter AXIS_ID_WIDTH = 8,
    parameter AXIS_DEST_WIDTH = 8,
    parameter AXIS_USER_WIDTH = 1
)
(
    input  wire                       clk,
    input  wire                       rst,

    /*
     * AXI stream read data output
     */
    output wire [AXIS_DATA_WIDTH-1:0] m_axis_read_data_tdata,
    output wire [AXIS_KEEP_WIDTH-1:0] m_axis_read_data_tkeep,
    output wire                       m_axis_read_data_tvalid,
    input  wire                       m_axis_read_data_tready,
    output wire                       m_axis_read_data_tlast,
    output wire [AXIS_ID_WIDTH-1:0]   m_axis_read_data_tid,
    output wire [AXIS_DEST_WIDTH-1:0] m_axis_read_data_tdest,
    output wire [AXIS_USER_WIDTH-1:0] m_axis_read_data_tuser

);

parameter OUTPUT_FIFO_ADDR_WIDTH = 5;

// output datapath logic
reg [AXIS_DATA_WIDTH-1:0] m_axis_read_data_tdata_reg  = {AXIS_DATA_WIDTH{1'b0}};
reg [AXIS_KEEP_WIDTH-1:0] m_axis_read_data_tkeep_reg  = {AXIS_KEEP_WIDTH{1'b0}};
reg                       m_axis_read_data_tvalid_reg = 1'b0;
reg                       m_axis_read_data_tlast_reg  = 1'b0;
reg [AXIS_ID_WIDTH-1:0]   m_axis_read_data_tid_reg    = {AXIS_ID_WIDTH{1'b0}};
reg [AXIS_DEST_WIDTH-1:0] m_axis_read_data_tdest_reg  = {AXIS_DEST_WIDTH{1'b0}};
reg [AXIS_USER_WIDTH-1:0] m_axis_read_data_tuser_reg  = {AXIS_USER_WIDTH{1'b0}};

reg [OUTPUT_FIFO_ADDR_WIDTH+1-1:0] out_fifo_wr_ptr_reg = 0;
reg [OUTPUT_FIFO_ADDR_WIDTH+1-1:0] out_fifo_rd_ptr_reg = 0;
reg out_fifo_half_full_reg = 1'b0;

wire out_fifo_full = 1'b0;
wire out_fifo_empty = 1'b0;

(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [AXIS_DATA_WIDTH-1:0] out_fifo_tdata[2**OUTPUT_FIFO_ADDR_WIDTH-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [AXIS_KEEP_WIDTH-1:0] out_fifo_tkeep[2**OUTPUT_FIFO_ADDR_WIDTH-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg                       out_fifo_tlast[2**OUTPUT_FIFO_ADDR_WIDTH-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [AXIS_ID_WIDTH-1:0]   out_fifo_tid[2**OUTPUT_FIFO_ADDR_WIDTH-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [AXIS_DEST_WIDTH-1:0] out_fifo_tdest[2**OUTPUT_FIFO_ADDR_WIDTH-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [AXIS_USER_WIDTH-1:0] out_fifo_tuser[2**OUTPUT_FIFO_ADDR_WIDTH-1:0];


assign m_axis_read_data_tdata  = m_axis_read_data_tdata_reg;
assign m_axis_read_data_tkeep  = {AXIS_KEEP_WIDTH{1'b1}};
assign m_axis_read_data_tvalid = m_axis_read_data_tvalid_reg;
assign m_axis_read_data_tlast  = 1'b1;
assign m_axis_read_data_tid    = {AXIS_ID_WIDTH{1'b0}};
assign m_axis_read_data_tdest  = {AXIS_DEST_WIDTH{1'b0}};
assign m_axis_read_data_tuser  = {AXIS_USER_WIDTH{1'b0}};

reg [31:0] x_cnt = 0;

always @(posedge clk) begin
    m_axis_read_data_tvalid_reg <= m_axis_read_data_tvalid_reg && !m_axis_read_data_tready;

    out_fifo_tdata[out_fifo_wr_ptr_reg[OUTPUT_FIFO_ADDR_WIDTH-1:0]] <= {AXIS_DATA_WIDTH{1'b1}};
    out_fifo_tkeep[out_fifo_wr_ptr_reg[OUTPUT_FIFO_ADDR_WIDTH-1:0]] <= {AXIS_KEEP_WIDTH{1'b1}};
    out_fifo_tlast[out_fifo_wr_ptr_reg[OUTPUT_FIFO_ADDR_WIDTH-1:0]] <= x_cnt == (3*1280 - 1);
    out_fifo_tid[out_fifo_wr_ptr_reg[OUTPUT_FIFO_ADDR_WIDTH-1:0]] <= 0;
    out_fifo_tdest[out_fifo_wr_ptr_reg[OUTPUT_FIFO_ADDR_WIDTH-1:0]] <= 0;
    out_fifo_tuser[out_fifo_wr_ptr_reg[OUTPUT_FIFO_ADDR_WIDTH-1:0]] <= 0;
    out_fifo_wr_ptr_reg <= out_fifo_wr_ptr_reg + 1;
    x_cnt <= x_cnt == (3*1280 - 1) ? 0 : x_cnt + 1;


    if (!out_fifo_empty && (!m_axis_read_data_tvalid_reg || m_axis_read_data_tready)) begin
        m_axis_read_data_tdata_reg <= out_fifo_tdata[out_fifo_rd_ptr_reg[OUTPUT_FIFO_ADDR_WIDTH-1:0]];
        m_axis_read_data_tkeep_reg <= out_fifo_tkeep[out_fifo_rd_ptr_reg[OUTPUT_FIFO_ADDR_WIDTH-1:0]];
        m_axis_read_data_tvalid_reg <= 1'b1;
        m_axis_read_data_tlast_reg <= out_fifo_tlast[out_fifo_rd_ptr_reg[OUTPUT_FIFO_ADDR_WIDTH-1:0]];
        m_axis_read_data_tid_reg <= out_fifo_tid[out_fifo_rd_ptr_reg[OUTPUT_FIFO_ADDR_WIDTH-1:0]];
        m_axis_read_data_tdest_reg <= out_fifo_tdest[out_fifo_rd_ptr_reg[OUTPUT_FIFO_ADDR_WIDTH-1:0]];
        m_axis_read_data_tuser_reg <= out_fifo_tuser[out_fifo_rd_ptr_reg[OUTPUT_FIFO_ADDR_WIDTH-1:0]];
        out_fifo_rd_ptr_reg <= out_fifo_rd_ptr_reg + 1;
    end

    if (rst) begin
        out_fifo_wr_ptr_reg <= 0;
        out_fifo_rd_ptr_reg <= 0;
        m_axis_read_data_tvalid_reg <= 1'b0;
    end
end

endmodule

`resetall
