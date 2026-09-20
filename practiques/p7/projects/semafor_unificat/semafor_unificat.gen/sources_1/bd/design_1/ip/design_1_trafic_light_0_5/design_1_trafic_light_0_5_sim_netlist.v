// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Dec 14 11:58:15 2022
// Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/docs/q5/Sistemes_digitals/p7/1_projects/semafor_unificat/semafor_unificat.gen/sources_1/bd/design_1/ip/design_1_trafic_light_0_5/design_1_trafic_light_0_5_sim_netlist.v
// Design      : design_1_trafic_light_0_5
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_trafic_light_0_5,trafic_light,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "trafic_light,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module design_1_trafic_light_0_5
   (counter,
    div_clk,
    div_clk1,
    clk,
    enable,
    enable_b,
    red_c,
    ambar_c,
    green_c,
    red_v,
    green_v,
    reset,
    cat,
    an);
  input [7:0]counter;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 div_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME div_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input div_clk;
  input div_clk1;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk, INSERT_VIP 0" *) input clk;
  input enable;
  input enable_b;
  input red_c;
  input ambar_c;
  input green_c;
  input red_v;
  input green_v;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;
  output [7:0]cat;
  output [3:0]an;

  wire \<const1> ;
  wire ambar_c;
  wire [3:0]an;
  wire [7:1]\^cat ;
  wire clk;
  wire [7:0]counter;
  wire div_clk;
  wire enable;
  wire enable_b;
  wire green_c;
  wire green_v;
  wire red_c;
  wire red_v;
  wire reset;

  assign cat[7:1] = \^cat [7:1];
  assign cat[0] = \<const1> ;
  design_1_trafic_light_0_5_trafic_light U0
       (.AS({green_c,ambar_c}),
        .an(an),
        .cat(\^cat ),
        .clk(clk),
        .counter(counter),
        .div_clk(div_clk),
        .enable(enable),
        .enable_b(enable_b),
        .green_v(green_v),
        .red_c(red_c),
        .red_v(red_v),
        .reset(reset));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "trafic_light" *) 
