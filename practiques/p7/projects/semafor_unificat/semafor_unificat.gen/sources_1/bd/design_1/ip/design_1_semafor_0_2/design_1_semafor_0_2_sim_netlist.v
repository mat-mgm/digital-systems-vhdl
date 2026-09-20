// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Dec 14 11:34:46 2022
// Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/docs/q5/Sistemes_digitals/p7/1_projects/semafor_unificat/semafor_unificat.gen/sources_1/bd/design_1/ip/design_1_semafor_0_2/design_1_semafor_0_2_sim_netlist.v
// Design      : design_1_semafor_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_semafor_0_2,semafor,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "semafor,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module design_1_semafor_0_2
   (clk,
    p,
    reset,
    div_clk,
    enable_out,
    enable_out_b,
    conta,
    vermell_c,
    ambar_c,
    verd_c,
    verd_v,
    vermell_v);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk, INSERT_VIP 0" *) input clk;
  input p;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 div_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME div_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input div_clk;
  output enable_out;
  output enable_out_b;
  output [7:0]conta;
  output vermell_c;
  output ambar_c;
  output verd_c;
  output verd_v;
  output vermell_v;

  wire ambar_c;
  wire clk;
  wire [5:0]\^conta ;
  wire div_clk;
  wire enable_out;
  wire enable_out_b;
  wire p;
  wire reset;
  wire verd_c;
  wire verd_v;
  wire vermell_c;
  wire vermell_v;

  assign conta[7] = \^conta [5];
  assign conta[6] = \^conta [5];
  assign conta[5:0] = \^conta [5:0];
  design_1_semafor_0_2_semafor U0
       (.ambar_c(ambar_c),
        .clk(clk),
        .conta(\^conta ),
        .div_clk(div_clk),
        .enable_out(enable_out),
        .enable_out_b(enable_out_b),
        .p(p),
        .reset(reset),
        .verd_c(verd_c),
        .verd_v(verd_v),
        .vermell_c(vermell_c),
        .vermell_v(vermell_v));
endmodule

