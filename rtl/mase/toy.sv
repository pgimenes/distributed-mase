
// =====================================
//     Mase Hardware
//     Model: toy
//     30/03/2023 23:47:30
// =====================================
`timescale 1ns / 1ps
module toy #(
    parameter seq_blocks_0_IN_WIDTH = 4,
    parameter seq_blocks_0_IN_FRAC_WIDTH = 2,
    parameter seq_blocks_0_WEIGHT_WIDTH = 4,
    parameter seq_blocks_0_WEIGHT_FRAC_WIDTH = 2,
    parameter seq_blocks_0_HAS_BIAS = 1,
    parameter seq_blocks_0_BIAS_WIDTH = 4,
    parameter seq_blocks_0_BIAS_FRAC_WIDTH = 2,
    parameter seq_blocks_0_IN_SIZE = 2,
    parameter seq_blocks_0_IN_DEPTH = 1,
    parameter seq_blocks_0_PARALLELISM = 2,
    parameter seq_blocks_0_WEIGHT_SIZE = 4,
    parameter seq_blocks_0_OUT_WIDTH = 10,
    parameter seq_blocks_0_OUT_FRAC_WIDTH = 4,
    parameter seq_blocks_0_OUT_SIZE = 2,
    parameter seq_blocks_0_BIAS_SIZE = 2,
    parameter seq_blocks_1_IN_SIZE = 2,
    parameter seq_blocks_1_IN_FRAC_WIDTH = 2,
    parameter seq_blocks_1_IN_WIDTH = 4,
    parameter seq_blocks_1_OUT_SIZE = 2,
    parameter seq_blocks_1_OUT_FRAC_WIDTH = 2,
    parameter seq_blocks_1_OUT_WIDTH = 4,

    parameter IN_WIDTH  = seq_blocks_0_IN_WIDTH,
    parameter OUT_WIDTH = seq_blocks_1_OUT_WIDTH,
    parameter IN_SIZE   = seq_blocks_0_IN_SIZE,
    parameter OUT_SIZE  = seq_blocks_1_OUT_SIZE
) (
    input clk,
    input rst,

    input [IN_WIDTH-1:0] data_in[IN_SIZE-1:0],
    input data_in_valid,
    output data_in_ready,
    output [OUT_WIDTH-1:0] data_out[OUT_SIZE-1:0],
    output data_out_valid,
    input data_out_ready
);
  // [4][2]
  logic [    seq_blocks_0_IN_WIDTH-1:0] seq_blocks_0_data_in        [    seq_blocks_0_IN_SIZE-1:0];
  logic                                 seq_blocks_0_data_in_valid;
  logic                                 seq_blocks_0_data_in_ready;
  // [10][2]
  logic [   seq_blocks_0_OUT_WIDTH-1:0] seq_blocks_0_data_out       [   seq_blocks_0_OUT_SIZE-1:0];
  logic                                 seq_blocks_0_data_out_valid;
  logic                                 seq_blocks_0_data_out_ready;
  // [4][4]
  logic [seq_blocks_0_WEIGHT_WIDTH-1:0] seq_blocks_0_weight         [seq_blocks_0_WEIGHT_SIZE-1:0];
  logic                                 seq_blocks_0_weight_valid;
  logic                                 seq_blocks_0_weight_ready;
  // [10][2]
  // [4][2]
  logic [  seq_blocks_0_BIAS_WIDTH-1:0] seq_blocks_0_bias           [  seq_blocks_0_BIAS_SIZE-1:0];
  logic                                 seq_blocks_0_bias_valid;
  logic                                 seq_blocks_0_bias_ready;
  // [10][2]
  // [4][2]
  logic [    seq_blocks_1_IN_WIDTH-1:0] seq_blocks_1_data_in        [    seq_blocks_1_IN_SIZE-1:0];
  logic                                 seq_blocks_1_data_in_valid;
  logic                                 seq_blocks_1_data_in_ready;
  // [4][2]
  logic [   seq_blocks_1_OUT_WIDTH-1:0] seq_blocks_1_data_out       [   seq_blocks_1_OUT_SIZE-1:0];
  logic                                 seq_blocks_1_data_out_valid;
  logic                                 seq_blocks_1_data_out_ready;


  fixed_linear #(
      .IN_WIDTH(seq_blocks_0_IN_WIDTH),  // = 4
      .IN_FRAC_WIDTH(seq_blocks_0_IN_FRAC_WIDTH),  // = 2
      .WEIGHT_WIDTH(seq_blocks_0_WEIGHT_WIDTH),  // = 4
      .WEIGHT_FRAC_WIDTH(seq_blocks_0_WEIGHT_FRAC_WIDTH),  // = 2
      .HAS_BIAS(seq_blocks_0_HAS_BIAS),  // = 1
      .BIAS_WIDTH(seq_blocks_0_BIAS_WIDTH),  // = 4
      .BIAS_FRAC_WIDTH(seq_blocks_0_BIAS_FRAC_WIDTH),  // = 2
      .IN_SIZE(seq_blocks_0_IN_SIZE),  // = 2
      .IN_DEPTH(seq_blocks_0_IN_DEPTH),  // = 1
      .PARALLELISM(seq_blocks_0_PARALLELISM),  // = 2
      .WEIGHT_SIZE(seq_blocks_0_WEIGHT_SIZE),  // = 4
      .OUT_WIDTH(seq_blocks_0_OUT_WIDTH),  // = 10
      .OUT_FRAC_WIDTH(seq_blocks_0_OUT_FRAC_WIDTH),  // = 4
      .OUT_SIZE(seq_blocks_0_OUT_SIZE),  // = 2
      .BIAS_SIZE(seq_blocks_0_BIAS_SIZE)
  ) seq_blocks_0 (
      .clk(clk),
      .rst(rst),

      .weight(seq_blocks_0_weight),  // [4][4]
      .weight_valid(seq_blocks_0_weight_valid),
      .weight_ready(seq_blocks_0_weight_ready),

      .bias(seq_blocks_0_bias),  // [4][2]
      .bias_valid(seq_blocks_0_bias_valid),
      .bias_ready(seq_blocks_0_bias_ready),

      .data_in(seq_blocks_0_data_in),  // [4][2]
      .data_in_valid(seq_blocks_0_data_in_valid),
      .data_in_ready(seq_blocks_0_data_in_ready),

      .data_out(seq_blocks_0_data_out),  // [10][2]
      .data_out_valid(seq_blocks_0_data_out_valid),
      .data_out_ready(seq_blocks_0_data_out_ready)
  );

  seq_blocks_0_weight_source #(
      .OUT_DEPTH(seq_blocks_0_IN_DEPTH),  // = 1
      .OUT_WIDTH(seq_blocks_0_WEIGHT_WIDTH),  // = 4
      .OUT_SIZE(seq_blocks_0_WEIGHT_SIZE)  // = 4
  ) seq_blocks_0_weight_source_0 (
      .clk(clk),
      .rst(rst),
      .data_out(seq_blocks_0_weight),  // [4][4]
      .data_out_ready(seq_blocks_0_weight_ready),
      .data_out_valid(seq_blocks_0_weight_valid)
  );

  seq_blocks_0_bias_source #(
      .OUT_DEPTH(seq_blocks_0_IN_DEPTH),    // = 1
      .OUT_WIDTH(seq_blocks_0_BIAS_WIDTH),  // = 4
      .OUT_SIZE (seq_blocks_0_BIAS_SIZE)    // = 2
  ) seq_blocks_0_bias_source_0 (
      .clk(clk),
      .rst(rst),
      .data_out(seq_blocks_0_bias),  // [4][2]
      .data_out_ready(seq_blocks_0_bias_ready),
      .data_out_valid(seq_blocks_0_bias_valid)
  );

  fixed_relu #(
      .IN_SIZE(seq_blocks_1_IN_SIZE),  // = 2
      .IN_FRAC_WIDTH(seq_blocks_1_IN_FRAC_WIDTH),  // = 2
      .IN_WIDTH(seq_blocks_1_IN_WIDTH),  // = 4
      .OUT_SIZE(seq_blocks_1_OUT_SIZE),  // = 2
      .OUT_FRAC_WIDTH(seq_blocks_1_OUT_FRAC_WIDTH),  // = 2
      .OUT_WIDTH(seq_blocks_1_OUT_WIDTH)
  ) seq_blocks_1 (
      .clk(clk),
      .rst(rst),

      .data_in(seq_blocks_1_data_in),  // [4][2]
      .data_in_valid(seq_blocks_1_data_in_valid),
      .data_in_ready(seq_blocks_1_data_in_ready),

      .data_out(seq_blocks_1_data_out),  // [4][2]
      .data_out_valid(seq_blocks_1_data_out_valid),
      .data_out_ready(seq_blocks_1_data_out_ready)
  );


  assign data_in_ready  = seq_blocks_0_data_in_ready;
  assign seq_blocks_0_data_in    = data_in;
  assign seq_blocks_0_data_in_valid = data_in_valid;
  assign seq_blocks_1_data_out_ready  = data_out_ready;
  assign data_out    = seq_blocks_1_data_out;
  assign data_out_valid = seq_blocks_1_data_out_valid;

  assign seq_blocks_0_data_out_ready  = seq_blocks_1_data_in_ready;
  assign seq_blocks_1_data_in_valid = seq_blocks_0_data_out_valid;
  // assign seq_blocks_1_data_in = seq_blocks_0_data_out;
  fixed_cast #(
      .IN_SIZE(seq_blocks_0_OUT_SIZE),
      .IN_WIDTH(seq_blocks_0_OUT_WIDTH),
      .IN_FRAC_WIDTH(seq_blocks_0_OUT_FRAC_WIDTH),
      .OUT_WIDTH(seq_blocks_1_IN_WIDTH),
      .OUT_FRAC_WIDTH(seq_blocks_1_IN_FRAC_WIDTH)
  ) seq_blocks_0_data_out_cast (
      .data_in (seq_blocks_0_data_out),  // [10][2]
      .data_out(seq_blocks_1_data_in)    // [4][2]
  );

endmodule
