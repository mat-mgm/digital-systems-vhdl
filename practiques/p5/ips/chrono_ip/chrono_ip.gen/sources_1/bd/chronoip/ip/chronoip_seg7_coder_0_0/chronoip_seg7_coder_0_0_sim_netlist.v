// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Nov 30 21:18:00 2022
// Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/docs/q5/Sistemes_digitals/p5/02_ips/chrono_ip/chrono_ip.gen/sources_1/bd/chronoip/ip/chronoip_seg7_coder_0_0/chronoip_seg7_coder_0_0_sim_netlist.v
// Design      : chronoip_seg7_coder_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "chronoip_seg7_coder_0_0,seg7_coder,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "seg7_coder,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module chronoip_seg7_coder_0_0
   (char0,
    char1,
    char2,
    char3,
    clk,
    reset,
    clk_div,
    cat,
    an);
  input [3:0]char0;
  input [3:0]char1;
  input [3:0]char2;
  input [3:0]char3;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input clk_div;
  output [7:0]cat;
  output [3:0]an;

  wire \<const1> ;
  wire [3:0]an;
  wire [7:1]\^cat ;
  wire [3:0]char0;
  wire [3:0]char1;
  wire [3:0]char2;
  wire [3:0]char3;
  wire clk;
  wire clk_div;
  wire reset;

  assign cat[7:1] = \^cat [7:1];
  assign cat[0] = \<const1> ;
  chronoip_seg7_coder_0_0_seg7_coder U0
       (.an(an),
        .cat(\^cat ),
        .char0(char0),
        .char1(char1),
        .char2(char2),
        .char3(char3),
        .clk(clk),
        .clk_div(clk_div),
        .reset(reset));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "seg7_coder" *) 
module chronoip_seg7_coder_0_0_seg7_coder
   (an,
    cat,
    clk_div,
    reset,
    clk,
    char1,
    char0,
    char3,
    char2);
  output [3:0]an;
  output [6:0]cat;
  input clk_div;
  input reset;
  input clk;
  input [3:0]char1;
  input [3:0]char0;
  input [3:0]char3;
  input [3:0]char2;

  wire [3:0]an;
  wire [6:0]cat;
  wire [3:0]char0;
  wire [3:0]char1;
  wire [3:0]char2;
  wire [3:0]char3;
  wire clk;
  wire clk_div;
  wire [1:0]digit_act;
  wire \digit_act[0]_i_1_n_0 ;
  wire \digit_act[1]_i_1_n_0 ;
  wire reset;
  wire [3:0]sel0;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \an[0]_INST_0 
       (.I0(digit_act[1]),
        .I1(digit_act[0]),
        .O(an[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an[1]_INST_0 
       (.I0(digit_act[1]),
        .I1(digit_act[0]),
        .O(an[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an[2]_INST_0 
       (.I0(digit_act[0]),
        .I1(digit_act[1]),
        .O(an[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \an[3]_INST_0 
       (.I0(digit_act[1]),
        .I1(digit_act[0]),
        .O(an[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AA5)) 
    \cat[1]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .O(cat[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFB98)) 
    \cat[2]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(cat[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFB8)) 
    \cat[3]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .O(cat[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hEABC)) 
    \cat[4]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(cat[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hAAB0)) 
    \cat[5]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(cat[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hAEC8)) 
    \cat[6]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(cat[5]));
  LUT4 #(
    .INIT(16'hAA9C)) 
    \cat[7]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(cat[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \cat[7]_INST_0_i_1 
       (.I0(char1[3]),
        .I1(char0[3]),
        .I2(char3[3]),
        .I3(digit_act[1]),
        .I4(digit_act[0]),
        .I5(char2[3]),
        .O(sel0[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \cat[7]_INST_0_i_2 
       (.I0(char1[2]),
        .I1(char0[2]),
        .I2(char3[2]),
        .I3(digit_act[1]),
        .I4(digit_act[0]),
        .I5(char2[2]),
        .O(sel0[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \cat[7]_INST_0_i_3 
       (.I0(char1[0]),
        .I1(char0[0]),
        .I2(char3[0]),
        .I3(digit_act[1]),
        .I4(digit_act[0]),
        .I5(char2[0]),
        .O(sel0[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \cat[7]_INST_0_i_4 
       (.I0(char1[1]),
        .I1(char0[1]),
        .I2(char3[1]),
        .I3(digit_act[1]),
        .I4(digit_act[0]),
        .I5(char2[1]),
        .O(sel0[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \digit_act[0]_i_1 
       (.I0(digit_act[0]),
        .I1(clk_div),
        .I2(reset),
        .O(\digit_act[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \digit_act[1]_i_1 
       (.I0(digit_act[1]),
        .I1(clk_div),
        .I2(digit_act[0]),
        .I3(reset),
        .O(\digit_act[1]_i_1_n_0 ));
  FDRE \digit_act_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\digit_act[0]_i_1_n_0 ),
        .Q(digit_act[0]),
        .R(1'b0));
  FDRE \digit_act_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\digit_act[1]_i_1_n_0 ),
        .Q(digit_act[1]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
