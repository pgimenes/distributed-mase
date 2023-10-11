`timescale 1 ps / 1 ps

module top
   (btn_0,
    clk_0,
    led2_b_0,
    led3_b_0,
    led3_g_0,
    led3_r_0,
    led4_0,
    led5_0,
    led6_0,
    led7_0,
    phy2rmii_crs_dv_0,
    phy2rmii_rx_er_0,
    phy2rmii_rxd_0,
    phy_ref_clk_1,
    reset_n_0,
    rmii2phy_tx_en_0,
    rmii2phy_txd_0,
    sw_0,
    uart_rxd_0,
    uart_txd_0);
  input [3:0]btn_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_BUSIF S_AXIS_0, ASSOCIATED_RESET reset_n_0, CLK_DOMAIN design_1_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.0" *) input clk_0;
  output led2_b_0;
  output led3_b_0;
  output led3_g_0;
  output led3_r_0;
  output led4_0;
  output led5_0;
  output led6_0;
  output led7_0;
  input phy2rmii_crs_dv_0;
  input phy2rmii_rx_er_0;
  input [1:0]phy2rmii_rxd_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PHY_REF_CLK_1 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PHY_REF_CLK_1, CLK_DOMAIN design_1_fpga_0_0_phy_ref_clk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) output phy_ref_clk_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_N_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_N_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset_n_0;
  output rmii2phy_tx_en_0;
  output [1:0]rmii2phy_txd_0;
  input [3:0]sw_0;
  input uart_rxd_0;
  output uart_txd_0;

  wire [7:0]axis_clock_converter_0_m_axis_tdata;
  wire axis_clock_converter_0_m_axis_tvalid;
  wire axis_clock_converter_0_s_axis_tready;
  wire [7:0]axis_clock_converter_1_m_axis_tdata;
  wire axis_clock_converter_1_m_axis_tlast;
  wire axis_clock_converter_1_m_axis_tvalid;
  wire axis_clock_converter_1_s_axis_tready;
  wire [7:0]axis_subset_converter_0_m_axis_tdata;
  wire axis_subset_converter_0_m_axis_tlast;
  wire axis_subset_converter_0_m_axis_tvalid;
  wire axis_subset_converter_0_s_axis_tready;
  wire [3:0]btn_0_1;
  wire clk_0_1;
  wire fpga_0_clk_int;
  wire fpga_0_led2_b;
  wire fpga_0_led3_b;
  wire fpga_0_led3_g;
  wire fpga_0_led3_r;
  wire fpga_0_led4;
  wire fpga_0_led5;
  wire fpga_0_led6;
  wire fpga_0_led7;
  wire [7:0]fpga_0_partition_input_axis_tdata;
  wire fpga_0_partition_input_axis_tvalid;
  wire fpga_0_partition_output_axis_tready;
  wire fpga_0_phy_ref_clk;
  wire fpga_0_phy_tx_en;
  wire [3:0]fpga_0_phy_txd;
  wire fpga_0_rst_int;
  wire fpga_0_uart_txd;
  wire mii_to_rmii_0_rmii2mac_col;
  wire mii_to_rmii_0_rmii2mac_crs;
  wire mii_to_rmii_0_rmii2mac_rx_clk;
  wire mii_to_rmii_0_rmii2mac_rx_dv;
  wire mii_to_rmii_0_rmii2mac_rx_er;
  wire [3:0]mii_to_rmii_0_rmii2mac_rxd;
  wire mii_to_rmii_0_rmii2mac_tx_clk;
  wire mii_to_rmii_0_rmii2phy_tx_en;
  wire [1:0]mii_to_rmii_0_rmii2phy_txd;
  wire phy2rmii_crs_dv_0_1;
  wire phy2rmii_rx_er_0_1;
  wire [1:0]phy2rmii_rxd_0_1;
  wire reset_n_0_1;
  wire [3:0]sw_0_1;
  wire toy_0_data_in_ready;
  wire [7:0]toy_0_data_out;
  wire toy_0_data_out_valid;
  wire uart_rxd_0_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;

  assign btn_0_1 = btn_0[3:0];
  assign clk_0_1 = clk_0;
  assign led2_b_0 = fpga_0_led2_b;
  assign led3_b_0 = fpga_0_led3_b;
  assign led3_g_0 = fpga_0_led3_g;
  assign led3_r_0 = fpga_0_led3_r;
  assign led4_0 = fpga_0_led4;
  assign led5_0 = fpga_0_led5;
  assign led6_0 = fpga_0_led6;
  assign led7_0 = fpga_0_led7;
  assign phy2rmii_crs_dv_0_1 = phy2rmii_crs_dv_0;
  assign phy2rmii_rx_er_0_1 = phy2rmii_rx_er_0;
  assign phy2rmii_rxd_0_1 = phy2rmii_rxd_0[1:0];
  assign phy_ref_clk_1 = fpga_0_phy_ref_clk;
  assign reset_n_0_1 = reset_n_0;
  assign rmii2phy_tx_en_0 = mii_to_rmii_0_rmii2phy_tx_en;
  assign rmii2phy_txd_0[1:0] = mii_to_rmii_0_rmii2phy_txd;
  assign sw_0_1 = sw_0[3:0];
  assign uart_rxd_0_1 = uart_rxd_0;
  assign uart_txd_0 = fpga_0_uart_txd;

  design_1_axis_clock_converter_0_0 axis_clock_converter_0
       (.m_axis_aclk(clk_0_1),
        .m_axis_aresetn(reset_n_0_1),
        .m_axis_tdata(axis_clock_converter_0_m_axis_tdata),
        .m_axis_tready(toy_0_data_in_ready),
        .m_axis_tvalid(axis_clock_converter_0_m_axis_tvalid),
        .s_axis_aclk(fpga_0_clk_int),
        .s_axis_aresetn(util_vector_logic_1_Res),
        .s_axis_tdata(fpga_0_partition_input_axis_tdata),
        .s_axis_tready(axis_clock_converter_0_s_axis_tready),
        .s_axis_tvalid(fpga_0_partition_input_axis_tvalid));
  design_1_axis_clock_converter_0_1 axis_clock_converter_1
       (.m_axis_aclk(fpga_0_clk_int),
        .m_axis_aresetn(util_vector_logic_1_Res),
        .m_axis_tdata(axis_clock_converter_1_m_axis_tdata),
        .m_axis_tlast(axis_clock_converter_1_m_axis_tlast),
        .m_axis_tready(fpga_0_partition_output_axis_tready),
        .m_axis_tvalid(axis_clock_converter_1_m_axis_tvalid),
        .s_axis_aclk(clk_0_1),
        .s_axis_aresetn(reset_n_0_1),
        .s_axis_tdata(axis_subset_converter_0_m_axis_tdata),
        .s_axis_tlast(axis_subset_converter_0_m_axis_tlast),
        .s_axis_tready(axis_clock_converter_1_s_axis_tready),
        .s_axis_tvalid(axis_subset_converter_0_m_axis_tvalid));
  design_1_axis_subset_converter_0_0 axis_subset_converter_0
       (.aclk(clk_0_1),
        .aresetn(reset_n_0_1),
        .m_axis_tdata(axis_subset_converter_0_m_axis_tdata),
        .m_axis_tlast(axis_subset_converter_0_m_axis_tlast),
        .m_axis_tready(axis_clock_converter_1_s_axis_tready),
        .m_axis_tvalid(axis_subset_converter_0_m_axis_tvalid),
        .s_axis_tdata(toy_0_data_out),
        .s_axis_tready(axis_subset_converter_0_s_axis_tready),
        .s_axis_tvalid(toy_0_data_out_valid));
  fpga_wrapper fpga_0
       (.btn(btn_0_1),
        .clk(clk_0_1),
        .clk_int(fpga_0_clk_int),
        .led2_b(fpga_0_led2_b),
        .led3_b(fpga_0_led3_b),
        .led3_g(fpga_0_led3_g),
        .led3_r(fpga_0_led3_r),
        .led4(fpga_0_led4),
        .led5(fpga_0_led5),
        .led6(fpga_0_led6),
        .led7(fpga_0_led7),
        .partition_input_axis_tdata(fpga_0_partition_input_axis_tdata),
        .partition_input_axis_tready(axis_clock_converter_0_s_axis_tready),
        .partition_input_axis_tvalid(fpga_0_partition_input_axis_tvalid),
        .partition_output_axis_tdata(axis_clock_converter_1_m_axis_tdata),
        .partition_output_axis_tlast(axis_clock_converter_1_m_axis_tlast),
        .partition_output_axis_tready(fpga_0_partition_output_axis_tready),
        .partition_output_axis_tvalid(axis_clock_converter_1_m_axis_tvalid),
        .phy_col(mii_to_rmii_0_rmii2mac_col),
        .phy_crs(mii_to_rmii_0_rmii2mac_crs),
        .phy_ref_clk(fpga_0_phy_ref_clk),
        .phy_rx_clk(mii_to_rmii_0_rmii2mac_rx_clk),
        .phy_rx_dv(mii_to_rmii_0_rmii2mac_rx_dv),
        .phy_rx_er(mii_to_rmii_0_rmii2mac_rx_er),
        .phy_rxd(mii_to_rmii_0_rmii2mac_rxd),
        .phy_tx_clk(mii_to_rmii_0_rmii2mac_tx_clk),
        .phy_tx_en(fpga_0_phy_tx_en),
        .phy_txd(fpga_0_phy_txd),
        .reset_n(reset_n_0_1),
        .rst_int(fpga_0_rst_int),
        .sw(sw_0_1),
        .uart_rxd(uart_rxd_0_1),
        .uart_txd(fpga_0_uart_txd));
  design_1_mii_to_rmii_0_0 mii_to_rmii_0
       (.mac2rmii_tx_en(fpga_0_phy_tx_en),
        .mac2rmii_tx_er(1'b0),
        .mac2rmii_txd(fpga_0_phy_txd),
        .phy2rmii_crs_dv(phy2rmii_crs_dv_0_1),
        .phy2rmii_rx_er(phy2rmii_rx_er_0_1),
        .phy2rmii_rxd(phy2rmii_rxd_0_1),
        .ref_clk(fpga_0_phy_ref_clk),
        .rmii2mac_col(mii_to_rmii_0_rmii2mac_col),
        .rmii2mac_crs(mii_to_rmii_0_rmii2mac_crs),
        .rmii2mac_rx_clk(mii_to_rmii_0_rmii2mac_rx_clk),
        .rmii2mac_rx_dv(mii_to_rmii_0_rmii2mac_rx_dv),
        .rmii2mac_rx_er(mii_to_rmii_0_rmii2mac_rx_er),
        .rmii2mac_rxd(mii_to_rmii_0_rmii2mac_rxd),
        .rmii2mac_tx_clk(mii_to_rmii_0_rmii2mac_tx_clk),
        .rmii2phy_tx_en(mii_to_rmii_0_rmii2phy_tx_en),
        .rmii2phy_txd(mii_to_rmii_0_rmii2phy_txd),
        .rst_n(reset_n_0_1));

wire  [3:0] data_in_unpacked [1:0];
assign {>>{data_in_unpacked}} = axis_clock_converter_0_m_axis_tdata;

wire  [3:0] data_out_unpacked [1:0];
assign {>>{toy_0_data_out}} = data_out_unpacked;

  toy #(
     .seq_blocks_0_IN_WIDTH(4),
     .seq_blocks_0_IN_FRAC_WIDTH(2),
     .seq_blocks_0_WEIGHT_WIDTH(4),
     .seq_blocks_0_WEIGHT_FRAC_WIDTH(2),
     .seq_blocks_0_HAS_BIAS(1),
     .seq_blocks_0_BIAS_WIDTH(4),
     .seq_blocks_0_BIAS_FRAC_WIDTH(2),
     .seq_blocks_0_IN_SIZE(2),
     .seq_blocks_0_IN_DEPTH(1),
     .seq_blocks_0_PARALLELISM(2),
     .seq_blocks_0_WEIGHT_SIZE(4),
     .seq_blocks_0_OUT_WIDTH(10),
     .seq_blocks_0_OUT_FRAC_WIDTH(4),
     .seq_blocks_0_OUT_SIZE(2),
     .seq_blocks_0_BIAS_SIZE(2),
     .seq_blocks_1_IN_SIZE(2),
     .seq_blocks_1_IN_FRAC_WIDTH(2),
     .seq_blocks_1_IN_WIDTH(4),
     .seq_blocks_1_OUT_SIZE(2),
     .seq_blocks_1_OUT_FRAC_WIDTH(2),
     .seq_blocks_1_OUT_WIDTH(4),
     .IN_WIDTH(4),
     .OUT_WIDTH(4),
     .IN_SIZE(2),
     .OUT_SIZE(2)
  ) toy_0 (
          .clk (clk_0_1),
          .data_in(data_in_unpacked),
          .data_in_ready(toy_0_data_in_ready),
          .data_in_valid(axis_clock_converter_0_m_axis_tvalid),
          .data_out(data_out_unpacked),
          .data_out_ready(axis_subset_converter_0_s_axis_tready),
          .data_out_valid(toy_0_data_out_valid),
          .rst(util_vector_logic_0_Res)
          );

assign util_vector_logic_0_Res = ~reset_n_0_1;
assign util_vector_logic_1_Res = ~fpga_0_rst_int;


endmodule
