`timescale 1 ns / 1 ps

module tb_myip_v2_0_S00_AXIS;

parameter C_S_AXIS_TDATA_WIDTH = 24;
parameter DATA_DEPTH = 1280;

reg S_AXIS_ACLK;
reg S_AXIS_ARESETN;
reg [C_S_AXIS_TDATA_WIDTH-1 : 0] S_AXIS_TDATA;
reg S_AXIS_TVALID;
reg S_AXIS_TLAST;

reg R_AXIS_ACLK;
reg R_AXIS_ARESETN;

wire S_AXIS_TREADY;
wire [C_S_AXIS_TDATA_WIDTH-1:0] R_AXIS_Out;

myip_v2_0_S00_AXIS #(
    .C_S_AXIS_TDATA_WIDTH(C_S_AXIS_TDATA_WIDTH),
    .DATA_DEPTH(DATA_DEPTH)
) uut (
    .S_AXIS_ACLK(S_AXIS_ACLK), 
    .S_AXIS_ARESETN(S_AXIS_ARESETN), 
    .S_AXIS_TDATA(S_AXIS_TDATA), 
    .S_AXIS_TVALID(S_AXIS_TVALID), 
    .S_AXIS_TLAST(S_AXIS_TLAST),
    .R_AXIS_ACLK(R_AXIS_ACLK), 
    .R_AXIS_ARESETN(R_AXIS_ARESETN),
    .S_AXIS_TREADY(S_AXIS_TREADY), 
    .R_AXIS_Out(R_AXIS_Out)
);

initial begin
    S_AXIS_ACLK = 0;
    S_AXIS_ARESETN = 0;
    S_AXIS_TDATA = 0;
    S_AXIS_TVALID = 0;
    S_AXIS_TLAST = 0;
    R_AXIS_ACLK = 0;
    R_AXIS_ARESETN = 0;

    #20;
    S_AXIS_ARESETN = 1;
    R_AXIS_ARESETN = 1;
    S_AXIS_TVALID = 1;

    repeat (1500) begin // 写入超过1280个数据来测试FIFO的行为
        @ (posedge S_AXIS_ACLK);
        S_AXIS_TDATA = $random;
    end
    S_AXIS_TVALID = 0;
    
    // 测试结束
    #1000;
    $finish;
end

always #5 S_AXIS_ACLK = ~S_AXIS_ACLK; // Generate write clock
always #7 R_AXIS_ACLK = ~R_AXIS_ACLK; // Generate read clock with a different period

endmodule
