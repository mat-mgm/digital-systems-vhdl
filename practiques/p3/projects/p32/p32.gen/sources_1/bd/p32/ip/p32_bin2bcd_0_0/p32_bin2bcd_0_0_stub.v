// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Oct 27 11:53:34 2022
// Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/docs/q5/Sistemes_digitals/p3/p32/p32.gen/sources_1/bd/p32/ip/p32_bin2bcd_0_0/p32_bin2bcd_0_0_stub.v
// Design      : p32_bin2bcd_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "bin2bcd,Vivado 2022.1" *)
module p32_bin2bcd_0_0(bin_in, clk, reset, bcd0, bcd1, bcd2, bcd3, bcd4)
/* synthesis syn_black_box black_box_pad_pin="bin_in[15:0],clk,reset,bcd0[3:0],bcd1[3:0],bcd2[3:0],bcd3[3:0],bcd4[3:0]" */;
  input [15:0]bin_in;
  input clk;
  input reset;
  output [3:0]bcd0;
  output [3:0]bcd1;
  output [3:0]bcd2;
  output [3:0]bcd3;
  output [3:0]bcd4;
endmodule
