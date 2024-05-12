//IEEE Floating Point Multiplier (Single Precision)
//Copyright (C) Jonathan P Dawson 2013
//2013-12-12
module multiplier(
    input_a,
    input_b,
    input_a_stb,
    input_b_stb,
    output_z_ack,
    clk,
    rst,
    output_z,
    output_z_stb,
    input_a_ack,
    input_b_ack);

    input     clk;
    input     rst;

    input     [31:0] input_a;
    input     input_a_stb;
    output    input_a_ack;

    input     [31:0] input_b;
    input     input_b_stb;
    output    input_b_ack;

    output    [31:0] output_z;
    output    output_z_stb;
    input     output_z_ack;

    reg       s_output_z_stb;
    reg       [31:0] s_output_z;
    reg       s_input_a_ack;
    reg       s_input_b_ack;

    reg       [3:0] state;

    reg       [31:0] z;
    reg       [23:0] z_m;
    reg       [9:0] a_e, b_e, z_e;
    reg       a_s, b_s, z_s;
    reg       guard, round_bit, sticky;

    //Stage_0
    always @(posedge clk ) begin
        if (rst) begin
            s_input_a_ack <= 0;
            s_input_b_ack <= 0;
            a_m <= 0
            b_m <= 0
            a_e <= 0
            b_e <= 0
            a_s <= 0
            b_s <= 0
        end
        else begin
            s_input_a_ack <= 1;
            if (s_input_a_ack && input_a_stb) begin
                a_s <= input_a[31];
                a_m <= input_a[22 : 0];
                a_e <= input_a[30 : 23] - 127;
                s_input_a_ack <= 0;
            end
            
            s_input_b_ack <= 1;
            if (s_input_b_ack && input_b_stb) begin
                b_m <= input_b[22 : 0];
                b_e <= input_b[30 : 23] - 127;
                b_s <= input_b[31];
                s_input_b_ack <= 0;
            end
        end
    end


    //Stage_1:special case & mul
    reg [47:0] product;
    always @(*) begin
        if (($signed(a_e) == -127) && ($signed(b_e) == -127)) begin
            product = {{1'b0},a_m} * {{1'b0},b_m};
        end 
        else if ($signed(a_e) == -127) begin
            product = {{1'b0},a_m} * {{1'b1},b_m};
        end
        else if ($signed(b_e) == -127) begin
            product = {{1'b1},a_m} * {{1'b0},b_m};
        end
        else begin
            product = {{1'b1},a_m} * {{1'b1},b_m};
        end
    end
    
    always @(posedge clk ) begin
        if (rst) begin
            z_s <= 0;
            z_e <= 0;
            z_m <= 0;
            guard <= 0;
            round_bit <= 0;
            sticky <= 0;
        end
        else begin
            if ((a_e == 128 && a_m != 0) || (b_e == 128 && b_m != 0)) begin  //NAN
                z_s <= 1;
                z_e <= 255;
                z_m[22] <= 1;
                z_m[21:0] <= 0;
                guard <= 0;
                round_bit <= 0;
                sticky <= 0;
            end 
            else if (a_e == 128) begin //a +inf 
                z_s <= a_s ^ b_s;
                z_e <= 255;
                z_m[22:0] <= 0;
                guard <= 0;
                round_bit <= 0;
                sticky <= 0;
                //if b is zero return NaN
                if (($signed(b_e) == -127) && (b_m == 0)) begin
                    z_s <= 1;
                    z_e <= 255;
                    z_m[22] <= 1;
                    z_m[21:0] <= 0;
                end
            end 
            else if (b_e == 128) begin  //b +inf
                z_s <= a_s ^ b_s;
                z_e <= 255;
                z_m[22:0] <= 0;
                guard <= 0;
                round_bit <= 0;
                sticky <= 0;
                //if a is zero return NaN
                if (($signed(a_e) == -127) && (a_m == 0)) begin
                    z_s <= 1;
                    z_e <= 255;
                    z_m[22] <= 1;
                    z_m[21:0] <= 0;
                end
            end 
            else if (($signed(a_e) == -127) && (a_m == 0)) begin //a=0, return 0
                z_s <= a_s ^ b_s;
                z_e <= 0;
                z_m[22:0] <= 0;
                guard <= 0;
                round_bit <= 0;
                sticky <= 0;
            end 
            else if (($signed(b_e) == -127) && (b_m == 0)) begin //b=0, return 0
                z_s <= a_s ^ b_s;
                z_e <= 0;
                z_m <= 0;
                guard <= 0;
                round_bit <= 0;
                sticky <= 0;
            end 
            else begin //need to mul
                if (($signed(a_e) == -127) && ($signed(b_e) == -127)) begin
                    z_s <= a_s ^ b_s;
                    z_e <= -126 + -126 + 1;
                    z_m <= product[47:24];
                    guard <= product[23];
                    round_bit <= product[22];
                    sticky <= (product[21:0] != 0);
                end 
                else if ($signed(a_e) == -127) begin
                    z_s <= a_s ^ b_s;
                    z_e <= -126 + b_e + 1;
                    z_m <= product[47:24];
                    guard <= product[23];
                    round_bit <= product[22];
                    sticky <= (product[21:0] != 0);
                end
                else if ($signed(b_e) == -127) begin
                    z_s <= a_s ^ b_s;
                    z_e <= a_e + -126 + 1;
                    z_m <= product[47:24];
                    guard <= product[23];
                    round_bit <= product[22];
                    sticky <= (product[21:0] != 0);
                end
                else begin
                    z_s <= a_s ^ b_s;
                    z_e <= a_e + b_e + 1;
                    z_m <= product[47:24];
                    guard <= product[23];
                    round_bit <= product[22];
                    sticky <= (product[21:0] != 0);
                end
            end
        end
    end

    //Stage_2
    always @(posedge clk ) begin
        if (rst) begin
            z_m <= z_m;
            z_e <= z_e;
            z_s <= z_s;
            guard <= guard;
            round_bit <= round_bit;
            sticky <= sticky;
        end
        else begin
            if (z_m[23] == 0) begin
                z_e <= z_e - 1;
                z_m <= z_m << 1;
                z_m[0] <= guard;
                guard <= round_bit;
                round_bit <= 0;
                end 
            else if ($signed(z_e) < -126) begin
                z_e <= z_e + 1;
                z_m <= z_m >> 1;
                guard <= z_m[0];
                round_bit <= guard;
                sticky <= sticky | round_bit;
                end 
            else begin
                if (guard && (round_bit | sticky | z_m[0])) begin
                    z_m <= z_m + 1;
                    if (z_m == 24'hffffff) begin
                        z_e <=z_e + 1;
                    end
                end  
            end
            
        end
    end

    //Stage_3
    always @(posedge clk ) begin
        if (rst) begin
            s_output_z_stb <= 0;
            s_output_z <= 0;
        end
        else begin
            s_output_z_stb <= 1;
            if ($signed(z_e) == -126 && z_m[23] == 0) begin
                s_output_z[31] <= z_s;
                s_output_z[30:23] <= 0;
                s_output_z[22:0] <= z_m[22:0];
            end
            else if ($signed(z_e) > 127) begin
                s_output_z[31] <= z_s;
                s_output_z[30:23] <= 255;
                s_output_z[22:0] <= 0;
            end
            else begin
                s_output_z[31] <= z_s;
                s_output_z[22:0] <= z_m[22:0];
                s_output_z[30:23] <= z_e[7:0] + 127;
            end
            if (s_output_z_stb && output_z_ack) begin
                s_output_z_stb <= 0;
            end
        end
    end

endmodule