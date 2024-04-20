module ddr_ctr_wr_rd_test #(
    parameter DATA_WIDTH    = 256
) (
    input clk,
    input rstn,

    output wire [31:0] awaddr,
    output wire [7:0] awid,
    output reg awvalid,
    output wire [1:0] awburst,
    output wire [2:0] awsize,
    output wire [3:0] awlen,
    input awready,

    output wire [DATA_WIDTH-1:0] wdata,
    output wire [31:0] wstrb,
    output wire wlast,
    output reg wvalid,
    input wire wready,

    input wire bvalid,
    output wire bready,

    output wire [31:0] araddr,
    output wire [7:0] arid,
    output reg arvalid,
    output wire [1:0] arburst,
    output wire [2:0] arsize,
    output wire [3:0] arlen,
    input arready,


    input wire [DATA_WIDTH-1:0] rdata,
    input wire rvalid,
    output wire rready,
    output led,   

    input ddr_ready
);

assign awaddr = 32'h40000000;
assign awid = 8'h10;
assign wdata = 256'h1234567887654321_9876543223456789_1234567887654321_9876543223456789;
assign wstrb = 32'hFFFFFFFF;
assign wlast = 1'b1;
assign awburst = 2'b01;
assign awsize = 3'd5;
assign awlen = 0;

assign araddr = 32'h40000000;
assign arid = 8'h10;
assign arlen = 0;
assign arburst = 2'b01;
assign arsize = 3'd5;
assign arlen = 0;

assign rready = 1'b1;
assign bready = 1'b1;

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

reg wrdone = 0;
always @(posedge clk) begin
    if (~rstn) begin
        wrdone <= 0;
    end
    else begin
        if (bvalid & bready) begin
            wrdone <= 1;
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
        if (wrdone) begin
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
reg [DATA_WIDTH-1:0] rdata_reg = 0;
reg rddone;
always @(posedge clk) begin
    if (~rstn) begin
        rdata_reg <= 0;
        rddone <= 0;
    end
    else begin
        if (rvalid & rready) begin
            if (~rddone) begin
                rdata_reg <= rdata;
                rddone <= 1;
            end
            else begin
                rdata_reg <= 0;
            end
        end
    end
end

assign led = ~(rddone && rdata_reg == wdata);

endmodule