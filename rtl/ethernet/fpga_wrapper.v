// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
// DO NOT MODIFY THIS FILE.


// IP VLNV: user.org:user:fpga:1.0
// IP Revision: 19

(* X_CORE_INFO = "fpga,Vivado 2019.1" *)
(* CHECK_LICENSE_TYPE = "design_1_fpga_0_0,fpga,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module fpga_wrapper (
  clk,
  reset_n,
  sw,
  btn,
  led0_r,
  led0_g,
  led0_b,
  led1_r,
  led1_g,
  led1_b,
  led2_r,
  led2_g,
  led2_b,
  led3_r,
  led3_g,
  led3_b,
  led4,
  led5,
  led6,
  led7,
  phy_ref_clk,
  phy_rx_clk,
  phy_rxd,
  phy_rx_dv,
  phy_rx_er,
  phy_tx_clk,
  phy_txd,
  phy_tx_en,
  phy_col,
  phy_crs,
  phy_reset_n,
  uart_rxd,
  uart_txd,
  partition_input_axis_tdata,
  partition_input_axis_tvalid,
  partition_input_axis_tready,
  partition_input_axis_tlast,
  partition_output_axis_tdata,
  partition_output_axis_tvalid,
  partition_output_axis_tready,
  partition_output_axis_tlast,
  clk_int,
  rst_int
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *)
input wire reset_n;
input wire [3 : 0] sw;
input wire [3 : 0] btn;
output wire led0_r;
output wire led0_g;
output wire led0_b;
output wire led1_r;
output wire led1_g;
output wire led1_b;
output wire led2_r;
output wire led2_g;
output wire led2_b;
output wire led3_r;
output wire led3_g;
output wire led3_b;
output wire led4;
output wire led5;
output wire led6;
output wire led7;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME phy_ref_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_fpga_0_0_phy_ref_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 phy_ref_clk CLK" *)
output wire phy_ref_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME phy_rx_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 phy_rx_clk CLK" *)
input wire phy_rx_clk;
input wire [3 : 0] phy_rxd;
input wire phy_rx_dv;
input wire phy_rx_er;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME phy_tx_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 phy_tx_clk CLK" *)
input wire phy_tx_clk;
output wire [3 : 0] phy_txd;
output wire phy_tx_en;
input wire phy_col;
input wire phy_crs;
output wire phy_reset_n;
input wire uart_rxd;
output wire uart_txd;
output wire [7 : 0] partition_input_axis_tdata;
output wire partition_input_axis_tvalid;
input wire partition_input_axis_tready;
output wire partition_input_axis_tlast;
input wire [7 : 0] partition_output_axis_tdata;
input wire partition_output_axis_tvalid;
output wire partition_output_axis_tready;
input wire partition_output_axis_tlast;
output wire clk_int;
output wire rst_int;

  fpga inst (
    .clk(clk),
    .reset_n(reset_n),
    .sw(sw),
    .btn(btn),
    .led0_r(led0_r),
    .led0_g(led0_g),
    .led0_b(led0_b),
    .led1_r(led1_r),
    .led1_g(led1_g),
    .led1_b(led1_b),
    .led2_r(led2_r),
    .led2_g(led2_g),
    .led2_b(led2_b),
    .led3_r(led3_r),
    .led3_g(led3_g),
    .led3_b(led3_b),
    .led4(led4),
    .led5(led5),
    .led6(led6),
    .led7(led7),
    .phy_ref_clk(phy_ref_clk),
    .phy_rx_clk(phy_rx_clk),
    .phy_rxd(phy_rxd),
    .phy_rx_dv(phy_rx_dv),
    .phy_rx_er(phy_rx_er),
    .phy_tx_clk(phy_tx_clk),
    .phy_txd(phy_txd),
    .phy_tx_en(phy_tx_en),
    .phy_col(phy_col),
    .phy_crs(phy_crs),
    .phy_reset_n(phy_reset_n),
    .uart_rxd(uart_rxd),
    .uart_txd(uart_txd),
    .partition_input_axis_tdata(partition_input_axis_tdata),
    .partition_input_axis_tvalid(partition_input_axis_tvalid),
    .partition_input_axis_tready(partition_input_axis_tready),
    .partition_input_axis_tlast(partition_input_axis_tlast),
    .partition_output_axis_tdata(partition_output_axis_tdata),
    .partition_output_axis_tvalid(partition_output_axis_tvalid),
    .partition_output_axis_tready(partition_output_axis_tready),
    .partition_output_axis_tlast(partition_output_axis_tlast),
    .clk_int(clk_int),
    .rst_int(rst_int)
  );
endmodule
