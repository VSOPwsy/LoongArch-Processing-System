`include "config.v"

module apb_register_if # (
    parameter REG_NUM = 8
)
(
    input                      clk,
    input                      resetn,

    input                      apb_req,
    input                      apb_psel,
	input                      apb_rw,    // 0 for rd, 1 for wr
    input      [`ADDR_APB-1:0] apb_addr,
	input                      apb_enab,
    input      [`DATA_APB-1:0] apb_datai,
    output reg [`DATA_APB-1:0] apb_datao,
	output reg                 apb_ack,

    output reg [`DATA_APB-1:0] R0,
    output reg [`DATA_APB-1:0] R1,
    output reg [`DATA_APB-1:0] R2,
    output reg [`DATA_APB-1:0] R3,
    output reg [`DATA_APB-1:0] R4,
    output reg [`DATA_APB-1:0] R5,
    output reg [`DATA_APB-1:0] R6,
    output reg [`DATA_APB-1:0] R7
);
    initial begin
        apb_ack = 0;
        R0 = 0;
        R1 = 0;
        R2 = 0;
        R3 = 0;
        R4 = 0;
        R5 = 0;
        R6 = 0;
        R7 = 0;
    end

    localparam REG_ADDR_WIDTH = $clog2(REG_NUM);

    localparam IDLE = 1'b0;
    localparam ENABLE = 1'b1;

    reg state_current = IDLE, state_next = IDLE;

    always @(*) begin
        if (~resetn) begin
            state_next = IDLE;
        end
        else begin
            case (state_current)
                IDLE: begin
                    if (apb_req & apb_psel & ~apb_enab) begin
                        state_next = ENABLE;
                    end
                    else begin
                        state_next = IDLE;
                    end
                end

                ENABLE: begin
                    state_next = IDLE;
                end
            endcase
        end
    end


    always @(posedge clk) begin
        if (~resetn) begin
            apb_ack <= 1;
            R0 <= 0;
            R1 <= 0;
            R2 <= 0;
            R3 <= 0;
            R4 <= 0;
            R5 <= 0;
            R6 <= 0;
            R7 <= 0;
        end
        else begin
            case (state_current)
                IDLE: begin
                    if (apb_req & apb_psel & ~apb_enab) begin
                        if (apb_rw) begin
                            apb_ack <= 1'b1;
                            R0 <= apb_addr[REG_ADDR_WIDTH-1:0] == 'd0 ? apb_datai : R0;
                            R1 <= apb_addr[REG_ADDR_WIDTH-1:0] == 'd1 ? apb_datai : R1;
                            R2 <= apb_addr[REG_ADDR_WIDTH-1:0] == 'd2 ? apb_datai : R2;
                            R3 <= apb_addr[REG_ADDR_WIDTH-1:0] == 'd3 ? apb_datai : R3;
                            R4 <= apb_addr[REG_ADDR_WIDTH-1:0] == 'd4 ? apb_datai : R4;
                            R5 <= apb_addr[REG_ADDR_WIDTH-1:0] == 'd5 ? apb_datai : R5;
                            R6 <= apb_addr[REG_ADDR_WIDTH-1:0] == 'd6 ? apb_datai : R6;
                            R7 <= apb_addr[REG_ADDR_WIDTH-1:0] == 'd7 ? apb_datai : R7;
                        end
                        else begin
                            apb_datao <= apb_addr[REG_ADDR_WIDTH-1:0] == 'd0 ? R0 :
                                         apb_addr[REG_ADDR_WIDTH-1:0] == 'd1 ? R1 :
                                         apb_addr[REG_ADDR_WIDTH-1:0] == 'd2 ? R2 :
                                         apb_addr[REG_ADDR_WIDTH-1:0] == 'd3 ? R3 :
                                         apb_addr[REG_ADDR_WIDTH-1:0] == 'd4 ? R4 :
                                         apb_addr[REG_ADDR_WIDTH-1:0] == 'd5 ? R5 :
                                         apb_addr[REG_ADDR_WIDTH-1:0] == 'd6 ? R6 :
                                         apb_addr[REG_ADDR_WIDTH-1:0] == 'd7 ? R7 : 0;
                        end
                    end
                end

                ENABEL: begin
                    apb_ack <= 1'b0;
                end
            endcase
        end
    end



    always @(posedge clk) begin
        if (~resetn) begin
            apb_ack <= 0;
            R0 <= 0;
            R1 <= 0;
            R2 <= 0;
            R3 <= 0;
            R4 <= 0;
            R5 <= 0;
            R6 <= 0;
            R7 <= 0;
        end
        else begin
            if (apb_req & apb_psel & apb_enab & apb_rw) begin
                apb_ack <= 1'b1;

                R0 <= apb_addr[REG_ADDR_WIDTH-1:0] == 'd0 : apb_datai;
                R1 <= apb_addr[REG_ADDR_WIDTH-1:0] == 'd1 : apb_datai;
                R2 <= apb_addr[REG_ADDR_WIDTH-1:0] == 'd2 : apb_datai;
                R3 <= apb_addr[REG_ADDR_WIDTH-1:0] == 'd3 : apb_datai;
                R4 <= apb_addr[REG_ADDR_WIDTH-1:0] == 'd4 : apb_datai;
                R5 <= apb_addr[REG_ADDR_WIDTH-1:0] == 'd5 : apb_datai;
                R6 <= apb_addr[REG_ADDR_WIDTH-1:0] == 'd6 : apb_datai;
                R7 <= apb_addr[REG_ADDR_WIDTH-1:0] == 'd7 : apb_datai;
            end
            else begin
                apb_ack <= 1'b0;
            end
        end
    end

endmodule