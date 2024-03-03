`timescale 1 ns / 1 ps

module myip_v2_0_S00_AXIS #
(
    parameter integer C_S_AXIS_TDATA_WIDTH    = 24, // RGB888
    parameter integer DATA_DEPTH = 1280, // FIFO深度，一行1280个像素
    parameter integer WRITE_CLK_DOMAIN = 0, // 0 for S_AXIS_ACLK, 1 for another clock domain if needed
    parameter integer READ_CLK_DOMAIN = 0 // 0 for S_AXIS_ACLK, use different domain if needed
)
(
    input wire  S_AXIS_ACLK, // Write Clock
    input wire  S_AXIS_ARESETN, // Reset, active low
    input wire [C_S_AXIS_TDATA_WIDTH-1 : 0] S_AXIS_TDATA, // Data in
    input wire  S_AXIS_TVALID, // Data valid signal
    input wire  S_AXIS_TLAST, // End of frame signal

    input wire  R_AXIS_ACLK, // Read Clock
    input wire  R_AXIS_ARESETN, // Reset for read clock domain

    output wire  S_AXIS_TREADY, // Ready to accept data signal
    output reg [C_S_AXIS_TDATA_WIDTH-1:0] R_AXIS_Out // Data out
);

// function called clogb2 that returns an integer which has the value of the ceiling of the log base 2.
function integer clogb2 (input integer bit_depth);
begin
  for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
    bit_depth = bit_depth >> 1;
end
endfunction

localparam bit_num  = clogb2(DATA_DEPTH-1);
reg [C_S_AXIS_TDATA_WIDTH-1:0] fifo[DATA_DEPTH-1:0]; // FIFO storage
reg [bit_num-1:0] write_pointer = 0, read_pointer = 0;
reg [bit_num:0] fifo_count = 0; // Extended size for overflow detection

// Convert pointers to Gray code to ensure synchronization across clock domains
function [bit_num-1:0] binary_to_gray(input [bit_num-1:0] binary);
    begin
        binary_to_gray = binary ^ (binary >> 1);
    end
endfunction

function [bit_num-1:0] gray_to_binary(input [bit_num-1:0] gray);
    integer i;
    begin
        for (i = 0; i < bit_num; i = i + 1) begin
            gray_to_binary[i] = ^(gray >> i);
        end
    end
endfunction

reg [bit_num-1:0] gray_write_pointer, gray_read_pointer;
reg [bit_num-1:0] synced_gray_write_pointer, synced_gray_read_pointer;

// Sync Gray pointers across clock domains
always @(posedge S_AXIS_ACLK) begin
    if (!S_AXIS_ARESETN) begin
        gray_write_pointer <= 0;
    end else begin
        gray_write_pointer <= binary_to_gray(write_pointer);
    end
end

always @(posedge R_AXIS_ACLK) begin
    if (!R_AXIS_ARESETN) begin
        synced_gray_write_pointer <= 0;
    end else begin
        synced_gray_write_pointer <= gray_write_pointer;
    end
end

always @(posedge R_AXIS_ACLK) begin
    if (!R_AXIS_ARESETN) begin
        gray_read_pointer <= 0;
    end else begin
        gray_read_pointer <= binary_to_gray(read_pointer);
    end
end

always @(posedge S_AXIS_ACLK) begin
    if (!S_AXIS_ARESETN) begin
        synced_gray_read_pointer <= 0;
    end else begin
        synced_gray_read_pointer <= gray_read_pointer;
    end
end

// Implement FIFO write logic
always @(posedge S_AXIS_ACLK) begin
    if (!S_AXIS_ARESETN) begin
        write_pointer <= 0;
    end else if (S_AXIS_TVALID && S_AXIS_TREADY) begin
        fifo[write_pointer] <= S_AXIS_TDATA;
        write_pointer <= (write_pointer + 1) % DATA_DEPTH;
    end
end

assign S_AXIS_TREADY = (~S_AXIS_TLAST) && ((write_pointer == 0)&&(read_pointer == 0)||((gray_to_binary(synced_gray_read_pointer) != (write_pointer + 1)) && (gray_to_binary(synced_gray_read_pointer) != write_pointer)));

// Implement FIFO read logic
always @(posedge R_AXIS_ACLK) begin
    if (!R_AXIS_ARESETN) begin
        read_pointer <= 0;
    end 
    else if (gray_to_binary(synced_gray_write_pointer) != read_pointer) begin // Read when FIFO is not empty
        R_AXIS_Out <= fifo[read_pointer];
        read_pointer <= (read_pointer + 1) % DATA_DEPTH;
    end
end

endmodule
