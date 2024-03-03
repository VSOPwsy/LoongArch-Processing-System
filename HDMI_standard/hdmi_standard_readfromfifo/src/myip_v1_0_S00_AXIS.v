`timescale 1 ns / 1 ps

	module myip_v1_0_S00_AXIS #
	(
		// Users to add parameters here

		// User parameters ends
		parameter integer C_S_AXIS_TDATA_WIDTH	= 24 //rgb888
	)
	(
		input wire  S_AXIS_ACLK, // AXI4Stream sink: Clock
		input wire  S_AXIS_ARESETN, // AXI4Stream sink: Reset
		input wire [C_S_AXIS_TDATA_WIDTH-1 : 0] S_AXIS_TDATA,// Data in
		input wire [(C_S_AXIS_TDATA_WIDTH/8)-1 : 0] S_AXIS_TSTRB, // Byte qualifier
		input wire  S_AXIS_TVALID, //开始输入数据
		input wire  S_AXIS_TLAST, // Indicates boundary of last packet

		output wire  S_AXIS_TREADY, // Ready to accept data in
		output reg [C_S_AXIS_TDATA_WIDTH-1:0] S_AXIS_Out
	);

	// 确定能够表示bit_depth位宽的数据所需的最小地址线数量 function called clogb2 that returns an integer which has the value of the ceiling of the log base 2.
	function integer clogb2 (input integer bit_depth);
	  begin
	    for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
	      bit_depth = bit_depth >> 1;
	  end
	endfunction

	localparam NUMBER_OF_INPUT  = 1280; // 一行中像素点个数
	localparam bit_num  = clogb2(NUMBER_OF_INPUT-1); // bit_num gives the minimum number of bits needed to address 'NUMBER_OF_INPUT_WORDS' size of FIFO.
	
	// Define the states of state machine
	parameter [1:0] IDLE = 2'b00, 
					WRITE_FIFO  = 2'b01,
					READ_FIFO   = 2'b10; 
	wire axis_tready;
	wire fifo_has_data;
	wire fifo_wren;  // FIFO write enable
	wire fifo_rden;  // FIFO read enable
	
	genvar byte_index;   // FIFO implementation signals  
	
	reg [1:0] mst_exec_state;  // State variable
	reg fifo_full_flag; // FIFO full flag
	reg [bit_num-1:0] write_pointer; // FIFO write pointer
	reg [bit_num-1:0] read_pointer;
	reg writes_done; // sink has accepted all the streaming data and stored in FIFO
	reg read_done;
	reg read_last_done;
	
	// FIFO write/read signal
	assign axis_tready = ((mst_exec_state == WRITE_FIFO) && (write_pointer <= NUMBER_OF_INPUT-1)); //状态机可写 + pointer没有到最后位置
	assign S_AXIS_TREADY	= axis_tready;
	assign fifo_wren = S_AXIS_TVALID && axis_tready; 
	assign fifo_has_data = ((write_pointer == 0)&&( read_pointer == 0))||(write_pointer != read_pointer); //写指针和读指针不相等，代表fifo中有元素
	assign fifo_rden = (mst_exec_state == READ_FIFO) && fifo_has_data; // FIFO读使能信号

	//state machine
	always @(posedge S_AXIS_ACLK) 
	begin  
	  if (!S_AXIS_ARESETN) //同步复位
	    begin
	      mst_exec_state <= IDLE;
	    end  
	  else
	    case (mst_exec_state)
	      IDLE: 
	          if (S_AXIS_TVALID)
	            begin
	              mst_exec_state <= WRITE_FIFO;
	            end
	          else
	            begin
	              mst_exec_state <= IDLE;
	            end
	      WRITE_FIFO: 
	        if (writes_done)
	          begin
	            mst_exec_state <= READ_FIFO;
	          end
	        else
	          begin
	            mst_exec_state <= WRITE_FIFO;
	          end
			READ_FIFO:
			  begin
				  if (read_done)
				  begin
					mst_exec_state <= WRITE_FIFO;
				  end
				  else if (read_last_done) begin
					mst_exec_state <= IDLE;
				  end
				  else
				  begin
					  mst_exec_state <= READ_FIFO;
				  end
			  end

	    endcase
	end

	always@(posedge S_AXIS_ACLK)
	begin
		if(!S_AXIS_ARESETN)
			begin
			write_pointer <= 1'b0;
			writes_done <= 1'b0;
			end  
		else begin
			if (fifo_wren) begin
				if (write_pointer < NUMBER_OF_INPUT-1) 	        
				begin
					write_pointer <= write_pointer + 1;
					writes_done <= 1'b0;
				end
				else if ((write_pointer == NUMBER_OF_INPUT-1)|| S_AXIS_TLAST)
					begin
					  writes_done <= 1'b1;
					  write_pointer <= 1'b0;
					end
			end  
			else begin
					write_pointer <= write_pointer;
					writes_done <= 1'b0;
			end
		end
		  
	end

	always@(posedge S_AXIS_ACLK)
	begin
		if(!S_AXIS_ARESETN)
			begin
			read_pointer <= 1'b0;
			read_done <= 1'b0;
			read_last_done <=1'b0;
			end  
	  	else begin
			if (fifo_rden)begin
				if ((read_pointer == NUMBER_OF_INPUT-1)|| (~ fifo_has_data))
					begin
					  read_done <= 1'b1;
					  read_pointer <= 1'b0;
					  read_last_done <= 1'b0;
					end
				else if (S_AXIS_TLAST) begin
					  read_last_done <= 1'b1;
				end
				else
				  begin
					read_pointer <= read_pointer + 1; // 更新读指针
					read_done <= 1'b0;
					read_last_done <= 1'b0;
					
				  end 
			end  
	  	end		
	end

	// FIFO Implementation
	reg [C_S_AXIS_TDATA_WIDTH-1:0] stream_data_fifo [0:NUMBER_OF_INPUT-1]; // FIFO storage

	// FIFO Logic
	always @(posedge S_AXIS_ACLK) begin
		if (!S_AXIS_ARESETN) begin
			S_AXIS_Out <= 0;
		end
		else if (fifo_wren) begin
			stream_data_fifo[write_pointer] <= S_AXIS_TDATA;
		end
		else if (fifo_rden)begin
        	S_AXIS_Out <= stream_data_fifo[read_pointer];
    	end
	end

	/*
	generate 
	  for(byte_index=0; byte_index<= (C_S_AXIS_TDATA_WIDTH/8-1); byte_index=byte_index+1)
	  begin:FIFO_GEN
	    //reg  [(C_S_AXIS_TDATA_WIDTH/4)-1:0] stream_data_fifo [0 : NUMBER_OF_INPUT_WORDS-1];
		reg  [C_S_AXIS_TDATA_WIDTH-1:0] stream_data_fifo [0 : NUMBER_OF_INPUT-1];
	    // Streaming input data is stored in FIFO

	    always @( posedge S_AXIS_ACLK )
	    begin
	      if (fifo_wren)// && S_AXIS_TSTRB[byte_index])
	        begin
	          stream_data_fifo[write_pointer] <= S_AXIS_TDATA[(byte_index*8+7) -: 8];
	        end  
	    end
		
		always @(posedge S_AXIS_ACLK)
		begin
    	if (fifo_rden)
    		begin
        		S_AXIS_Out <= stream_data_fifo[read_pointer];
    		end
		end
	  end		
	endgenerate
	*/

	endmodule

