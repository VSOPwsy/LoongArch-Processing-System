module apb_mux9 #(
	parameter ADDR_WIDTH = 32,
	parameter APB_DATA_WIDTH = 32,

	parameter APB_SLV0_ADDR_BASE = 32'hffffffff,
	parameter APB_SLV0_ADDR_LEN  = 32'hffffffff,
	
	parameter APB_SLV1_ADDR_BASE = 32'hffffffff,
	parameter APB_SLV1_ADDR_LEN  = 32'hffffffff,
	
	parameter APB_SLV2_ADDR_BASE = 32'hffffffff,
	parameter APB_SLV2_ADDR_LEN  = 32'hffffffff,
	
	parameter APB_SLV3_ADDR_BASE = 32'hffffffff,
	parameter APB_SLV3_ADDR_LEN  = 32'hffffffff,
	
	parameter APB_SLV4_ADDR_BASE = 32'hffffffff,
	parameter APB_SLV4_ADDR_LEN  = 32'hffffffff,
	
	parameter APB_SLV5_ADDR_BASE = 32'hffffffff,
	parameter APB_SLV5_ADDR_LEN  = 32'hffffffff,
	
	parameter APB_SLV6_ADDR_BASE = 32'hffffffff,
	parameter APB_SLV6_ADDR_LEN  = 32'hffffffff,
	
	parameter APB_SLV7_ADDR_BASE = 32'hffffffff,
	parameter APB_SLV7_ADDR_LEN  = 32'hffffffff,
	
	parameter APB_SLV8_ADDR_BASE = 32'hffffffff,
	parameter APB_SLV8_ADDR_LEN  = 32'hffffffff
)(
	input                     		apb_psel_cpu,
	input                     		apb_rw_cpu,
	input  [ADDR_WIDTH	   -1:0]    apb_addr_cpu,
	input                     		apb_enab_cpu,
    input  [APB_DATA_WIDTH-1:0]    apb_datai_cpu,
    output [APB_DATA_WIDTH-1:0]    apb_datao_cpu,
	output                    		apb_ack_cpu,

    output                    		apb0_req,
    output                    		apb0_psel,
	output                    		apb0_rw,
    output [ADDR_WIDTH	   -1:0]    apb0_addr,
	output                    		apb0_enab,
    output [APB_DATA_WIDTH-1:0]    apb0_datai,
    input  [APB_DATA_WIDTH-1:0]    apb0_datao,
	input                     		apb0_ack,

    output                    		apb1_req,
    output                    		apb1_psel,
	output                    		apb1_rw,
    output [ADDR_WIDTH	   -1:0]    apb1_addr,
	output                    		apb1_enab,
    output [APB_DATA_WIDTH-1:0]    apb1_datai,
    input  [APB_DATA_WIDTH-1:0]    apb1_datao,
	input                     		apb1_ack,

    output                    		apb2_req,
    output                    		apb2_psel,
	output                    		apb2_rw,
    output [ADDR_WIDTH	   -1:0]    apb2_addr,
	output                    		apb2_enab,
    output [APB_DATA_WIDTH-1:0]    apb2_datai,
    input  [APB_DATA_WIDTH-1:0]    apb2_datao,
	input                     		apb2_ack,

    output                    		apb3_req,
    output                    		apb3_psel,
	output                    		apb3_rw,
    output [ADDR_WIDTH	   -1:0]    apb3_addr,
	output                    		apb3_enab,
    output [APB_DATA_WIDTH-1:0]    apb3_datai,
    input  [APB_DATA_WIDTH-1:0]    apb3_datao,
	input                     		apb3_ack,

    output                    		apb4_req,
    output                    		apb4_psel,
	output                    		apb4_rw,
    output [ADDR_WIDTH    -1:0]    apb4_addr,
	output                    		apb4_enab,
    output [APB_DATA_WIDTH-1:0]    apb4_datai,
    input  [APB_DATA_WIDTH-1:0]    apb4_datao,
	input                     		apb4_ack,

    output                    		apb5_req,
    output                    		apb5_psel,
	output                    		apb5_rw,
    output [ADDR_WIDTH	   -1:0]    apb5_addr,
	output                    		apb5_enab,
    output [APB_DATA_WIDTH-1:0]    apb5_datai,
    input  [APB_DATA_WIDTH-1:0]    apb5_datao,
	input                     		apb5_ack,


    output                    		apb6_req,
    output                    		apb6_psel,
	output                    		apb6_rw,
    output [ADDR_WIDTH	   -1:0]    apb6_addr,
	output                    		apb6_enab,
    output [APB_DATA_WIDTH-1:0]    apb6_datai,
    input  [APB_DATA_WIDTH-1:0]    apb6_datao,
	input                     		apb6_ack,

    output                    		apb7_req,
    output                    		apb7_psel,
	output                    		apb7_rw,
    output [ADDR_WIDTH	   -1:0]    apb7_addr,
	output                    		apb7_enab,
    output [APB_DATA_WIDTH-1:0]    apb7_datai,
    input  [APB_DATA_WIDTH-1:0]    apb7_datao,
	input                     		apb7_ack,

    output                    		apb8_req,
    output                    		apb8_psel,
	output                    		apb8_rw,
    output [ADDR_WIDTH	   -1:0]    apb8_addr,
	output                    		apb8_enab,
    output [APB_DATA_WIDTH-1:0]    apb8_datai,
    input  [APB_DATA_WIDTH-1:0]    apb8_datao,
	input                     		apb8_ack
);

	wire                    		apb_psel;
	wire                    		apb_rw;
	wire [ADDR_WIDTH	 -1:0]    	apb_addr;	
	wire                    		apb_enab;
	wire [APB_DATA_WIDTH-1:0]    	apb_datai;
	wire [APB_DATA_WIDTH-1:0]    	apb_datao;
	wire                    		apb_ack; 

	assign apb_psel         = apb_psel_cpu;
	assign apb_rw           = apb_rw_cpu;
	assign apb_addr         = apb_addr_cpu; 
	assign apb_enab         = apb_enab_cpu;
	assign apb_datai        = apb_datai_cpu; 
	assign apb_datao_cpu    = apb_datao;
	assign apb_ack_cpu      = apb_ack;

	assign apb0_req =  ((apb_addr[31:0] & (~APB_SLV0_ADDR_LEN))==APB_SLV0_ADDR_BASE);
	assign apb1_req =  ((apb_addr[31:0] & (~APB_SLV1_ADDR_LEN))==APB_SLV1_ADDR_BASE);
	assign apb2_req =  ((apb_addr[31:0] & (~APB_SLV2_ADDR_LEN))==APB_SLV2_ADDR_BASE);
	assign apb3_req =  ((apb_addr[31:0] & (~APB_SLV3_ADDR_LEN))==APB_SLV3_ADDR_BASE);
	assign apb4_req =  ((apb_addr[31:0] & (~APB_SLV4_ADDR_LEN))==APB_SLV4_ADDR_BASE);
	assign apb5_req =  ((apb_addr[31:0] & (~APB_SLV5_ADDR_LEN))==APB_SLV5_ADDR_BASE);
	assign apb6_req =  ((apb_addr[31:0] & (~APB_SLV6_ADDR_LEN))==APB_SLV6_ADDR_BASE);
	assign apb7_req =  ((apb_addr[31:0] & (~APB_SLV7_ADDR_LEN))==APB_SLV7_ADDR_BASE);
	assign apb8_req =  ((apb_addr[31:0] & (~APB_SLV8_ADDR_LEN))==APB_SLV8_ADDR_BASE);


	assign apb0_psel = apb_psel && apb0_req ;
	assign apb1_psel = apb_psel && apb1_req ;
	assign apb2_psel = apb_psel && apb2_req ;
	assign apb3_psel = apb_psel && apb3_req ;
	assign apb4_psel = apb_psel && apb4_req ;
	assign apb5_psel = apb_psel && apb5_req ;
	assign apb6_psel = apb_psel && apb6_req ;
	assign apb7_psel = apb_psel && apb7_req ;
	assign apb8_psel = apb_psel && apb8_req ;

	assign apb0_enab = apb_enab && apb0_req ;
	assign apb1_enab = apb_enab && apb1_req ;
	assign apb2_enab = apb_enab && apb2_req ;
	assign apb3_enab = apb_enab && apb3_req ;
	assign apb4_enab = apb_enab && apb4_req ;
	assign apb5_enab = apb_enab && apb5_req ;
	assign apb6_enab = apb_enab && apb6_req ;
	assign apb7_enab = apb_enab && apb7_req ;
	assign apb8_enab = apb_enab && apb8_req ;

	assign apb_ack = apb0_req ? apb0_ack :
					 apb1_req ? apb1_ack :
					 apb2_req ? apb2_ack :
					 apb3_req ? apb3_ack :
					 apb4_req ? apb4_ack :
					 apb5_req ? apb5_ack :
					 apb6_req ? apb6_ack :
					 apb7_req ? apb7_ack :
					 apb8_req ? apb8_ack :
					 1'b1;
		
	assign apb_datao = {32{apb0_req}} & apb0_datao[31:0] |
					   {32{apb1_req}} & apb1_datao[31:0] |
					   {32{apb2_req}} & apb2_datao[31:0] |
					   {32{apb3_req}} & apb3_datao[31:0] |
					   {32{apb4_req}} & apb4_datao[31:0] |
					   {32{apb5_req}} & apb5_datao[31:0] |
					   {32{apb6_req}} & apb6_datao[31:0] |
					   {32{apb7_req}} & apb7_datao[31:0] |
					   {32{apb8_req}} & apb8_datao[31:0];

	assign apb0_addr  = apb_addr & {ADDR_WIDTH{apb0_req}};
	assign apb0_datai = apb_datai;
	assign apb0_rw    = apb_rw;

	assign apb1_addr  = apb_addr & {ADDR_WIDTH{apb1_req}};
	assign apb1_datai = apb_datai;
	assign apb1_rw    = apb_rw;

	assign apb2_addr  = apb_addr & {ADDR_WIDTH{apb2_req}};
	assign apb2_datai = apb_datai;
	assign apb2_rw    = apb_rw;

	assign apb3_addr  = apb_addr & {ADDR_WIDTH{apb3_req}};
	assign apb3_datai = apb_datai;
	assign apb3_rw    = apb_rw;

	assign apb4_addr  = apb_addr & {ADDR_WIDTH{apb4_req}};
	assign apb4_datai = apb_datai;
	assign apb4_rw    = apb_rw;

	assign apb5_addr  = apb_addr & {ADDR_WIDTH{apb5_req}};
	assign apb5_datai = apb_datai;
	assign apb5_rw    = apb_rw;

	assign apb6_addr  = apb_addr & {ADDR_WIDTH{apb6_req}};
	assign apb6_datai = apb_datai;
	assign apb6_rw    = apb_rw;

	assign apb7_addr  = apb_addr & {ADDR_WIDTH{apb7_req}};
	assign apb7_datai = apb_datai;
	assign apb7_rw    = apb_rw;

	assign apb8_addr  = apb_addr & {ADDR_WIDTH{apb8_req}};
	assign apb8_datai = apb_datai;
	assign apb8_rw    = apb_rw;

endmodule


