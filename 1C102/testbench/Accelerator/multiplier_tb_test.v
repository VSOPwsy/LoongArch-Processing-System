module multiplier_tb_test;

  // Parameters

  //Ports
  reg  clk;
  reg  rst;
  reg [31:0] input_a;
  reg [31:0] input_b;
  wire [31:0] output_z;
  float_mult float_mult(clk,~rst,input_a,input_b,output_z);

always #5  clk = ! clk ;
initial begin
    clk = 0;
    rst = 0;
    #10;
    rst = 1;
    #10;
    rst = 0;

    @(posedge clk);
    input_a = 32'h3F47AE14;
    input_b = 32'h3F0CCCCD;

    #100;
    $finish;
end 

endmodule