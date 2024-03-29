
`define log2_CH 16
`define Tout 32					//Parallel factor of CH_out
`define log2Tout 5	
`define base_Tin 64	            //Parallel factor of CH_in
`define base_log2Tin 6

///////////////////// AXI BUS
`define AXI_BURST_LEN `Tout// `Tout should be `AXI_BURST_LEN in Matrix Transpose 
`define log2AXI_BURST_LEN `log2Tout



`define MAX_DAT_DW 32           //FP32

`define log2_H 12 //?
`define log2_W `log2_H
`define log2_Trans_pixel 10
