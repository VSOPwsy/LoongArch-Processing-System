module sd_read_para_top #(
    parameter ADDR_WIDTH = 32,
    parameter DDR_DATA_WIDTH = 256,
    parameter DDR_STRB_WIDTH = (DDR_DATA_WIDTH/8),
    parameter ID_WIDTH = 8,

    parameter DQ_WIDTH = (DDR_DATA_WIDTH/8),

    parameter APB_DATA_WIDTH = 32
)
(    
    input                           sys_clk      ,
    input                           rst_n    ,

    //SD卡接口
    input                           sd_miso      ,
    output                          sd_clk       ,
    output                          sd_cs        ,
    output                          sd_mosi      ,
    output                          sd_gnd       ,

    //AXI_croosbar
    output  wire [ID_WIDTH-1:0]      model_awid,
    output  wire [ADDR_WIDTH-1:0]    model_awaddr,
    output  wire [7:0]               model_awlen,
    output  wire [2:0]               model_awsize,
    output  wire [1:0]               model_awburst,
    output  wire                     model_awlock,
    output  wire [3:0]               model_awcache,
    output  wire [2:0]               model_awprot,
    output  wire                     model_awvalid,
    input   wire                     model_awready,
    output  wire [DDR_DATA_WIDTH-1:0]model_wdata,
    output  wire [DDR_STRB_WIDTH-1:0]model_wstrb,
    output  wire                     model_wlast,
    output  wire                     model_wvalid,
    input   wire                     model_wready,
    input   wire [ID_WIDTH-1:0]      model_bid,
    input   wire [1:0]               model_bresp,
    input   wire                     model_bvalid,
    output  wire                     model_bready,
    output  wire [ID_WIDTH-1:0]      model_arid,
    output  wire [ADDR_WIDTH-1:0]    model_araddr,
    output  wire [7:0]               model_arlen,
    output  wire [2:0]               model_arsize,
    output  wire [1:0]               model_arburst,
    output  wire                     model_arlock,
    output  wire [3:0]               model_arcache,
    output  wire [2:0]               model_arprot,
    output  wire                     model_arvalid,
    input   wire                     model_arready,
    input   wire [ID_WIDTH-1:0]      model_rid,
    input   wire [DDR_DATA_WIDTH-1:0]model_rdata,
    input   wire [1:0]               model_rresp,
    input   wire                     model_rlast,
    input   wire                     model_rvalid,
    output  wire                     model_rready,

    //APB
	input wire                      	apb_psel,
	input wire                      	apb_rw,    // 0 for rd, 1 for wr
	input wire  [ADDR_WIDTH     -1 :0]	apb_addr,
	input wire                      	apb_enab,
	input wire  [APB_DATA_WIDTH -1 :0] apb_datai,
	output wire [APB_DATA_WIDTH -1 :0] apb_datao,
	output wire                      	apb_ack

    );     

    localparam REG_NUM = 6;
    localparam LOG2_REG_NUM = $clog2(REG_NUM);

    assign sd_gnd = 1'b0;

wire                        ddr_wr_en;  
wire [15:0]                 ddr_wr_data,sd_rd_val_data;
wire                        ddr_wr_last;
wire                        sd_rd_busy,sd_rd_val_en,sd_rd_start_en;
wire [31:0]                 sd_rd_sec_addr; 
wire                        sd_init_done;
reg                         start;
reg  [ADDR_WIDTH-1:0]       sd_addr_base;
reg  [31:0]                 sd_sec_num;
reg  [ADDR_WIDTH-1:0]       ddr_addr_base;
reg                         done;      
reg  [2:0]                  apb_reg_addr;
reg  [APB_DATA_WIDTH-1:0]   apb_reg_wdata;
reg                         apb_reg_wen;

apb_register_if # (
    .ADDR_WIDTH(ADDR_WIDTH),
    .DATA_WIDTH(APB_DATA_WIDTH),
    .REG_NUM(REG_NUM),
    .REG_DATA_WIDTH(32)
  )
  apb_register_if_inst (
    .clk(sys_clk),
    .resetn(rst_n),

    .apb_psel(apb_psel),
    .apb_rw(apb_rw),
    .apb_addr(apb_addr),
    .apb_enab(apb_enab),
    .apb_datai(apb_datai),

    .apb_reg_wdata(apb_reg_wdata),
    .apb_reg_addr(apb_reg_addr),
    .apb_reg_wen(apb_reg_wen),

    .R0(sd_init_done),
    .R1(start),
    .R2(sd_addr_base),
    .R3(sd_sec_num),
    .R4(ddr_addr_base),
    .R5(done),

    .apb_datao(apb_datao),
    .apb_ack(apb_ack)
  ); 

