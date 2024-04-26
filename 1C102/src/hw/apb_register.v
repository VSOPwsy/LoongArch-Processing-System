`include "config.v"

module apb_register # (
    parameter ADDR_WIDTH = 32,
    parameter DATA_WIDTH = 32,
    parameter REG_NUM = 8,
    parameter REG_DATA_WIDTH = 32
)
(
    input clk,
    input resetn,
    input reg_apb_wen,
    input [REG_DATA_WIDTH-1:0] reg_apb_wdata,
    input [$clog2(REG_NUM_EFF)-1:0] reg_apb_addr,

    input yjq_wen,
    input [REG_DATA_WIDTH-1:0] yjq_wdata,
    input [$clog2(REG_NUM_EFF)-1:0] yjq_addr,

    output reg [REG_DATA_WIDTH-1:0] R0,
    output reg [REG_DATA_WIDTH-1:0] R1,
    output reg [REG_DATA_WIDTH-1:0] R2,
    output reg [REG_DATA_WIDTH-1:0] R3,
    output reg [REG_DATA_WIDTH-1:0] R4,
    output reg [REG_DATA_WIDTH-1:0] R5,
    output reg [REG_DATA_WIDTH-1:0] R6,
    output reg [REG_DATA_WIDTH-1:0] R7
);

localparam REG_NUM_EFF = REG_NUM < 2 ? 2 : REG_NUM;
localparam LOG2_REG_NUM = $clog2(REG_NUM_EFF);
localparam LOG2_REG_BYTE_ADDR_WIDTH = $clog2(REG_DATA_WIDTH/8);
initial begin
    R0 = 0;
    R1 = 0;
    R2 = 0;
    R3 = 0;
    R4 = 0;
    R5 = 0;
    R6 = 0;
    R7 = 0;
end

always @(posedge clk or negedge resetn) begin
    if (~resetn) begin
        R0 <= 0;
        R1 <= 0;
        R2 <= 0;
        R3 <= 0;
        R4 <= 0;
        R5 <= 0;
        R6 <= 0;
        R7 <= 0;
    end
    else begin
        if (reg_apb_wen) begin
            R0 <= reg_apb_addr == 'd0 ? reg_apb_wdata : R0;
            R1 <= reg_apb_addr == 'd1 ? reg_apb_wdata : R1;
            R2 <= reg_apb_addr == 'd2 ? reg_apb_wdata : R2;
            R3 <= reg_apb_addr == 'd3 ? reg_apb_wdata : R3;
            R4 <= reg_apb_addr == 'd4 ? reg_apb_wdata : R4;
            R5 <= reg_apb_addr == 'd5 ? reg_apb_wdata : R5;
            R6 <= reg_apb_addr == 'd6 ? reg_apb_wdata : R6;
            R7 <= reg_apb_addr == 'd7 ? reg_apb_wdata : R7;
        end
        else if (yjq_wen) begin
            R0 <= yjq_addr == 'd0 ? yjq_wdata : R0;
            R1 <= yjq_addr == 'd1 ? yjq_wdata : R1;
            R2 <= yjq_addr == 'd2 ? yjq_wdata : R2;
            R3 <= yjq_addr == 'd3 ? yjq_wdata : R3;
            R4 <= yjq_addr == 'd4 ? yjq_wdata : R4;
            R5 <= yjq_addr == 'd5 ? yjq_wdata : R5;
            R6 <= yjq_addr == 'd6 ? yjq_wdata : R6;
            R7 <= yjq_addr == 'd7 ? yjq_wdata : R7;
        end
        else begin
            R0 <= R0;
            R1 <= R1;
            R2 <= R2;
            R3 <= R3;
            R4 <= R4;
            R5 <= R5;
            R6 <= R6;
            R7 <= R7; 
        end
    end
end

endmodule
