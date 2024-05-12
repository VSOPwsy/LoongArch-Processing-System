//IEEE Floating Point Multiplier (Single Precision)
//Copyright (C) Jonathan P Dawson 2013
//2013-12-12   
module multiplier(
    input_a,
    input_b,
    clk,
    rst,
    output_z
);

    input     clk;
    input     rst;
    input     [31:0] input_a;
    input     [31:0] input_b;
    output    reg [31:0] output_z;

    reg       [31:0] z;
    reg       [23:0] z_m_stg1,z_m_stg2,z_m_stg3;
    reg       [9:0]  z_e_stg1,;
    reg       z_s;
    reg       guard_stg1, round_bit_stg1, sticky_stg1,guard_stg2,round_bit_stg2,sticky_stg2;
    reg       [5:0] shift;

    //Stage_1:special case & mul
    reg [47:0] product;
    always @(*) begin
        if (($signed((input_a[30 : 23] - 127)) == -127) && ($signed((input_b[30 : 23] - 127)) == -127)) begin
            product = {{1'b0},input_a[22 : 0]} * {{1'b0},input_b[22 : 0]};
        end 
        else if ($signed((input_a[30 : 23] - 127)) == -127) begin
            product = {{1'b0},input_a[22 : 0]} * {{1'b1},input_b[22 : 0]};
        end
        else if ($signed((input_b[30 : 23] - 127)) == -127) begin
            product = {{1'b1},input_a[22 : 0]} * {{1'b0},input_b[22 : 0]};
        end
        else begin
            product = {{1'b1},input_a[22 : 0]} * {{1'b1},input_b[22 : 0]};
        end
    end
    
    always @(posedge clk ) begin
        if (rst) begin
            z_s <= 0;
            z_e_stg1 <= 0;
            z_m <= 0;
            guard_stg1 <= 0;
            round_bit_stg1 <= 0;
            sticky_stg1 <= 0;
        end
        else begin
            if (((input_a[30 : 23] - 127) == 128 && input_a[22 : 0] != 0) || ((input_b[30 : 23] - 127) == 128 && input_b[22 : 0] != 0)) begin  //NAN
                z_s <= 1;
                z_e_stg1 <= 255;
                z_m_stg1[22] <= 1;
                z_m_stg1[21:0] <= 0;
                guard_stg1 <= 0;
                round_bit_stg1 <= 0;
                sticky_stg1 <= 0;
            end 
            else if ((input_a[30 : 23] - 127) == 128) begin //a +inf 
                z_s <= input_a[31] ^ input_b[31];
                z_e_stg1 <= 255;
                z_m_stg1[22:0] <= 0;
                guard_stg1 <= 0;
                round_bit_stg1 <= 0;
                sticky_stg1 <= 0;
                //if b is zero return NaN
                if (($signed((input_b[30 : 23] - 127)) == -127) && (input_b[22 : 0] == 0)) begin
                    z_s <= 1;
                    z_e_stg1 <= 255;
                    z_m_stg1[22] <= 1;
                    z_m_stg1[21:0] <= 0;
                end
            end 
            else if ((input_b[30 : 23] - 127) == 128) begin  //b +inf
                z_s <= input_a[31] ^ input_b[31];
                z_e_stg1 <= 255;
                z_m_stg1[22:0] <= 0;
                guard_stg1 <= 0;
                round_bit_stg1 <= 0;
                sticky_stg1 <= 0;
                //if a is zero return NaN
                if (($signed((input_a[30 : 23] - 127)) == -127) && (input_a[22 : 0] == 0)) begin
                    z_s <= 1;
                    z_e_stg1 <= 255;
                    z_m_stg1[22] <= 1;
                    z_m_stg1[21:0] <= 0;
                end
            end 
            else if (($signed((input_a[30 : 23] - 127)) == -127) && (input_a[22 : 0] == 0)) begin //a=0, return 0
                z_s <= input_a[31] ^ input_b[31];
                z_e_stg1 <= 0;
                z_m_stg1[22:0] <= 0;
                guard_stg1 <= 0;
                round_bit_stg1 <= 0;
                sticky_stg1 <= 0;
            end 
            else if (($signed((input_b[30 : 23] - 127)) == -127) && (input_b[22 : 0] == 0)) begin //b=0, return 0
                z_s <= input_a[31] ^ input_b[31];
                z_e_stg1 <= 0;
                z_m_stg1 <= 0;
                guard_stg1 <= 0;
                round_bit_stg1 <= 0;
                sticky_stg1 <= 0;
            end 
            else begin //need to mul
                if (($signed((input_a[30 : 23] - 127)) == -127) && ($signed((input_b[30 : 23] - 127)) == -127)) begin
                    z_s <= input_a[31] ^ input_b[31];
                    z_e_stg1 <= -126 -126 + 1;
                    z_m_stg1 <= product[47:24];
                    guard_stg1 <= product[23];
                    round_bit_stg1 <= product[22];
                    sticky_stg1 <= (product[21:0] != 0);
                end 
                else if ($signed((input_a[30 : 23] - 127)) == -127) begin
                    z_s <= input_a[31] ^ input_b[31];
                    z_e_stg1 <= -126 + (input_b[30 : 23] - 127) + 1;
                    z_m_stg1 <= product[47:24];
                    guard_stg1 <= product[23];
                    round_bit_stg1 <= product[22];
                    sticky_stg1 <= (product[21:0] != 0);
                end
                else if ($signed((input_b[30 : 23] - 127)) == -127) begin
                    z_s <= input_a[31] ^ input_b[31];
                    z_e_stg1 <= (input_a[30 : 23] - 127) -126 + 1;
                    z_m_stg1 <= product[47:24];
                    guard_stg1 <= product[23];
                    round_bit_stg1 <= product[22];
                    sticky_stg1 <= (product[21:0] != 0);
                end
                else begin
                    z_s <= input_a[31] ^ input_b[31];
                    z_e_stg1 <= (input_a[30 : 23] - 127) + (input_b[30 : 23] - 127) + 1;
                    z_m_stg1 <= product[47:24];
                    guard_stg1 <= product[23];
                    round_bit_stg1 <= product[22];
                    sticky_stg1 <= (product[21:0] != 0);
                end
            end
        end
    end

    //Stage_2 normalize
    leadingone_detector  leadingone_detector_inst (
    .data_in(z_m_stg1),
    .pos_out(shift)
    );

    always @(posedge clk ) begin
        if (rst) begin
            z_m_stg2 <= z_m_stg1;
            z_e_stg2 <= z_e_stg1;
            guard_stg2 <= guard_stg1;
            round_bit_stg2 <= round_bit_stg1;
            sticky_stg2 <= sticky_stg1;
        end
        else begin
            if (conditions) begin
                
            end   
            if (shift >= 2) begin
                z_m_stg2 <= {z_m_stg1,guard_stg1,round_bit_stg1} << shift;
            end 
            else if (shift == 1) begin
                z_m_stg2 <= {z_m_stg1,guard_stg1} << 1;
            end
            else begin
                z_m_stg2 <= z_m_stg1;
            end
            z_e_stg2 <= (z_e_stg2 - shift);


            
        end
    end

    //Stage_3 Round
    always @(posedge clk ) begin
        if (rst) begin
            
        end
        else begin
            if (guard_stg2 && (round_bit_stg2 | sticky_stg2 | z_m_stg2[0])) begin
                z_m_stg3 <= z_m_stg2 + 1;
                if (z_m_stg2 == 24'hffffff) begin
                    z_e_stg3 <=z_e_stg1 + 1;
                end
            end  
        end
    end

    //Stage_4
    always @(posedge clk ) begin
        if (rst) begin
            output_z <= 0;
        end
        else begin
            if ($signed(z_e_stg2) == -126 && z_m_stg2[23] == 0) begin
                output_z[31] <= z_s;
                output_z[30:23] <= 0;
                output_z[22:0] <= z_m_stg2[22:0];
            end
            else if ($signed(z_e_stg2) > 127) begin
                output_z[31] <= z_s;
                output_z[30:23] <= 255;
                output_z[22:0] <= 0;
            end
            else begin
                output_z[31] <= z_s;
                output_z[22:0] <= z_m_stg2[22:0];
                output_z[30:23] <= z_e_stg2[7:0] + 127;
            end
        end
    end

endmodule