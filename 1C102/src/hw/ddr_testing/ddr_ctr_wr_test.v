module ddr_ctr_wr_test (
    input clk,
    input rstn,

    output wire [31:0] awaddr,
    output reg awvalid,
    output wire [7:0] awlen,
    input awready,

    output wire [128:0] wdata,
    output wire [16:0] wstrb,
    output reg wvalid,
    input wire wready,

    input ddr_ready
);

assign awaddr = 32'h0000f000;
assign wdata = 128'h00000000_00000000_12345678_87654321;
assign wstrb = 16'hffff;
assign awlen = 0;
reg flag = 0;
always @(posedge clk) begin
    if (~rstn) begin
        awvalid <= 1'b0;
        wvalid <= 1'b0;
        flag <= 0;
    end
    else begin
        if (~flag) begin
            if (ddr_ready) begin
                flag <= 1;
                awvalid <= 1;
                wvalid <= 1;
            end
        end
        else begin
            if (awready & awvalid) begin
                awvalid <= 0;
            end

            if (wready & wvalid) begin
                wvalid <= 0;
            end
        end
    end
end

endmodule