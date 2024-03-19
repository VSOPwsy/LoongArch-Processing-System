module ddr_ctr_wr_rd_test (
    input clk,
    input rstn,

    output wire [31:0] awaddr,
    output reg awvalid,
    output wire [7:0] awlen,
    input awready,

    output wire [31:0] wdata,
    output wire [3:0] wstrb,
    output reg wvalid,
    input wire wready,

    output wire [31:0] araddr,
    output reg arvalid,
    output wire [7:0] arlen,
    input arready,

    output wire rready,

    input ddr_ready
);

assign awaddr = 32'h0000f000;
assign wdata = 32'h87654321;
assign wstrb = 16'h0000;
assign awlen = 0;

assign araddr = 32'h0000f000;
assign arlen = 0;

assign rready = 1'b1;

reg wrflag = 0;
always @(posedge clk) begin
    if (~rstn) begin
        awvalid <= 1'b0;
        wvalid <= 1'b0;
        wrflag <= 0;
    end
    else begin
        if (~wrflag) begin
            if (ddr_ready) begin
                wrflag <= 1;
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

reg rdflag = 0;
always @(posedge clk) begin
    if (~rstn) begin
        arvalid <= 1'b0;
        rdflag <= 1'b0;
    end
    else begin
        if (wrflag) begin
            if (~rdflag) begin
                if (ddr_ready) begin
                    rdflag <= 1;
                    arvalid <= 1;
                end
            end
            else if (arready & arvalid) begin
                arvalid <= 0;
            end
        end
    end
end

endmodule