module leadingone_detector(
	input 	[31:0]	data_in,
	output 	    	pos_out
);
 
reg [31:0] tmp;
reg [5:0]  pos_out_tmp;
reg [5:0]  pos_out;
 
always @(*) begin
 
	tmp = data_in;
	
	casex(tmp)
	
		32'b1xxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx : pos_out_tmp = 6'd0;
		32'b01xx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx : pos_out_tmp = 6'd1;
		32'b001x_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx : pos_out_tmp = 6'd2;
		32'b0001_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx : pos_out_tmp = 6'd3;	//第4位为1
		32'b0000_1xxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx : pos_out_tmp = 6'd4;
		32'b0000_01xx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx : pos_out_tmp = 6'd5;
		32'b0000_001x_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx : pos_out_tmp = 6'd6;
		32'b0000_0001_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx : pos_out_tmp = 6'd7;	//8
		32'b0000_0000_1xxx_xxxx_xxxx_xxxx_xxxx_xxxx : pos_out_tmp = 6'd8;
		32'b0000_0000_01xx_xxxx_xxxx_xxxx_xxxx_xxxx : pos_out_tmp = 6'd9;
		32'b0000_0000_001x_xxxx_xxxx_xxxx_xxxx_xxxx : pos_out_tmp = 6'd10;
		32'b0000_0000_0001_xxxx_xxxx_xxxx_xxxx_xxxx : pos_out_tmp = 6'd11;	//12
		32'b0000_0000_0000_1xxx_xxxx_xxxx_xxxx_xxxx : pos_out_tmp = 6'd12;
		32'b0000_0000_0000_01xx_xxxx_xxxx_xxxx_xxxx : pos_out_tmp = 6'd13;
		32'b0000_0000_0000_001x_xxxx_xxxx_xxxx_xxxx : pos_out_tmp = 6'd14;
		32'b0000_0000_0000_0001_xxxx_xxxx_xxxx_xxxx : pos_out_tmp = 6'd15;	//16
		32'b0000_0000_0000_0000_1xxx_xxxx_xxxx_xxxx : pos_out_tmp = 6'd16;
		32'b0000_0000_0000_0000_01xx_xxxx_xxxx_xxxx : pos_out_tmp = 6'd17;
		32'b0000_0000_0000_0000_001x_xxxx_xxxx_xxxx : pos_out_tmp = 6'd18;
		32'b0000_0000_0000_0000_0001_xxxx_xxxx_xxxx : pos_out_tmp = 6'd19;	//20
		32'b0000_0000_0000_0000_0000_1xxx_xxxx_xxxx : pos_out_tmp = 6'd20;
		32'b0000_0000_0000_0000_0000_01xx_xxxx_xxxx : pos_out_tmp = 6'd21;
		32'b0000_0000_0000_0000_0000_001x_xxxx_xxxx : pos_out_tmp = 6'd22;
		32'b0000_0000_0000_0000_0000_0001_xxxx_xxxx : pos_out_tmp = 6'd23;	//24
		32'b0000_0000_0000_0000_0000_0000_1xxx_xxxx : pos_out_tmp = 6'd24;
		32'b0000_0000_0000_0000_0000_0000_01xx_xxxx : pos_out_tmp = 6'd25;
		32'b0000_0000_0000_0000_0000_0000_001x_xxxx : pos_out_tmp = 6'd26;
		32'b0000_0000_0000_0000_0000_0000_0001_xxxx : pos_out_tmp = 6'd27;	//28
		32'b0000_0000_0000_0000_0000_0000_0000_1xxx : pos_out_tmp = 6'd28;
		32'b0000_0000_0000_0000_0000_0000_0000_01xx : pos_out_tmp = 6'd29;
		32'b0000_0000_0000_0000_0000_0000_0000_001x : pos_out_tmp = 6'd30;
		32'b0000_0000_0000_0000_0000_0000_0000_0001 : pos_out_tmp = 6'd31;	//32
		default 									: pos_out_tmp = 6'd32;	//全0
		
	endcase                                          
	pos_out = pos_out_tmp;
end
endmodule