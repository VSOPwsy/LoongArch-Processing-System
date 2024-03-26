`include "config.v"

module apb_register_if # (
    parameter REG_NUM = 8
)
(
    input                            clk,
    input                            resetn,

    input                            apb_req,
    input                            apb_psel,
	input                            apb_rw,    // 0 for rd, 1 for wr
    input      [`ADDR_WIDTH-1:0]     apb_addr,
	input                            apb_enab,
    input      [`APB_DATA_WIDTH-1:0] apb_datai,

    output reg [`APB_DATA_WIDTH-1:0] apb_reg_wdata,
    output reg [$clog2(REG_NUM)-1:0] apb_reg_addr,
    output reg                       apb_reg_wen, 

    input      [`APB_DATA_WIDTH-1:0] R0,
    input      [`APB_DATA_WIDTH-1:0] R1,
    input      [`APB_DATA_WIDTH-1:0] R2,
    input      [`APB_DATA_WIDTH-1:0] R3,
    input      [`APB_DATA_WIDTH-1:0] R4,
    input      [`APB_DATA_WIDTH-1:0] R5,
    input      [`APB_DATA_WIDTH-1:0] R6,
    input      [`APB_DATA_WIDTH-1:0] R7,
    
    output reg [`APB_DATA_WIDTH-1:0] apb_datao,
	output reg                       apb_ack
);
    initial begin
        apb_ack = 0;
    end

    localparam LOG2_REG_NUM = $clog2(REG_NUM);
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
            apb_datao <= 0;
            apb_reg_wdata <= 0;
            apb_reg_wen <=0;
        end
        else begin
            case (state_current)
                IDLE: begin
                    if (apb_req & apb_psel & ~apb_enab) begin
                        if (apb_rw) begin
                            apb_ack <= 1'b1;
                            apb_reg_wdata <= apb_datai;
                            apb_reg_addr <= apb_addr[LOG2_REG_NUM-1:0];
                            apb_reg_wen <= 1;
                        end
                        else begin
                            apb_datao <= apb_addr[LOG2_REG_NUM-1:0] == 'd0 ? R0 :
                                         apb_addr[LOG2_REG_NUM-1:0] == 'd1 ? R1 :
                                         apb_addr[LOG2_REG_NUM-1:0] == 'd2 ? R2 :
                                         apb_addr[LOG2_REG_NUM-1:0] == 'd3 ? R3 :
                                         apb_addr[LOG2_REG_NUM-1:0] == 'd4 ? R4 :
                                         apb_addr[LOG2_REG_NUM-1:0] == 'd5 ? R5 :
                                         apb_addr[LOG2_REG_NUM-1:0] == 'd6 ? R6 :
                                         apb_addr[LOG2_REG_NUM-1:0] == 'd7 ? R7 : 0;
                        end
                    end
                end

                ENABLE: begin
                    apb_ack <= 1'b0;
                    apb_reg_wen <= 1'b0;
                end
            endcase
        end
    end

endmodule