(* ORIG_REF_NAME = "semafor" *) 
module design_1_semafor_0_2_semafor
   (enable_out,
    enable_out_b,
    vermell_c,
    ambar_c,
    verd_c,
    verd_v,
    vermell_v,
    conta,
    reset,
    clk,
    div_clk,
    p);
  output enable_out;
  output enable_out_b;
  output vermell_c;
  output ambar_c;
  output verd_c;
  output verd_v;
  output vermell_v;
  output [5:0]conta;
  input reset;
  input clk;
  input div_clk;
  input p;

  wire \FSM_sequential_act_state[0]_i_1_n_0 ;
  wire \FSM_sequential_act_state[1]_i_1_n_0 ;
  wire \FSM_sequential_act_state[2]_i_1_n_0 ;
  wire \FSM_sequential_next_state_reg[0]_i_2_n_0 ;
  wire \FSM_sequential_next_state_reg[0]_i_3_n_0 ;
  wire \FSM_sequential_next_state_reg[0]_i_4_n_0 ;
  wire \FSM_sequential_next_state_reg[0]_i_5_n_0 ;
  wire \FSM_sequential_next_state_reg[0]_i_6_n_0 ;
  wire \FSM_sequential_next_state_reg[0]_i_7_n_0 ;
  wire \FSM_sequential_next_state_reg[2]_i_2_n_0 ;
  wire \FSM_sequential_next_state_reg[2]_i_3_n_0 ;
  wire \FSM_sequential_next_state_reg[2]_i_4_n_0 ;
  wire \FSM_sequential_next_state_reg[2]_i_5_n_0 ;
  wire \FSM_sequential_next_state_reg[2]_i_6_n_0 ;
  wire \FSM_sequential_next_state_reg[2]_i_7_n_0 ;
  wire [2:0]act_state;
  wire ambar_c;
  wire ambar_c_reg_i_1_n_0;
  wire ambar_c_reg_i_2_n_0;
  wire ambar_c_reg_i_3_n_0;
  wire clk;
  wire [5:0]conta;
  wire div_clk;
  wire enable_out;
  wire enable_out_b;
  wire enable_out_b_reg_i_1_n_0;
  wire enable_out_b_reg_i_2_n_0;
  wire enable_out_reg_i_1_n_0;
  wire enable_out_reg_i_2_n_0;
  wire enable_out_reg_i_3_n_0;
  wire [2:0]next_state;
  wire [2:0]next_state__0;
  wire p;
  wire [4:1]p_1_in;
  wire reset;
  wire [4:0]temps;
  wire verd_c;
  wire verd_c_reg_i_1_n_0;
  wire verd_v;
  wire vermell_c;
  wire vermell_c_reg_i_1_n_0;
  wire vermell_c_reg_i_2_n_0;
  wire vermell_c_reg_i_3_n_0;
  wire vermell_v;
  wire vermell_v_reg_i_1_n_0;

  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_act_state[0]_i_1 
       (.I0(next_state[0]),
        .I1(reset),
        .O(\FSM_sequential_act_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_act_state[1]_i_1 
       (.I0(next_state[1]),
        .I1(reset),
        .O(\FSM_sequential_act_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_act_state[2]_i_1 
       (.I0(next_state[2]),
        .I1(reset),
        .O(\FSM_sequential_act_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "walk_req:001,all_stop_1:010,walk:011,end_walk:100,no_walk:000,all_stop_2:101" *) 
  FDRE \FSM_sequential_act_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_act_state[0]_i_1_n_0 ),
        .Q(act_state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "walk_req:001,all_stop_1:010,walk:011,end_walk:100,no_walk:000,all_stop_2:101" *) 
  FDRE \FSM_sequential_act_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_act_state[1]_i_1_n_0 ),
        .Q(act_state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "walk_req:001,all_stop_1:010,walk:011,end_walk:100,no_walk:000,all_stop_2:101" *) 
  FDRE \FSM_sequential_act_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_act_state[2]_i_1_n_0 ),
        .Q(act_state[2]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_state_reg[0] 
       (.CLR(1'b0),
        .D(next_state__0[0]),
        .G(\FSM_sequential_next_state_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0004)) 
    \FSM_sequential_next_state_reg[0]_i_1 
       (.I0(\FSM_sequential_next_state_reg[0]_i_2_n_0 ),
        .I1(act_state[2]),
        .I2(act_state[0]),
        .I3(\FSM_sequential_next_state_reg[0]_i_3_n_0 ),
        .I4(\FSM_sequential_next_state_reg[0]_i_4_n_0 ),
        .I5(\FSM_sequential_next_state_reg[0]_i_5_n_0 ),
        .O(next_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_next_state_reg[0]_i_2 
       (.I0(temps[0]),
        .I1(temps[1]),
        .O(\FSM_sequential_next_state_reg[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_next_state_reg[0]_i_3 
       (.I0(temps[3]),
        .I1(temps[2]),
        .I2(temps[4]),
        .O(\FSM_sequential_next_state_reg[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_sequential_next_state_reg[0]_i_4 
       (.I0(act_state[0]),
        .I1(p),
        .I2(act_state[2]),
        .I3(act_state[1]),
        .O(\FSM_sequential_next_state_reg[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \FSM_sequential_next_state_reg[0]_i_5 
       (.I0(\FSM_sequential_next_state_reg[0]_i_6_n_0 ),
        .I1(\FSM_sequential_next_state_reg[0]_i_7_n_0 ),
        .I2(temps[4]),
        .I3(act_state[0]),
        .I4(temps[1]),
        .I5(temps[0]),
        .O(\FSM_sequential_next_state_reg[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_next_state_reg[0]_i_6 
       (.I0(temps[2]),
        .I1(temps[3]),
        .O(\FSM_sequential_next_state_reg[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_next_state_reg[0]_i_7 
       (.I0(act_state[2]),
        .I1(act_state[1]),
        .O(\FSM_sequential_next_state_reg[0]_i_7_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_state_reg[1] 
       (.CLR(1'b0),
        .D(next_state__0[1]),
        .G(\FSM_sequential_next_state_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_next_state_reg[1]_i_1 
       (.I0(act_state[2]),
        .I1(temps[4]),
        .I2(\FSM_sequential_next_state_reg[2]_i_5_n_0 ),
        .O(next_state__0[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_state_reg[2] 
       (.CLR(1'b0),
        .D(next_state__0[2]),
        .G(\FSM_sequential_next_state_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[2]));
  LUT6 #(
    .INIT(64'h00000000AAAAAAEA)) 
    \FSM_sequential_next_state_reg[2]_i_1 
       (.I0(\FSM_sequential_next_state_reg[2]_i_3_n_0 ),
        .I1(\FSM_sequential_next_state_reg[2]_i_4_n_0 ),
        .I2(act_state[0]),
        .I3(act_state[2]),
        .I4(temps[2]),
        .I5(temps[4]),
        .O(next_state__0[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF40)) 
    \FSM_sequential_next_state_reg[2]_i_2 
       (.I0(act_state[2]),
        .I1(temps[4]),
        .I2(\FSM_sequential_next_state_reg[2]_i_5_n_0 ),
        .I3(next_state__0[2]),
        .I4(reset),
        .I5(\FSM_sequential_next_state_reg[2]_i_6_n_0 ),
        .O(\FSM_sequential_next_state_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \FSM_sequential_next_state_reg[2]_i_3 
       (.I0(temps[0]),
        .I1(temps[1]),
        .I2(act_state[2]),
        .I3(act_state[0]),
        .I4(temps[3]),
        .I5(temps[2]),
        .O(\FSM_sequential_next_state_reg[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \FSM_sequential_next_state_reg[2]_i_4 
       (.I0(act_state[1]),
        .I1(temps[3]),
        .I2(temps[1]),
        .I3(temps[0]),
        .O(\FSM_sequential_next_state_reg[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000200000)) 
    \FSM_sequential_next_state_reg[2]_i_5 
       (.I0(temps[2]),
        .I1(temps[3]),
        .I2(temps[0]),
        .I3(temps[1]),
        .I4(act_state[0]),
        .I5(act_state[1]),
        .O(\FSM_sequential_next_state_reg[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000440F000044)) 
    \FSM_sequential_next_state_reg[2]_i_6 
       (.I0(act_state[1]),
        .I1(p),
        .I2(\FSM_sequential_next_state_reg[0]_i_3_n_0 ),
        .I3(act_state[2]),
        .I4(act_state[0]),
        .I5(\FSM_sequential_next_state_reg[2]_i_7_n_0 ),
        .O(\FSM_sequential_next_state_reg[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_next_state_reg[2]_i_7 
       (.I0(temps[0]),
        .I1(temps[1]),
        .O(\FSM_sequential_next_state_reg[2]_i_7_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    ambar_c_reg
       (.CLR(ambar_c_reg_i_3_n_0),
        .D(ambar_c_reg_i_1_n_0),
        .G(ambar_c_reg_i_2_n_0),
        .GE(1'b1),
        .Q(ambar_c));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h10)) 
    ambar_c_reg_i_1
       (.I0(act_state[2]),
        .I1(act_state[1]),
        .I2(act_state[0]),
        .O(ambar_c_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h3E)) 
    ambar_c_reg_i_2
       (.I0(act_state[0]),
        .I1(act_state[1]),
        .I2(act_state[2]),
        .O(ambar_c_reg_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ambar_c_reg_i_3
       (.I0(act_state[2]),
        .I1(act_state[1]),
        .I2(act_state[0]),
        .O(ambar_c_reg_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \conta[0]_INST_0 
       (.I0(temps[0]),
        .O(conta[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \conta[1]_INST_0 
       (.I0(temps[0]),
        .I1(temps[1]),
        .O(conta[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h87)) 
    \conta[2]_INST_0 
       (.I0(temps[0]),
        .I1(temps[1]),
        .I2(temps[2]),
        .O(conta[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF807)) 
    \conta[3]_INST_0 
       (.I0(temps[0]),
        .I1(temps[1]),
        .I2(temps[2]),
        .I3(temps[3]),
        .O(conta[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF0E1E1E1)) 
    \conta[4]_INST_0 
       (.I0(temps[3]),
        .I1(temps[2]),
        .I2(temps[4]),
        .I3(temps[0]),
        .I4(temps[1]),
        .O(conta[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000007)) 
    \conta[5]_INST_0 
       (.I0(temps[1]),
        .I1(temps[0]),
        .I2(temps[4]),
        .I3(temps[2]),
        .I4(temps[3]),
        .O(conta[5]));
  LDCP enable_out_b_reg
       (.CLR(enable_out_b_reg_i_1_n_0),
        .D(1'b0),
        .G(enable_out_reg_i_1_n_0),
        .PRE(enable_out_b_reg_i_2_n_0),
        .Q(enable_out_b));
  LUT1 #(
    .INIT(2'h1)) 
    enable_out_b_reg_i_1
       (.I0(act_state[2]),
        .O(enable_out_b_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    enable_out_b_reg_i_2
       (.I0(act_state[2]),
        .I1(act_state[1]),
        .I2(act_state[0]),
        .O(enable_out_b_reg_i_2_n_0));
  LDCP enable_out_reg
       (.CLR(enable_out_reg_i_2_n_0),
        .D(1'b0),
        .G(enable_out_reg_i_1_n_0),
        .PRE(enable_out_reg_i_3_n_0),
        .Q(enable_out));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    enable_out_reg_i_1
       (.I0(act_state[0]),
        .I1(act_state[2]),
        .I2(act_state[1]),
        .O(enable_out_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'h13)) 
    enable_out_reg_i_2
       (.I0(act_state[0]),
        .I1(act_state[2]),
        .I2(act_state[1]),
        .O(enable_out_reg_i_2_n_0));
  LUT3 #(
    .INIT(8'h42)) 
    enable_out_reg_i_3
       (.I0(act_state[2]),
        .I1(act_state[1]),
        .I2(act_state[0]),
        .O(enable_out_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF0000FE)) 
    \temps[1]_i_1 
       (.I0(temps[3]),
        .I1(temps[2]),
        .I2(temps[4]),
        .I3(temps[1]),
        .I4(temps[0]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF0F0F00E)) 
    \temps[2]_i_1 
       (.I0(temps[4]),
        .I1(temps[3]),
        .I2(temps[2]),
        .I3(temps[0]),
        .I4(temps[1]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hCCC9)) 
    \temps[3]_i_1 
       (.I0(temps[2]),
        .I1(temps[3]),
        .I2(temps[0]),
        .I3(temps[1]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \temps[4]_i_1 
       (.I0(temps[0]),
        .I1(temps[1]),
        .I2(temps[3]),
        .I3(temps[2]),
        .I4(temps[4]),
        .O(p_1_in[4]));
  FDPE \temps_reg[0] 
       (.C(div_clk),
        .CE(1'b1),
        .D(conta[0]),
        .PRE(ambar_c_reg_i_3_n_0),
        .Q(temps[0]));
  FDCE \temps_reg[1] 
       (.C(div_clk),
        .CE(1'b1),
        .CLR(ambar_c_reg_i_3_n_0),
        .D(p_1_in[1]),
        .Q(temps[1]));
  FDCE \temps_reg[2] 
       (.C(div_clk),
        .CE(1'b1),
        .CLR(ambar_c_reg_i_3_n_0),
        .D(p_1_in[2]),
        .Q(temps[2]));
  FDPE \temps_reg[3] 
       (.C(div_clk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .PRE(ambar_c_reg_i_3_n_0),
        .Q(temps[3]));
  FDPE \temps_reg[4] 
       (.C(div_clk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .PRE(ambar_c_reg_i_3_n_0),
        .Q(temps[4]));
  LDCP verd_c_reg
       (.CLR(verd_c_reg_i_1_n_0),
        .D(1'b0),
        .G(enable_out_reg_i_1_n_0),
        .PRE(ambar_c_reg_i_3_n_0),
        .Q(verd_c));
  LUT3 #(
    .INIT(8'h1E)) 
    verd_c_reg_i_1
       (.I0(act_state[0]),
        .I1(act_state[1]),
        .I2(act_state[2]),
        .O(verd_c_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    verd_v_reg
       (.CLR(1'b0),
        .D(enable_out_reg_i_3_n_0),
        .G(ambar_c_reg_i_2_n_0),
        .GE(1'b1),
        .Q(verd_v));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    vermell_c_reg
       (.CLR(vermell_c_reg_i_3_n_0),
        .D(vermell_c_reg_i_1_n_0),
        .G(vermell_c_reg_i_2_n_0),
        .GE(1'b1),
        .Q(vermell_c));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE7)) 
    vermell_c_reg_i_1
       (.I0(act_state[0]),
        .I1(act_state[1]),
        .I2(act_state[2]),
        .O(vermell_c_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    vermell_c_reg_i_2
       (.I0(act_state[2]),
        .I1(act_state[1]),
        .O(vermell_c_reg_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    vermell_c_reg_i_3
       (.I0(act_state[1]),
        .I1(act_state[2]),
        .O(vermell_c_reg_i_3_n_0));
  LDCP vermell_v_reg
       (.CLR(vermell_v_reg_i_1_n_0),
        .D(1'b1),
        .G(enable_out_reg_i_1_n_0),
        .PRE(enable_out_reg_i_2_n_0),
        .Q(vermell_v));
  LUT3 #(
    .INIT(8'h24)) 
    vermell_v_reg_i_1
       (.I0(act_state[1]),
        .I1(act_state[2]),
        .I2(act_state[0]),
        .O(vermell_v_reg_i_1_n_0));
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
