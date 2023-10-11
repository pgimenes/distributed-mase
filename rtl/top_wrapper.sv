`timescale 1 ps / 1 ps

module top_wrapper
(
    btn_0,
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
    uart_txd_0
);
  
    input [3:0]btn_0;
    input clk_0;
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
    output phy_ref_clk_1;
    input reset_n_0;
    output rmii2phy_tx_en_0;
    output [1:0]rmii2phy_txd_0;
    input [3:0]sw_0;
    input uart_rxd_0;
    output uart_txd_0;

    wire [3:0]btn_0;
    wire clk_0;
    wire led2_b_0;
    wire led3_b_0;
    wire led3_g_0;
    wire led3_r_0;
    wire led4_0;
    wire led5_0;
    wire led6_0;
    wire led7_0;
    wire phy2rmii_crs_dv_0;
    wire phy2rmii_rx_er_0;
    wire [1:0]phy2rmii_rxd_0;
    wire phy_ref_clk_1;
    wire reset_n_0;
    wire rmii2phy_tx_en_0;
    wire [1:0]rmii2phy_txd_0;
    wire [3:0]sw_0;
    wire uart_rxd_0;
    wire uart_txd_0;

    top top_i (
        .btn_0(btn_0),
        .clk_0(clk_0),
        .led2_b_0(led2_b_0),
        .led3_b_0(led3_b_0),
        .led3_g_0(led3_g_0),
        .led3_r_0(led3_r_0),
        .led4_0(led4_0),
        .led5_0(led5_0),
        .led6_0(led6_0),
        .led7_0(led7_0),
        .phy2rmii_crs_dv_0(phy2rmii_crs_dv_0),
        .phy2rmii_rx_er_0(phy2rmii_rx_er_0),
        .phy2rmii_rxd_0(phy2rmii_rxd_0),
        .phy_ref_clk_1(phy_ref_clk_1),
        .reset_n_0(reset_n_0),
        .rmii2phy_tx_en_0(rmii2phy_tx_en_0),
        .rmii2phy_txd_0(rmii2phy_txd_0),
        .sw_0(sw_0),
        .uart_rxd_0(uart_rxd_0),
        .uart_txd_0(uart_txd_0)
    );

endmodule
