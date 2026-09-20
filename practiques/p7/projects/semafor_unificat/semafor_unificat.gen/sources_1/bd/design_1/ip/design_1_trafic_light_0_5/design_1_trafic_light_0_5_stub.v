// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Dec 14 11:58:15 2022
// Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/docs/q5/Sistemes_digitals/p7/1_projects/semafor_unificat/semafor_unificat.gen/sources_1/bd/design_1/ip/design_1_trafic_light_0_5/design_1_trafic_light_0_5_stub.v
// Design      : design_1_trafic_light_0_5
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "trafic_light,Vivado 2022.1" *)
module design_1_trafic_light_0_5(counter, div_clk, div_clk1, clk, enable, enable_b, 
  red_c, ambar_c, green_c, red_v, green_v, reset, cat, an)
/* synthesis syn_black_box black_box_pad_pin="counter[7:0],div_clk,div_clk1,clk,enable,enable_b,red_c,ambar_c,green_c,red_v,green_v,reset,cat[7:0],an[3:0]" */;
  input [7:0]counter;
  input div_clk;
  input div_clk1;
  input clk;
  input enable;
  input enable_b;
  input red_c;
  input ambar_c;
  input green_c;
  input red_v;
  input green_v;
  input reset;
  output [7:0]cat;
  output [3:0]an;
endmodule
