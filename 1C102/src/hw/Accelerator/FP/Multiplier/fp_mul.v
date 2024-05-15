`define E_bit 8
`define F_bit 23
module float_mult(clk,rst_n,stall,mul_a,mul_b,out_a);

parameter E_ref = {(`E_bit-1){1'b1}};			
parameter E_add_max = {(`E_bit){1'b1}}+E_ref-1;

input wire[`E_bit+`F_bit:0] mul_a,mul_b;
input wire stall;
output wire[`E_bit+`F_bit:0] out_a;
input rst_n,clk;


wire[`E_bit:0] mul_a_e,mul_b_e;		
wire[`F_bit:0] mul_a_f,mul_b_f;
wire S0;

reg[`F_bit*2+1:0] f0;								
reg[`F_bit+1:0] f1;
reg[`F_bit-1:0] f2;

reg[`E_bit:0] e0,e1;							
reg[`E_bit-1:0]e2;

reg[2:0] S;			

assign out_a = {S[2],e2,f2};


assign S0 = mul_a[`E_bit+`F_bit]^mul_b[`E_bit+`F_bit];			
assign mul_a_e = {1'b0,mul_a[`E_bit+`F_bit-1:`F_bit]};		
assign mul_b_e = {1'b0,mul_b[`E_bit+`F_bit-1:`F_bit]};		
assign mul_a_f = {1'b1,mul_a[`F_bit-1:0]};						
assign mul_b_f = {1'b1,mul_b[`F_bit-1:0]};


always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin					
		f0 <= 0;
		e0 <= 0;
		S <= 0;
	end
    else if (stall) begin
        // STALL
    end
	else begin
		S <= {S[1:0],S0};			
		if(mul_a_e == {1'b0,{(`E_bit){1'b1}}} || mul_b_e == {1'b0,{(`E_bit){1'b1}}})begin		
			f0 <= 1;
			e0 <= E_add_max;
		end
		else begin
			f0 <= mul_a_f*mul_b_f;
			e0 <= mul_a_e+mul_b_e;
		end
	end
end


always @(posedge clk or negedge rst_n)begin
		if(!rst_n) begin					
		f1 <= 0;
		e1 <= 0;
	end
    else if (stall) begin
        // STALL
    end
	else begin
		if(e0 > E_ref) begin
			if(e0 >= E_add_max) begin		
				e1 <= {(`E_bit+1){1'b1}};	
				f1 <= 1;
			end
			else begin
				e1 <= (e0 - E_ref);
				f1 <= f0[`F_bit*2+1:`F_bit]+f0[`F_bit-1];
			end
		end
		else begin
			e1 <= 0;
			f1 <= 0;
		end
	end
end


always @(posedge clk or negedge rst_n)begin
	if(!rst_n) begin					
		f2 <= 0;
		e2 <= 0;
	end
    else if (stall) begin
        // STALL
    end
	else begin
		if(f1[`F_bit+1]) begin	
			f2 <= f1[`F_bit:1];
			e2 <= e1[`E_bit-1:0]+1'b1;
		end
		else begin
			f2 <= f1[`F_bit-1:0];
			e2 <= e1[`E_bit-1:0];
		end
	end
end
endmodule