module ddr_ctr_rd_test (
    input clk,
    input rstn,
    output wire [31:0] araddr,
    output reg arvalid,
    output wire [7:0] arlen,
    output wire [2:0] arsize,
    output wire [1:0] arburst,
    input arready,
    output rready,
    input ddr_ready
);

assign araddr = 32'h8100_0000;
assign arlen = 'd3;
assign arsize = 'd4;
assign arburst =2'b01;
assign rready = 1'b1;
reg flag = 0;
always @(posedge clk) begin
    if (~rstn) begin
        arvalid <= 1'b0;
        flag <= 0;
    end
    else begin
        if (~flag) begin
            if (ddr_ready) begin
                flag <= 1;
                arvalid <= 1;
            end
        end
        else if (arready & arvalid) begin
            arvalid <= 0;
        end
    end
end

endmodule