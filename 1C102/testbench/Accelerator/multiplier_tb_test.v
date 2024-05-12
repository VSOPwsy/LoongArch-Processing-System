module multiplier_tb_test;

  // Parameters

  //Ports
  reg  clk;
  reg  rst;
  reg [31:0] input_a;
  reg [31:0] input_b;
  wire [31:0] output_z;

  multiplier  multiplier_inst (
    .clk(clk),
    .rst(rst),
    .input_a(input_a),
    .input_b(input_b),
    .output_z(output_z)
  );

always #5  clk = ! clk ;
initial begin
    clk = 0;
    rst = 0;
    #10;
    rst = 1;
    #10;
    rst = 0;

    input_a = 32'h3F47AE14;
    input_b = 32'h3F0CCCCD;

    #100;
    $finish;
end

endmodule