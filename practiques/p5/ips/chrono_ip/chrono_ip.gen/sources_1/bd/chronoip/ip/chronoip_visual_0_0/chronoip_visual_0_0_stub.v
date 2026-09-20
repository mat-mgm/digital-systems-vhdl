// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Nov 30 23:46:06 2022
// Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/docs/q5/Sistemes_digitals/p5/02_ips/chrono_ip/chrono_ip.gen/sources_1/bd/chronoip/ip/chronoip_visual_0_0/chronoip_visual_0_0_stub.v
// Design      : chronoip_visual_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "visual,Vivado 2022.1" *)
module chronoip_visual_0_0(btnr, reset, clk, mssc, st, lap, centiseg, deciseg, seg, 
  decaseg, min, decamin, disp0, disp1, disp2, disp3, crono_enable)
/* synthesis syn_black_box black_box_pad_pin="btnr,reset,clk,mssc,st,lap,centiseg[3:0],deciseg[3:0],seg[3:0],decaseg[3:0],min[3:0],decamin[3:0],disp0[3:0],disp1[3:0],disp2[3:0],disp3[3:0],crono_enable" */;
  input btnr;
  input reset;
  input clk;
  input mssc;
  input st;
  input lap;
  input [3:0]centiseg;
  input [3:0]deciseg;
  input [3:0]seg;
  input [3:0]decaseg;
  input [3:0]min;
  input [3:0]decamin;
  output [3:0]disp0;
  output [3:0]disp1;
  output [3:0]disp2;
  output [3:0]disp3;
  output crono_enable;
endmodule
