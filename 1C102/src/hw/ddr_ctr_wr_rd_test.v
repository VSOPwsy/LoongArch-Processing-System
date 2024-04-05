module ddr_ctr_wr_rd_test (
    input clk,
    input rstn,

    output wire [31:0] awaddr,
    output reg awvalid,
    output wire awburst,
    output wire awsize,
    output wire [7:0] awlen,
    input awready,

    output wire [31:0] wdata,
    output wire [15:0] wstrb,
    output reg wvalid,
    input wire wready,

    output wire bready,

    output wire [31:0] araddr,
    output reg arvalid,
    output wire [7:0] arlen,
    input arready,

    output wire rready,

    input wire  [31:0] rdata,
    input wire  rvalid,
    output reg led,   

    input ddr_ready
);

assign awaddr = 32'h81000000;
assign wdata = 32'h1212_1212;
assign wstrb = 16'h000C;
assign awburst = 2'b01;
assign awsize = 3'd2;
assign awlen = 0;

assign araddr = 32'h81000000;
assign arlen = 0;

assign rready = 1'b1;
assign bready = 1'b1;

reg wrflag = 0;
always @(posedge clk) begin
    if (~rstn | ~ddr_ready) begin
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
    if (~rstn | ~ddr_ready) begin
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

always @(posedge clk ) begin
    if (~rstn) begin
        led <= 0;
    end
    else begin
        if ((rvalid) & (rdata == wdata)) led <= 1;
        else led <= 0;
    end
end

endmodule