always @(posedge sys_clk) begin
    if (~rst_n) begin
        start               <= 0;
        sd_addr_base        <= 0;
        sd_sec_num          <= 0;
        ddr_addr_base       <= 0;
        done                <= 0;
    end
    else begin
        if (apb_reg_wen) begin
            start           <= apb_reg_addr == 'd1 ? apb_reg_wdata : start;
            sd_addr_base    <= apb_reg_addr == 'd2 ? apb_reg_wdata : sd_addr_base;
            sd_sec_num      <= apb_reg_addr == 'd3 ? apb_reg_wdata : sd_sec_num;
            ddr_addr_base   <= apb_reg_addr == 'd4 ? apb_reg_wdata : ddr_addr_base;
        end
        else begin
            if (start) begin
                start       <= 0;
            end
            sd_addr_base    <= sd_addr_base;
            sd_sec_num      <= sd_sec_num;
            ddr_addr_base   <= ddr_addr_base;
            done            <= ddr_wr_last;
        end
    end
end


//SD卡顶层控制模块
sd_ctrl_top u_sd_ctrl_top(
    .clk_ref                (sys_clk),
    .rst_n                  (rst_n),
    .start                  (start),
    //SD卡接口
    .sd_miso                (sd_miso),
    .sd_clk                 (sd_clk),
    .sd_cs                  (sd_cs),
    .sd_mosi                (sd_mosi),
    //用户读SD卡接口
    .rd_start_en            (sd_rd_start_en),
    .rd_sec_addr            (sd_rd_sec_addr),
    .rd_busy                (sd_rd_busy),
    .rd_val_en              (sd_rd_val_en),
    .rd_val_data            (sd_rd_val_data),  
    
    .sd_init_done           (sd_init_done)
    );


sd_read_model u_sd_read_model(
    .clk                   (sys_clk),
    .rst_n                 (rst_n & (~start)),
    .sd_sec_num            (sd_sec_num),
    .rd_busy               (sd_rd_busy),
    .sd_rd_val_en          (sd_rd_val_en),
    .sd_rd_val_data        (sd_rd_val_data),
    .MODEL_ADDR_START      (sd_addr_base),

    .rd_start_en           (sd_rd_start_en),
    .rd_sec_addr           (sd_rd_sec_addr),
    .ddr_wr_en             (ddr_wr_en),
    .ddr_wr_last           (ddr_wr_last),
    .ddr_wr_data           (ddr_wr_data)
    );

    //
sd_axi_top # (
    .ADDR_WIDTH             (ADDR_WIDTH),
    .DDR_DATA_WIDTH         (DDR_DATA_WIDTH),
    .DDR_STRB_WIDTH         (DDR_STRB_WIDTH),
    .ID_WIDTH               (ID_WIDTH),
    .DQ_WIDTH               (DQ_WIDTH)
    )
    sd_axi_top_inst (
    .clk                    (sys_clk),
    .rst_n                  (rst_n & (~start)),
    .wr_en                  (ddr_wr_en),
    .wrdata                 (ddr_wr_data),
    .wrlast                 (ddr_wr_last),
    .wr_base_addr           (wr_base_addr),
     
    .model_awid             (model_awid),
    .model_awaddr           (model_awaddr),
    .model_awlen            (model_awlen),
    .model_awsize           (model_awsize),
    .model_awburst          (model_awburst),
    .model_awlock           (model_awlock),
    .model_awcache          (model_awcache),
    .model_awprot           (model_awprot),
    .model_awvalid          (model_awvalid),
    .model_awready          (model_awready),
    .model_wdata            (model_wdata),
    .model_wstrb            (model_wstrb),
    .model_wlast            (model_wlast),
    .model_wvalid           (model_wvalid),
    .model_wready           (model_wready)
    );

endmodule

