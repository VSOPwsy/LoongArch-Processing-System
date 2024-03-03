`timescale 1ns / 1ps

module myip_v1_0_S00_AXIS_tb;

  // Testbench Parameters
  localparam C_S_AXIS_TDATA_WIDTH = 24; // RGB888
  localparam integer CLK_PERIOD = 10; // Clock period: 10ns -> 100MHz
  localparam NUMBER_OF_INPUT = 1280; // FIFO size for the test
  
  // DUT Inputs
  reg S_AXIS_ACLK;
  reg S_AXIS_ARESETN;
  reg [C_S_AXIS_TDATA_WIDTH-1:0] S_AXIS_TDATA;
  reg [(C_S_AXIS_TDATA_WIDTH/8)-1:0] S_AXIS_TSTRB;
  reg S_AXIS_TVALID;
  reg S_AXIS_TLAST;

  // DUT Outputs
  wire S_AXIS_TREADY;
  wire [C_S_AXIS_TDATA_WIDTH-1:0] S_AXIS_Out;

  // Instantiate the Unit Under Test (UUT)
  myip_v1_0_S00_AXIS #(
    .C_S_AXIS_TDATA_WIDTH(C_S_AXIS_TDATA_WIDTH)
  ) UUT (
    .S_AXIS_ACLK(S_AXIS_ACLK),
    .S_AXIS_ARESETN(S_AXIS_ARESETN),
    .S_AXIS_TDATA(S_AXIS_TDATA),
    .S_AXIS_TSTRB(S_AXIS_TSTRB),
    .S_AXIS_TVALID(S_AXIS_TVALID),
    .S_AXIS_TLAST(S_AXIS_TLAST),
    .S_AXIS_TREADY(S_AXIS_TREADY),
    .S_AXIS_Out(S_AXIS_Out)
  );

  // Clock generation
  initial begin
    S_AXIS_ACLK = 0;
    forever #(CLK_PERIOD/2) S_AXIS_ACLK = ~S_AXIS_ACLK;
  end

  // Reset generation
  initial begin
    S_AXIS_ARESETN = 0;
    #10;
    S_AXIS_ARESETN = 1; // Release reset
  end

  // Test scenarios
  initial begin
    // Initialize inputs
    S_AXIS_TDATA = 0;
    S_AXIS_TSTRB = {(C_S_AXIS_TDATA_WIDTH/8){1'b1}}; // All bytes are valid
    S_AXIS_TVALID = 0;
    S_AXIS_TLAST = 0;
    
    // Wait for reset de-assertion
    @(posedge S_AXIS_ARESETN);
    #10; // Additional wait time for reset stabilization

    // Generate continuous packets until FIFO is full
    repeat(NUMBER_OF_INPUT) begin
      @(posedge S_AXIS_ACLK);
      if (S_AXIS_TREADY) begin
        S_AXIS_TDATA = $random; // Random data for each packet
        S_AXIS_TVALID = 1;
      end
      else begin
        S_AXIS_TDATA = S_AXIS_TDATA; // Random data for each packet
        S_AXIS_TVALID = 1;
      end
    end

    // Stop pushing data, simulate end of data stream
    @(posedge S_AXIS_ACLK);
    S_AXIS_TVALID = 0; 

    repeat(2000) @(posedge S_AXIS_ACLK); //wait for read

    /**********next_signal**********/
    repeat(NUMBER_OF_INPUT) begin
      @(posedge S_AXIS_ACLK);
      if (S_AXIS_TREADY) begin
        S_AXIS_TDATA = $random; // Random data for each packet
        S_AXIS_TVALID = 1;
      end
      else begin
        S_AXIS_TDATA = S_AXIS_TDATA; // Random data for each packet
        S_AXIS_TVALID = 1;
      end
    end
    @(posedge S_AXIS_ACLK);
    S_AXIS_TVALID = 0; 
    repeat(2000) @(posedge S_AXIS_ACLK); //wait for read

    // End of simulation
    S_AXIS_TLAST = 1;
    #100;
    $finish;
  end

endmodule

