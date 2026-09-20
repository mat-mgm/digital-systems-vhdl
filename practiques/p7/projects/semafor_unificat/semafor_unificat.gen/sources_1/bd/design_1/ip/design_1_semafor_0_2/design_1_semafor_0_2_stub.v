// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Dec 14 11:34:46 2022
// Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/docs/q5/Sistemes_digitals/p7/1_projects/semafor_unificat/semafor_unificat.gen/sources_1/bd/design_1/ip/design_1_semafor_0_2/design_1_semafor_0_2_stub.v
// Design      : design_1_semafor_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "semafor,Vivado 2022.1" *)
module design_1_semafor_0_2(clk, p, reset, div_clk, enable_out, enable_out_b, 
  conta, vermell_c, ambar_c, verd_c, verd_v, vermell_v)
/* synthesis syn_black_box black_box_pad_pin="clk,p,reset,div_clk,enable_out,enable_out_b,conta[7:0],vermell_c,ambar_c,verd_c,verd_v,vermell_v" */;
  input clk;
  input p;
  input reset;
  input div_clk;
  output enable_out;
  output enable_out_b;
  output [7:0]conta;
  output vermell_c;
  output ambar_c;
  output verd_c;
  output verd_v;
  output vermell_v;
endmodule
