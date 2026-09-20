// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Oct 27 11:52:14 2022
// Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/docs/q5/Sistemes_digitals/p3/p32/p32.gen/sources_1/bd/p32/ip/p32_seg7_coder_0_0/p32_seg7_coder_0_0_stub.v
// Design      : p32_seg7_coder_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "seg7_coder,Vivado 2022.1" *)
module p32_seg7_coder_0_0(char0, char1, char2, char3, clk, reset, clk_div, cat, an)
/* synthesis syn_black_box black_box_pad_pin="char0[3:0],char1[3:0],char2[3:0],char3[3:0],clk,reset,clk_div,cat[7:0],an[3:0]" */;
  input [3:0]char0;
  input [3:0]char1;
  input [3:0]char2;
  input [3:0]char3;
  input clk;
  input reset;
  input clk_div;
  output [7:0]cat;
  output [3:0]an;
endmodule
