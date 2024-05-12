module Matrix_m_tb();
parameter MATRIX_SIZE  = 32;
parameter BUFFER_SIZE  = 8;
parameter WIDTH        = 32; //FP32
parameter INDEX        = 2*MATRIX_SIZE*MATRIX_SIZE;
parameter FILE_PATH   = "D:/E/STUDY/competition/0403/LoongArch-Processing-System/1C102/testbench/hex_matrix.txt";
reg     [WIDTH-1: 0]    data_read [INDEX-1: 0];
reg     [WIDTH-1: 0]    Matrix_A  [INDEX/2-1: 0];
reg     [WIDTH-1: 0]    Matrix_B  [INDEX/2-1: 0];
reg     sys_clk;
reg     sys_resetn;
reg     [4:0] cnt;
integer i,j,k;

reg [255:0] data_in;
reg [$clog2(BUFFER_SIZE):0] index_in,index_out;
reg in_last;
reg in_valid;
wire in_ready;
wire out_valid,out_last,data_out,out_ready;

always #5  sys_clk = ! sys_clk ;
initial begin
    sys_clk = 1;
    #0;
    sys_resetn = 0;
    in_last = 0;
    in_valid = 0;
    #30;
    sys_resetn = 1;
    #10000000;
    $finish;
end

initial begin
    $readmemh(FILE_PATH, data_read, 0);
    for (i = 0; i < INDEX/2; i = i + 1) begin
        Matrix_A[i] = data_read[i];
    end
    for (i = 0; i < INDEX/2; i = i + 1) begin
        Matrix_B[i] = data_read[i + INDEX/2];
    end
    #50;
    while (cnt < MATRIX_SIZE*MATRIX_SIZE/BUFFER_SIZE/BUFFER_SIZE) begin
        for ( j = 0; j < BUFFER_SIZE+1; j = j + 1) begin
            for (k = 0; k < BUFFER_SIZE; k = k + 1) begin
                data_in[k*32+:32] = Matrix_A[cnt*BUFFER_SIZE*BUFFER_SIZE+j*BUFFER_SIZE+k];
            end
            wait(in_ready);  
            @(posedge sys_clk); 
            index_in = j;
            in_valid = 1;
            in_last = j == BUFFER_SIZE;   
            @(posedge sys_clk);
            in_valid = 0; 
            @(posedge sys_clk);
        end
    end

end
initial begin
    cnt = 0;
    while (1) begin
        wait(in_last);
        @(posedge sys_clk) cnt = cnt + 1;
    end

end

in_buffer # (
    .SIZE(BUFFER_SIZE)
  )
  in_buffer_inst (
    .clk(sys_clk),
    .rstn(sys_resetn),
    .in_mode(1),
    .index_in(index_in),
    .offset(3),
    .data_in(data_in),
    .in_valid(in_valid),
    .in_last(in_last),
    .in_ready(in_ready),

    .out_mode(0),
    .index_out(index_out),
    .data_out(data_out),
    .out_valid(out_valid),

    .out_last(out_last),
    .out_ready(out_ready)
  );



endmodule