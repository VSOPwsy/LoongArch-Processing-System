module RESET_GEN #(
    parameter LATENCY = 100,
    parameter COUNTER_WIDTH = 9
)(
    input clk,
    input sys_resetn,
    output reg bus_resetn,
    output reg peri_resetn,
    output reg cpu_resetn
);
    localparam BUS_RESETN_DELAY = LATENCY;
    localparam PERI_RESETN_DELAY = LATENCY * 2;
    localparam CPU_RESETN_DELAY = LATENCY * 3;

    reg [COUNTER_WIDTH-1:0] cnt = 0;
    always @(posedge clk) begin
        if (~sys_resetn) begin
            cnt <= 0;
            bus_resetn <= 0;
            peri_resetn <= 0;
            cpu_resetn <= 0;
        end
        else begin
            if (cnt != {COUNTER_WIDTH{1'b1}}) begin
                cnt <= cnt + 1'b1;
            end
            bus_resetn <= cnt >= BUS_RESETN_DELAY;
            peri_resetn <= cnt >= PERI_RESETN_DELAY;
            cpu_resetn <= cnt >= CPU_RESETN_DELAY;
        end
    end


endmodule
