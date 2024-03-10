`timescale 1 ns / 1 ps

module myip_v2_0_S00_AXIS #
(
    parameter integer C_S_AXIS_TDATA_WIDTH  = 8, // RGB888 FIFO的位宽8，写FIFO位宽32，读FIFO位宽24
    parameter integer DATA_DEPTH = 960 // FIFO 深度
    //FIFO深度计算：一行1280个像素，每个像素3*8位，FIFO位宽8，需要FIFO深度：1280*3*8/8/4 = 960 
)
(
    input wire  S_AXIS_ACLK, // Write Clock
    input wire  S_AXIS_ARESETN, // Reset, active low
    input wire [C_S_AXIS_TDATA_WIDTH*4-1 : 0] S_AXIS_TDATA, // Data in
    input wire  S_AXIS_TVALID, // Data valid signal
    input wire  S_AXIS_TLAST, // End of frame signal

    input wire  R_AXIS_ACLK, // Read Clock
    input wire  R_AXIS_ARESETN, // Reset for read clock domain

    output wire  S_AXIS_TREADY, // Ready to accept data signal
    output reg [C_S_AXIS_TDATA_WIDTH*3-1:0] R_AXIS_Out // Data out
);

// function called clogb2 that returns an integer which has the value of the ceiling of the log base 2.
function integer clogb2 (input integer bit_depth);
begin
  for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
    bit_depth = bit_depth >> 1;
end
endfunction

localparam bit_num  = clogb2(DATA_DEPTH-1);
reg [C_S_AXIS_TDATA_WIDTH-1:0] fifo_1[DATA_DEPTH-1:0]; // FIFO storage_1
reg [C_S_AXIS_TDATA_WIDTH-1:0] fifo_2[DATA_DEPTH-1:0]; // FIFO storage_2
reg [C_S_AXIS_TDATA_WIDTH-1:0] fifo_3[DATA_DEPTH-1:0]; // FIFO storage_3
reg [C_S_AXIS_TDATA_WIDTH-1:0] fifo_4[DATA_DEPTH-1:0]; // FIFO storage_4
reg [bit_num-1:0] write_pointer = 0, read_pointer = 0, read_last_pointer = 0;

reg [1:0] read_state,read_nextstate;
parameter READ_123 = 2'b00, READ_412 = 2'b01, READ_341 = 2'b10, READ_234 = 2'b11;

reg S_AXIS_TLAST_d;
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

always @(posedge S_AXIS_ACLK ) begin
    if (!S_AXIS_ARESETN) begin
        S_AXIS_TLAST_d <= 0;
    end else begin
        S_AXIS_TLAST_d <= S_AXIS_TLAST;
    end
end


// Implement FIFO write logic
always @(posedge S_AXIS_ACLK) begin:Write_logic
    if (!S_AXIS_ARESETN) begin
        write_pointer <= 0;
    end else if (S_AXIS_TVALID) begin
        fifo_1[write_pointer] <= S_AXIS_TDATA[7:0];
        fifo_2[write_pointer] <= S_AXIS_TDATA[15:8];
        fifo_3[write_pointer] <= S_AXIS_TDATA[23:16];
        fifo_4[write_pointer] <= S_AXIS_TDATA[31:24];
        if (write_pointer == DATA_DEPTH - 1) begin
            write_pointer <= 0;
        end
        else begin
            write_pointer <= write_pointer + 1;
        end
    end
end

//ready：read/write pointer均为0  或  read在write之后  并且 S_AXIS_TLAST_d 未拉高
assign S_AXIS_TREADY = (~S_AXIS_TLAST_d) && (((write_pointer == 0)&&(read_pointer == 0))||((gray_to_binary(synced_gray_read_pointer) != (write_pointer + 1)) && (gray_to_binary(synced_gray_read_pointer) != write_pointer)));

// Implement FIFO read logic
always @(posedge R_AXIS_ACLK) begin:Read_logic
    if (!R_AXIS_ARESETN) begin
        read_last_pointer <= 0;
        read_pointer <= 0;
        read_state   <= 0;
        read_nextstate <= 0;
    end 
    else if (gray_to_binary(synced_gray_write_pointer) != read_pointer) begin // Read when FIFO is not empty
        case (read_state)
            READ_123: begin
                R_AXIS_Out <= {fifo_1[read_pointer], fifo_2[read_pointer], fifo_3[read_pointer]};
                read_nextstate <= READ_412;
                if (read_pointer == DATA_DEPTH - 1) begin
                    read_pointer <= 0;
                end
                else begin
                    read_pointer <= read_pointer + 1;
                end
            end

            READ_412:begin
                R_AXIS_Out <= {fifo_4[read_last_pointer], fifo_1[read_pointer], fifo_2[read_pointer]};
                read_nextstate <= READ_341;
                if (read_pointer == DATA_DEPTH - 1) begin
                    read_pointer <= 0;
                end
                else begin
                    read_pointer <= read_pointer + 1;
                end
            end

            READ_341:begin
                R_AXIS_Out <= {fifo_3[read_last_pointer], fifo_4[read_last_pointer], fifo_1[read_pointer]};
                read_nextstate <= READ_234;
                if (read_pointer == DATA_DEPTH - 1) begin
                    read_pointer <= 0;
                end
                else begin
                    read_pointer <= read_pointer + 1;
                end
            end

            READ_234:begin
                R_AXIS_Out <= {fifo_2[read_last_pointer], fifo_3[read_last_pointer], fifo_4[read_last_pointer]};
                read_nextstate <= READ_123;
                read_pointer <= read_pointer;
            end
            default:begin
                R_AXIS_Out <= 0;
                read_nextstate <= read_nextstate;
            end 
        endcase
        read_state <= read_nextstate;
        read_last_pointer <= read_pointer;
    end
end

endmodule
