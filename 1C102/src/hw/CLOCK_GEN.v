module CLOCK_GEN (
    input clk_osc,

    output clk_20M,
    output cpu_clk,
    output core_clk,
    output mem_clk,
    output model_loader_clk,

    output locked
);

    wire locked_20M;

	Gowin_PLL_20M PLL_20M(
		.lock(locked_20M), //output lock
		.clkout0(clk_20M), //output clkout0
		.clkin(clk_osc) //input clkin
    );

    Gowin_PLL PLL(
        .lock(locked), //output lock
        .clkout0(cpu_clk), // 8M
        .clkout1(core_clk), // 50M
        .clkout2(mem_clk), // 200M
        .clkout3(model_loader_clk), // 50M
        .clkin(clk_20M) //input clkin
    );
endmodule