module design_1_trafic_light_0_5_trafic_light
   (an,
    cat,
    AS,
    green_v,
    enable_b,
    counter,
    enable,
    red_c,
    red_v,
    div_clk,
    reset,
    clk);
  output [3:0]an;
  output [6:0]cat;
  input [1:0]AS;
  input green_v;
  input enable_b;
  input [7:0]counter;
  input enable;
  input red_c;
  input red_v;
  input div_clk;
  input reset;
  input clk;

  wire [1:0]AS;
  wire [3:0]an;
  wire [7:0]bcdcount;
  wire \bcdcount_reg[1]_i_1_n_0 ;
  wire \bcdcount_reg[2]_i_1_n_0 ;
  wire \bcdcount_reg[3]_i_1_n_0 ;
  wire \bcdcount_reg[4]_i_1_n_0 ;
  wire \bcdcount_reg[4]_i_2_n_0 ;
  wire \bcdcount_reg[4]_i_3_n_0 ;
  wire \bcdcount_reg[4]_i_4_n_0 ;
  wire [6:0]cat;
  wire \cat[7]_INST_0_i_5_n_0 ;
  wire \cat[7]_INST_0_i_6_n_0 ;
  wire \cat[7]_INST_0_i_7_n_0 ;
  wire [2:0]char2;
  wire [3:3]char2__0;
  wire \char2_reg[0]_i_1_n_0 ;
  wire [2:0]char3;
  wire \char3_reg[2]_i_1_n_0 ;
  wire clk;
  wire [7:0]counter;
  wire [1:0]digit_act;
  wire \digit_act[0]_i_1_n_0 ;
  wire \digit_act[1]_i_1_n_0 ;
  wire div_clk;
  wire enable;
  wire enable_b;
  wire green_v;
  wire red_c;
  wire red_v;
  wire reset;
  wire [3:0]sel0;
  wire [7:5]to_bcd;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \an[0]_INST_0 
       (.I0(digit_act[1]),
        .I1(digit_act[0]),
        .O(an[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an[1]_INST_0 
       (.I0(digit_act[1]),
        .I1(digit_act[0]),
        .O(an[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an[2]_INST_0 
       (.I0(digit_act[0]),
        .I1(digit_act[1]),
        .O(an[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \an[3]_INST_0 
       (.I0(digit_act[1]),
        .I1(digit_act[0]),
        .O(an[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bcdcount_reg[0] 
       (.CLR(1'b0),
        .D(counter[0]),
        .G(enable),
        .GE(1'b1),
        .Q(bcdcount[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bcdcount_reg[1] 
       (.CLR(1'b0),
        .D(\bcdcount_reg[1]_i_1_n_0 ),
        .G(enable),
        .GE(1'b1),
        .Q(bcdcount[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0876916E)) 
    \bcdcount_reg[1]_i_1 
       (.I0(\bcdcount_reg[4]_i_2_n_0 ),
        .I1(\bcdcount_reg[4]_i_3_n_0 ),
        .I2(counter[2]),
        .I3(counter[1]),
        .I4(\bcdcount_reg[4]_i_4_n_0 ),
        .O(\bcdcount_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bcdcount_reg[2] 
       (.CLR(1'b0),
        .D(\bcdcount_reg[2]_i_1_n_0 ),
        .G(enable),
        .GE(1'b1),
        .Q(bcdcount[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h3C4A3C52)) 
    \bcdcount_reg[2]_i_1 
       (.I0(\bcdcount_reg[4]_i_2_n_0 ),
        .I1(\bcdcount_reg[4]_i_3_n_0 ),
        .I2(counter[2]),
        .I3(counter[1]),
        .I4(\bcdcount_reg[4]_i_4_n_0 ),
        .O(\bcdcount_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bcdcount_reg[3] 
       (.CLR(1'b0),
        .D(\bcdcount_reg[3]_i_1_n_0 ),
        .G(enable),
        .GE(1'b1),
        .Q(bcdcount[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h04C76220)) 
    \bcdcount_reg[3]_i_1 
       (.I0(\bcdcount_reg[4]_i_2_n_0 ),
        .I1(\bcdcount_reg[4]_i_3_n_0 ),
        .I2(counter[2]),
        .I3(counter[1]),
        .I4(\bcdcount_reg[4]_i_4_n_0 ),
        .O(\bcdcount_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bcdcount_reg[4] 
       (.CLR(1'b0),
        .D(\bcdcount_reg[4]_i_1_n_0 ),
        .G(enable),
        .GE(1'b1),
        .Q(bcdcount[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h95566666)) 
    \bcdcount_reg[4]_i_1 
       (.I0(\bcdcount_reg[4]_i_2_n_0 ),
        .I1(\bcdcount_reg[4]_i_3_n_0 ),
        .I2(counter[2]),
        .I3(counter[1]),
        .I4(\bcdcount_reg[4]_i_4_n_0 ),
        .O(\bcdcount_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h249A45A2)) 
    \bcdcount_reg[4]_i_2 
       (.I0(counter[4]),
        .I1(counter[5]),
        .I2(counter[7]),
        .I3(counter[6]),
        .I4(counter[3]),
        .O(\bcdcount_reg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3973CE9C31638C18)) 
    \bcdcount_reg[4]_i_3 
       (.I0(counter[3]),
        .I1(counter[4]),
        .I2(counter[5]),
        .I3(counter[7]),
        .I4(counter[6]),
        .I5(counter[2]),
        .O(\bcdcount_reg[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hC3611C86)) 
    \bcdcount_reg[4]_i_4 
       (.I0(counter[6]),
        .I1(counter[7]),
        .I2(counter[5]),
        .I3(counter[4]),
        .I4(counter[3]),
        .O(\bcdcount_reg[4]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bcdcount_reg[5] 
       (.CLR(1'b0),
        .D(to_bcd[5]),
        .G(enable),
        .GE(1'b1),
        .Q(bcdcount[5]));
  LUT6 #(
    .INIT(64'h01C8800EFF0307F0)) 
    \bcdcount_reg[5]_i_1 
       (.I0(counter[2]),
        .I1(counter[3]),
        .I2(counter[6]),
        .I3(counter[7]),
        .I4(counter[5]),
        .I5(counter[4]),
        .O(to_bcd[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bcdcount_reg[6] 
       (.CLR(1'b0),
        .D(to_bcd[6]),
        .G(enable),
        .GE(1'b1),
        .Q(bcdcount[6]));
  LUT6 #(
    .INIT(64'hF10F0F000F0C08F0)) 
    \bcdcount_reg[6]_i_1 
       (.I0(counter[2]),
        .I1(counter[3]),
        .I2(counter[6]),
        .I3(counter[7]),
        .I4(counter[5]),
        .I5(counter[4]),
        .O(to_bcd[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bcdcount_reg[7] 
       (.CLR(1'b0),
        .D(to_bcd[7]),
        .G(enable),
        .GE(1'b1),
        .Q(bcdcount[7]));
  LUT6 #(
    .INIT(64'h0E0000F000103000)) 
    \bcdcount_reg[7]_i_1 
       (.I0(counter[2]),
        .I1(counter[3]),
        .I2(counter[6]),
        .I3(counter[7]),
        .I4(counter[5]),
        .I5(counter[4]),
        .O(to_bcd[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6885)) 
    \cat[1]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .O(cat[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hD998)) 
    \cat[2]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(cat[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF798)) 
    \cat[3]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .O(cat[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hCAB4)) 
    \cat[4]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(cat[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hA830)) 
    \cat[5]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(cat[4]));
  LUT4 #(
    .INIT(16'h8CC8)) 
    \cat[6]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(cat[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h889C)) 
    \cat[7]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(cat[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFDDF5)) 
    \cat[7]_INST_0_i_1 
       (.I0(enable),
        .I1(bcdcount[7]),
        .I2(bcdcount[3]),
        .I3(digit_act[0]),
        .I4(digit_act[1]),
        .O(sel0[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hEAFAEAAA)) 
    \cat[7]_INST_0_i_2 
       (.I0(\cat[7]_INST_0_i_5_n_0 ),
        .I1(char3[2]),
        .I2(digit_act[1]),
        .I3(digit_act[0]),
        .I4(char2[2]),
        .O(sel0[2]));
  LUT5 #(
    .INIT(32'hEAFAEAAA)) 
    \cat[7]_INST_0_i_3 
       (.I0(\cat[7]_INST_0_i_6_n_0 ),
        .I1(char3[0]),
        .I2(digit_act[1]),
        .I3(digit_act[0]),
        .I4(char2[0]),
        .O(sel0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEAFAEAAA)) 
    \cat[7]_INST_0_i_4 
       (.I0(\cat[7]_INST_0_i_7_n_0 ),
        .I1(char3[1]),
        .I2(digit_act[1]),
        .I3(digit_act[0]),
        .I4(char2[1]),
        .O(sel0[1]));
  LUT5 #(
    .INIT(32'h0E020F0F)) 
    \cat[7]_INST_0_i_5 
       (.I0(bcdcount[2]),
        .I1(digit_act[0]),
        .I2(digit_act[1]),
        .I3(bcdcount[6]),
        .I4(enable),
        .O(\cat[7]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0E020F0F)) 
    \cat[7]_INST_0_i_6 
       (.I0(bcdcount[0]),
        .I1(digit_act[0]),
        .I2(digit_act[1]),
        .I3(bcdcount[4]),
        .I4(enable),
        .O(\cat[7]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0E000200)) 
    \cat[7]_INST_0_i_7 
       (.I0(bcdcount[1]),
        .I1(digit_act[0]),
        .I2(digit_act[1]),
        .I3(enable),
        .I4(bcdcount[5]),
        .O(\cat[7]_INST_0_i_7_n_0 ));
  LDCP \char2_reg[0] 
       (.CLR(\char2_reg[0]_i_1_n_0 ),
        .D(1'b0),
        .G(red_v),
        .PRE(enable_b),
        .Q(char2[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \char2_reg[0]_i_1 
       (.I0(green_v),
        .I1(enable_b),
        .O(\char2_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \char2_reg[1] 
       (.CLR(char2__0),
        .D(1'b1),
        .G(red_v),
        .GE(1'b1),
        .Q(char2[1]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDPE #(
    .INIT(1'b1)) 
    \char2_reg[2] 
       (.D(1'b0),
        .G(red_v),
        .GE(1'b1),
        .PRE(char2__0),
        .Q(char2[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \char2_reg[2]_i_1 
       (.I0(green_v),
        .I1(enable_b),
        .O(char2__0));
  LDCP \char3_reg[0] 
       (.CLR(AS[1]),
        .D(1'b0),
        .G(red_c),
        .PRE(AS[0]),
        .Q(char3[0]));
  LDCP \char3_reg[1] 
       (.CLR(AS[1]),
        .D(1'b1),
        .G(red_c),
        .PRE(AS[0]),
        .Q(char3[1]));
  LDCP \char3_reg[2] 
       (.CLR(\char3_reg[2]_i_1_n_0 ),
        .D(1'b0),
        .G(red_c),
        .PRE(AS[1]),
        .Q(char3[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \char3_reg[2]_i_1 
       (.I0(AS[0]),
        .I1(AS[1]),
        .O(\char3_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \digit_act[0]_i_1 
       (.I0(digit_act[0]),
        .I1(div_clk),
        .I2(reset),
        .O(\digit_act[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \digit_act[1]_i_1 
       (.I0(digit_act[1]),
        .I1(div_clk),
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
