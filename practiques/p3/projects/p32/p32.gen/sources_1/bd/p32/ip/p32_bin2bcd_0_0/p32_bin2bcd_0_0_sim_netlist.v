// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Oct 27 11:53:34 2022
// Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/docs/q5/Sistemes_digitals/p3/p32/p32.gen/sources_1/bd/p32/ip/p32_bin2bcd_0_0/p32_bin2bcd_0_0_sim_netlist.v
// Design      : p32_bin2bcd_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "p32_bin2bcd_0_0,bin2bcd,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "bin2bcd,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module p32_bin2bcd_0_0
   (bin_in,
    clk,
    reset,
    bcd0,
    bcd1,
    bcd2,
    bcd3,
    bcd4);
  input [15:0]bin_in;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN p32_clk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;
  output [3:0]bcd0;
  output [3:0]bcd1;
  output [3:0]bcd2;
  output [3:0]bcd3;
  output [3:0]bcd4;

  wire \<const0> ;
  wire [3:1]\^bcd0 ;
  wire \bcd0[2]_INST_0_i_1_n_0 ;
  wire \bcd0[2]_INST_0_i_2_n_0 ;
  wire \bcd0[3]_INST_0_i_10_n_0 ;
  wire \bcd0[3]_INST_0_i_11_n_0 ;
  wire \bcd0[3]_INST_0_i_12_n_0 ;
  wire \bcd0[3]_INST_0_i_13_n_0 ;
  wire \bcd0[3]_INST_0_i_1_n_0 ;
  wire \bcd0[3]_INST_0_i_2_n_0 ;
  wire \bcd0[3]_INST_0_i_3_n_0 ;
  wire \bcd0[3]_INST_0_i_4_n_0 ;
  wire \bcd0[3]_INST_0_i_5_n_0 ;
  wire \bcd0[3]_INST_0_i_6_n_0 ;
  wire \bcd0[3]_INST_0_i_7_n_0 ;
  wire \bcd0[3]_INST_0_i_8_n_0 ;
  wire \bcd0[3]_INST_0_i_9_n_0 ;
  wire [7:7]bcd0_out;
  wire [3:0]bcd1;
  wire \bcd1[3]_INST_0_i_10_n_0 ;
  wire \bcd1[3]_INST_0_i_11_n_0 ;
  wire \bcd1[3]_INST_0_i_12_n_0 ;
  wire \bcd1[3]_INST_0_i_13_n_0 ;
  wire \bcd1[3]_INST_0_i_14_n_0 ;
  wire \bcd1[3]_INST_0_i_15_n_0 ;
  wire \bcd1[3]_INST_0_i_16_n_0 ;
  wire \bcd1[3]_INST_0_i_17_n_0 ;
  wire \bcd1[3]_INST_0_i_18_n_0 ;
  wire \bcd1[3]_INST_0_i_19_n_0 ;
  wire \bcd1[3]_INST_0_i_1_n_0 ;
  wire \bcd1[3]_INST_0_i_20_n_0 ;
  wire \bcd1[3]_INST_0_i_21_n_0 ;
  wire \bcd1[3]_INST_0_i_22_n_0 ;
  wire \bcd1[3]_INST_0_i_23_n_0 ;
  wire \bcd1[3]_INST_0_i_24_n_0 ;
  wire \bcd1[3]_INST_0_i_25_n_0 ;
  wire \bcd1[3]_INST_0_i_26_n_0 ;
  wire \bcd1[3]_INST_0_i_27_n_0 ;
  wire \bcd1[3]_INST_0_i_28_n_0 ;
  wire \bcd1[3]_INST_0_i_2_n_0 ;
  wire \bcd1[3]_INST_0_i_3_n_0 ;
  wire \bcd1[3]_INST_0_i_4_n_0 ;
  wire \bcd1[3]_INST_0_i_5_n_0 ;
  wire \bcd1[3]_INST_0_i_6_n_0 ;
  wire \bcd1[3]_INST_0_i_7_n_0 ;
  wire \bcd1[3]_INST_0_i_8_n_0 ;
  wire \bcd1[3]_INST_0_i_9_n_0 ;
  wire [11:11]bcd1_out;
  wire [3:0]bcd2;
  wire \bcd2[3]_INST_0_i_10_n_0 ;
  wire \bcd2[3]_INST_0_i_1_n_0 ;
  wire \bcd2[3]_INST_0_i_2_n_0 ;
  wire \bcd2[3]_INST_0_i_3_n_0 ;
  wire \bcd2[3]_INST_0_i_4_n_0 ;
  wire \bcd2[3]_INST_0_i_5_n_0 ;
  wire \bcd2[3]_INST_0_i_6_n_0 ;
  wire \bcd2[3]_INST_0_i_7_n_0 ;
  wire \bcd2[3]_INST_0_i_8_n_0 ;
  wire \bcd2[3]_INST_0_i_9_n_0 ;
  wire [3:0]bcd3;
  wire \bcd3[3]_INST_0_i_11_n_0 ;
  wire \bcd3[3]_INST_0_i_1_n_0 ;
  wire \bcd3[3]_INST_0_i_2_n_0 ;
  wire \bcd3[3]_INST_0_i_3_n_0 ;
  wire \bcd3[3]_INST_0_i_5_n_0 ;
  wire \bcd3[3]_INST_0_i_6_n_0 ;
  wire \bcd3[3]_INST_0_i_7_n_0 ;
  wire \bcd3[3]_INST_0_i_8_n_0 ;
  wire \bcd3[3]_INST_0_i_9_n_0 ;
  wire [15:0]bin_in;

  assign bcd0[3:1] = \^bcd0 [3:1];
  assign bcd0[0] = bin_in[0];
  assign bcd4[3] = \<const0> ;
  assign bcd4[2] = \<const0> ;
  assign bcd4[1] = \<const0> ;
  assign bcd4[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT2 #(
    .INIT(4'h6)) 
    \bcd0[1]_INST_0 
       (.I0(\bcd0[2]_INST_0_i_1_n_0 ),
        .I1(bin_in[1]),
        .O(\^bcd0 [1]));
  LUT4 #(
    .INIT(16'h4BB4)) 
    \bcd0[2]_INST_0 
       (.I0(bin_in[1]),
        .I1(\bcd0[2]_INST_0_i_1_n_0 ),
        .I2(\bcd0[2]_INST_0_i_2_n_0 ),
        .I3(bin_in[2]),
        .O(\^bcd0 [2]));
  LUT6 #(
    .INIT(64'h5FA53AFC5B0530EC)) 
    \bcd0[2]_INST_0_i_1 
       (.I0(bin_in[2]),
        .I1(\bcd0[3]_INST_0_i_1_n_0 ),
        .I2(bin_in[3]),
        .I3(\bcd0[3]_INST_0_i_2_n_0 ),
        .I4(\bcd0[3]_INST_0_i_3_n_0 ),
        .I5(bin_in[1]),
        .O(\bcd0[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7A7ADF5EDF5E7A7A)) 
    \bcd0[2]_INST_0_i_2 
       (.I0(\bcd0[3]_INST_0_i_1_n_0 ),
        .I1(bin_in[3]),
        .I2(\bcd0[3]_INST_0_i_2_n_0 ),
        .I3(bin_in[2]),
        .I4(bin_in[4]),
        .I5(\bcd0[3]_INST_0_i_5_n_0 ),
        .O(\bcd0[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4101204807A00AD0)) 
    \bcd0[3]_INST_0 
       (.I0(bin_in[2]),
        .I1(\bcd0[3]_INST_0_i_1_n_0 ),
        .I2(bin_in[3]),
        .I3(\bcd0[3]_INST_0_i_2_n_0 ),
        .I4(\bcd0[3]_INST_0_i_3_n_0 ),
        .I5(bin_in[1]),
        .O(\^bcd0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h693C)) 
    \bcd0[3]_INST_0_i_1 
       (.I0(bin_in[4]),
        .I1(bin_in[5]),
        .I2(\bcd0[3]_INST_0_i_4_n_0 ),
        .I3(\bcd0[3]_INST_0_i_5_n_0 ),
        .O(\bcd0[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3D7CA7E6256487E2)) 
    \bcd0[3]_INST_0_i_10 
       (.I0(\bcd0[3]_INST_0_i_11_n_0 ),
        .I1(bin_in[10]),
        .I2(\bcd0[3]_INST_0_i_12_n_0 ),
        .I3(\bcd0[3]_INST_0_i_13_n_0 ),
        .I4(bin_in[9]),
        .I5(bin_in[8]),
        .O(\bcd0[3]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hC3611C86)) 
    \bcd0[3]_INST_0_i_11 
       (.I0(bin_in[14]),
        .I1(bin_in[15]),
        .I2(bin_in[13]),
        .I3(bin_in[12]),
        .I4(bin_in[11]),
        .O(\bcd0[3]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h3973CE9C31638C18)) 
    \bcd0[3]_INST_0_i_12 
       (.I0(bin_in[11]),
        .I1(bin_in[12]),
        .I2(bin_in[13]),
        .I3(bin_in[15]),
        .I4(bin_in[14]),
        .I5(bin_in[10]),
        .O(\bcd0[3]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h249A45A2)) 
    \bcd0[3]_INST_0_i_13 
       (.I0(bin_in[12]),
        .I1(bin_in[13]),
        .I2(bin_in[15]),
        .I3(bin_in[14]),
        .I4(bin_in[11]),
        .O(\bcd0[3]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h6E6EFBB9F7766E6E)) 
    \bcd0[3]_INST_0_i_2 
       (.I0(\bcd0[3]_INST_0_i_6_n_0 ),
        .I1(\bcd0[3]_INST_0_i_5_n_0 ),
        .I2(bin_in[4]),
        .I3(bin_in[3]),
        .I4(bin_in[5]),
        .I5(\bcd0[3]_INST_0_i_4_n_0 ),
        .O(\bcd0[3]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bcd0[3]_INST_0_i_3 
       (.I0(bin_in[4]),
        .I1(\bcd0[3]_INST_0_i_5_n_0 ),
        .O(\bcd0[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3D7CA7E6256487E2)) 
    \bcd0[3]_INST_0_i_4 
       (.I0(\bcd0[3]_INST_0_i_7_n_0 ),
        .I1(bin_in[7]),
        .I2(\bcd0[3]_INST_0_i_8_n_0 ),
        .I3(\bcd0[3]_INST_0_i_9_n_0 ),
        .I4(bin_in[6]),
        .I5(bin_in[5]),
        .O(\bcd0[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h556EF1DA514AA1D8)) 
    \bcd0[3]_INST_0_i_5 
       (.I0(bin_in[6]),
        .I1(\bcd1[3]_INST_0_i_13_n_0 ),
        .I2(\bcd1[3]_INST_0_i_12_n_0 ),
        .I3(\bcd1[3]_INST_0_i_14_n_0 ),
        .I4(bin_in[5]),
        .I5(bin_in[4]),
        .O(\bcd0[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9656159415949656)) 
    \bcd0[3]_INST_0_i_6 
       (.I0(bin_in[6]),
        .I1(\bcd0[3]_INST_0_i_9_n_0 ),
        .I2(\bcd0[3]_INST_0_i_8_n_0 ),
        .I3(bin_in[7]),
        .I4(bin_in[8]),
        .I5(\bcd0[3]_INST_0_i_10_n_0 ),
        .O(\bcd0[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA419941A62955686)) 
    \bcd0[3]_INST_0_i_7 
       (.I0(bin_in[8]),
        .I1(\bcd0[3]_INST_0_i_11_n_0 ),
        .I2(bin_in[10]),
        .I3(\bcd0[3]_INST_0_i_12_n_0 ),
        .I4(\bcd0[3]_INST_0_i_13_n_0 ),
        .I5(bin_in[9]),
        .O(\bcd0[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h556EF1DA514AA1D8)) 
    \bcd0[3]_INST_0_i_8 
       (.I0(bin_in[9]),
        .I1(\bcd1[3]_INST_0_i_23_n_0 ),
        .I2(\bcd1[3]_INST_0_i_24_n_0 ),
        .I3(\bcd1[3]_INST_0_i_25_n_0 ),
        .I4(bin_in[8]),
        .I5(bin_in[7]),
        .O(\bcd0[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h159496564521A85A)) 
    \bcd0[3]_INST_0_i_9 
       (.I0(bin_in[9]),
        .I1(\bcd0[3]_INST_0_i_13_n_0 ),
        .I2(\bcd0[3]_INST_0_i_12_n_0 ),
        .I3(bin_in[10]),
        .I4(\bcd0[3]_INST_0_i_11_n_0 ),
        .I5(bin_in[8]),
        .O(\bcd0[3]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h4DA13A7C4B0130EC)) 
    \bcd1[0]_INST_0 
       (.I0(bin_in[2]),
        .I1(\bcd0[3]_INST_0_i_1_n_0 ),
        .I2(bin_in[3]),
        .I3(\bcd0[3]_INST_0_i_2_n_0 ),
        .I4(\bcd0[3]_INST_0_i_3_n_0 ),
        .I5(bin_in[1]),
        .O(bcd1[0]));
  LUT6 #(
    .INIT(64'h906009090F9FF6F0)) 
    \bcd1[1]_INST_0 
       (.I0(\bcd1[3]_INST_0_i_1_n_0 ),
        .I1(\bcd1[3]_INST_0_i_2_n_0 ),
        .I2(\bcd1[3]_INST_0_i_5_n_0 ),
        .I3(\bcd1[3]_INST_0_i_4_n_0 ),
        .I4(\bcd1[3]_INST_0_i_3_n_0 ),
        .I5(\bcd1[3]_INST_0_i_6_n_0 ),
        .O(bcd1[1]));
  LUT6 #(
    .INIT(64'h00FFFF000F6009F0)) 
    \bcd1[2]_INST_0 
       (.I0(\bcd1[3]_INST_0_i_1_n_0 ),
        .I1(\bcd1[3]_INST_0_i_2_n_0 ),
        .I2(\bcd1[3]_INST_0_i_3_n_0 ),
        .I3(\bcd1[3]_INST_0_i_4_n_0 ),
        .I4(\bcd1[3]_INST_0_i_5_n_0 ),
        .I5(\bcd1[3]_INST_0_i_6_n_0 ),
        .O(bcd1[2]));
  LUT6 #(
    .INIT(64'h0906909066069066)) 
    \bcd1[3]_INST_0 
       (.I0(\bcd1[3]_INST_0_i_1_n_0 ),
        .I1(\bcd1[3]_INST_0_i_2_n_0 ),
        .I2(\bcd1[3]_INST_0_i_3_n_0 ),
        .I3(\bcd1[3]_INST_0_i_4_n_0 ),
        .I4(\bcd1[3]_INST_0_i_5_n_0 ),
        .I5(\bcd1[3]_INST_0_i_6_n_0 ),
        .O(bcd1[3]));
  LUT6 #(
    .INIT(64'h772379EC660371C8)) 
    \bcd1[3]_INST_0_i_1 
       (.I0(\bcd1[3]_INST_0_i_7_n_0 ),
        .I1(\bcd1[3]_INST_0_i_8_n_0 ),
        .I2(\bcd1[3]_INST_0_i_9_n_0 ),
        .I3(\bcd1[3]_INST_0_i_10_n_0 ),
        .I4(\bcd1[3]_INST_0_i_11_n_0 ),
        .I5(\bcd1[3]_INST_0_i_2_n_0 ),
        .O(\bcd1[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEA05263111CAD846)) 
    \bcd1[3]_INST_0_i_10 
       (.I0(\bcd1[3]_INST_0_i_21_n_0 ),
        .I1(\bcd1[3]_INST_0_i_20_n_0 ),
        .I2(\bcd1[3]_INST_0_i_19_n_0 ),
        .I3(\bcd1[3]_INST_0_i_18_n_0 ),
        .I4(\bcd1[3]_INST_0_i_17_n_0 ),
        .I5(\bcd1[3]_INST_0_i_22_n_0 ),
        .O(\bcd1[3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2299545A449A2592)) 
    \bcd1[3]_INST_0_i_11 
       (.I0(\bcd1[3]_INST_0_i_17_n_0 ),
        .I1(\bcd1[3]_INST_0_i_18_n_0 ),
        .I2(\bcd1[3]_INST_0_i_19_n_0 ),
        .I3(\bcd1[3]_INST_0_i_20_n_0 ),
        .I4(\bcd1[3]_INST_0_i_21_n_0 ),
        .I5(\bcd1[3]_INST_0_i_22_n_0 ),
        .O(\bcd1[3]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9989924644A95962)) 
    \bcd1[3]_INST_0_i_12 
       (.I0(bin_in[7]),
        .I1(bin_in[9]),
        .I2(\bcd1[3]_INST_0_i_23_n_0 ),
        .I3(\bcd1[3]_INST_0_i_24_n_0 ),
        .I4(\bcd1[3]_INST_0_i_25_n_0 ),
        .I5(bin_in[8]),
        .O(\bcd1[3]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0108A05004645042)) 
    \bcd1[3]_INST_0_i_13 
       (.I0(bin_in[9]),
        .I1(\bcd1[3]_INST_0_i_23_n_0 ),
        .I2(\bcd1[3]_INST_0_i_24_n_0 ),
        .I3(\bcd1[3]_INST_0_i_25_n_0 ),
        .I4(bin_in[8]),
        .I5(bin_in[7]),
        .O(\bcd1[3]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h191A95864A58251A)) 
    \bcd1[3]_INST_0_i_14 
       (.I0(bin_in[8]),
        .I1(\bcd1[3]_INST_0_i_25_n_0 ),
        .I2(\bcd1[3]_INST_0_i_24_n_0 ),
        .I3(\bcd1[3]_INST_0_i_23_n_0 ),
        .I4(bin_in[9]),
        .I5(bin_in[7]),
        .O(\bcd1[3]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hC2836425195893CA)) 
    \bcd1[3]_INST_0_i_15 
       (.I0(\bcd1[3]_INST_0_i_26_n_0 ),
        .I1(\bcd1[3]_INST_0_i_27_n_0 ),
        .I2(\bcd1[3]_INST_0_i_22_n_0 ),
        .I3(\bcd1[3]_INST_0_i_28_n_0 ),
        .I4(\bcd1[3]_INST_0_i_8_n_0 ),
        .I5(\bcd1[3]_INST_0_i_7_n_0 ),
        .O(\bcd1[3]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h195495664251A58A)) 
    \bcd1[3]_INST_0_i_16 
       (.I0(\bcd1[3]_INST_0_i_8_n_0 ),
        .I1(\bcd1[3]_INST_0_i_28_n_0 ),
        .I2(\bcd1[3]_INST_0_i_22_n_0 ),
        .I3(\bcd1[3]_INST_0_i_27_n_0 ),
        .I4(\bcd1[3]_INST_0_i_26_n_0 ),
        .I5(\bcd1[3]_INST_0_i_7_n_0 ),
        .O(\bcd1[3]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h593AC36643628364)) 
    \bcd1[3]_INST_0_i_17 
       (.I0(bin_in[10]),
        .I1(\bcd0[3]_INST_0_i_11_n_0 ),
        .I2(\bcd0[3]_INST_0_i_12_n_0 ),
        .I3(\bcd0[3]_INST_0_i_13_n_0 ),
        .I4(bin_in[9]),
        .I5(bin_in[8]),
        .O(\bcd1[3]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h875A0F78)) 
    \bcd1[3]_INST_0_i_18 
       (.I0(\bcd0[3]_INST_0_i_11_n_0 ),
        .I1(bin_in[10]),
        .I2(\bcd0[3]_INST_0_i_13_n_0 ),
        .I3(\bcd0[3]_INST_0_i_12_n_0 ),
        .I4(bin_in[9]),
        .O(\bcd1[3]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0E0000F000103000)) 
    \bcd1[3]_INST_0_i_19 
       (.I0(bin_in[10]),
        .I1(bin_in[11]),
        .I2(bin_in[14]),
        .I3(bin_in[15]),
        .I4(bin_in[13]),
        .I5(bin_in[12]),
        .O(\bcd1[3]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0F74AB5A0B58A14A)) 
    \bcd1[3]_INST_0_i_2 
       (.I0(\bcd1[3]_INST_0_i_12_n_0 ),
        .I1(\bcd1[3]_INST_0_i_13_n_0 ),
        .I2(bin_in[6]),
        .I3(\bcd1[3]_INST_0_i_14_n_0 ),
        .I4(bin_in[5]),
        .I5(bin_in[4]),
        .O(\bcd1[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h01C8800EFF0307F0)) 
    \bcd1[3]_INST_0_i_20 
       (.I0(bin_in[10]),
        .I1(bin_in[11]),
        .I2(bin_in[14]),
        .I3(bin_in[15]),
        .I4(bin_in[13]),
        .I5(bin_in[12]),
        .O(\bcd1[3]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hF10F0F000F0C08F0)) 
    \bcd1[3]_INST_0_i_21 
       (.I0(bin_in[10]),
        .I1(bin_in[11]),
        .I2(bin_in[14]),
        .I3(bin_in[15]),
        .I4(bin_in[13]),
        .I5(bin_in[12]),
        .O(\bcd1[3]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0F74AB5A0B58A14A)) 
    \bcd1[3]_INST_0_i_22 
       (.I0(\bcd1[3]_INST_0_i_24_n_0 ),
        .I1(\bcd1[3]_INST_0_i_23_n_0 ),
        .I2(bin_in[9]),
        .I3(\bcd1[3]_INST_0_i_25_n_0 ),
        .I4(bin_in[8]),
        .I5(bin_in[7]),
        .O(\bcd1[3]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h4120180420180482)) 
    \bcd1[3]_INST_0_i_23 
       (.I0(bin_in[12]),
        .I1(bin_in[13]),
        .I2(bin_in[15]),
        .I3(bin_in[14]),
        .I4(bin_in[11]),
        .I5(bin_in[10]),
        .O(\bcd1[3]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hA52994A54A52294A)) 
    \bcd1[3]_INST_0_i_24 
       (.I0(bin_in[10]),
        .I1(bin_in[11]),
        .I2(bin_in[12]),
        .I3(bin_in[13]),
        .I4(bin_in[15]),
        .I5(bin_in[14]),
        .O(\bcd1[3]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hC3611C8686C3381C)) 
    \bcd1[3]_INST_0_i_25 
       (.I0(bin_in[14]),
        .I1(bin_in[15]),
        .I2(bin_in[13]),
        .I3(bin_in[12]),
        .I4(bin_in[11]),
        .I5(bin_in[10]),
        .O(\bcd1[3]_INST_0_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h23895472)) 
    \bcd1[3]_INST_0_i_26 
       (.I0(\bcd1[3]_INST_0_i_21_n_0 ),
        .I1(\bcd1[3]_INST_0_i_20_n_0 ),
        .I2(\bcd1[3]_INST_0_i_19_n_0 ),
        .I3(\bcd1[3]_INST_0_i_18_n_0 ),
        .I4(\bcd1[3]_INST_0_i_17_n_0 ),
        .O(\bcd1[3]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h772379EC660371C8)) 
    \bcd1[3]_INST_0_i_27 
       (.I0(\bcd1[3]_INST_0_i_17_n_0 ),
        .I1(\bcd1[3]_INST_0_i_18_n_0 ),
        .I2(\bcd1[3]_INST_0_i_19_n_0 ),
        .I3(\bcd1[3]_INST_0_i_20_n_0 ),
        .I4(\bcd1[3]_INST_0_i_21_n_0 ),
        .I5(\bcd1[3]_INST_0_i_22_n_0 ),
        .O(\bcd1[3]_INST_0_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h5466518A)) 
    \bcd1[3]_INST_0_i_28 
       (.I0(\bcd1[3]_INST_0_i_18_n_0 ),
        .I1(\bcd1[3]_INST_0_i_19_n_0 ),
        .I2(\bcd1[3]_INST_0_i_20_n_0 ),
        .I3(\bcd1[3]_INST_0_i_21_n_0 ),
        .I4(\bcd1[3]_INST_0_i_17_n_0 ),
        .O(\bcd1[3]_INST_0_i_28_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \bcd1[3]_INST_0_i_3 
       (.I0(\bcd1[3]_INST_0_i_2_n_0 ),
        .I1(\bcd1[3]_INST_0_i_1_n_0 ),
        .I2(\bcd1[3]_INST_0_i_15_n_0 ),
        .O(\bcd1[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h66666AA995566666)) 
    \bcd1[3]_INST_0_i_4 
       (.I0(\bcd0[3]_INST_0_i_6_n_0 ),
        .I1(\bcd0[3]_INST_0_i_5_n_0 ),
        .I2(bin_in[4]),
        .I3(bin_in[3]),
        .I4(bin_in[5]),
        .I5(\bcd0[3]_INST_0_i_4_n_0 ),
        .O(\bcd1[3]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hDF5E7A7A)) 
    \bcd1[3]_INST_0_i_5 
       (.I0(\bcd1[3]_INST_0_i_16_n_0 ),
        .I1(\bcd1[3]_INST_0_i_2_n_0 ),
        .I2(\bcd1[3]_INST_0_i_1_n_0 ),
        .I3(\bcd1[3]_INST_0_i_4_n_0 ),
        .I4(\bcd1[3]_INST_0_i_15_n_0 ),
        .O(\bcd1[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5A5A955695565A5A)) 
    \bcd1[3]_INST_0_i_6 
       (.I0(\bcd0[3]_INST_0_i_1_n_0 ),
        .I1(bin_in[3]),
        .I2(\bcd0[3]_INST_0_i_2_n_0 ),
        .I3(bin_in[2]),
        .I4(bin_in[4]),
        .I5(\bcd0[3]_INST_0_i_5_n_0 ),
        .O(\bcd1[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h593AC36643628364)) 
    \bcd1[3]_INST_0_i_7 
       (.I0(bin_in[7]),
        .I1(\bcd0[3]_INST_0_i_7_n_0 ),
        .I2(\bcd0[3]_INST_0_i_8_n_0 ),
        .I3(\bcd0[3]_INST_0_i_9_n_0 ),
        .I4(bin_in[6]),
        .I5(bin_in[5]),
        .O(\bcd1[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h609F996600FF9F60)) 
    \bcd1[3]_INST_0_i_8 
       (.I0(bin_in[8]),
        .I1(\bcd0[3]_INST_0_i_10_n_0 ),
        .I2(bin_in[7]),
        .I3(\bcd0[3]_INST_0_i_9_n_0 ),
        .I4(\bcd0[3]_INST_0_i_8_n_0 ),
        .I5(bin_in[6]),
        .O(\bcd1[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4402118011203824)) 
    \bcd1[3]_INST_0_i_9 
       (.I0(\bcd1[3]_INST_0_i_17_n_0 ),
        .I1(\bcd1[3]_INST_0_i_18_n_0 ),
        .I2(\bcd1[3]_INST_0_i_19_n_0 ),
        .I3(\bcd1[3]_INST_0_i_20_n_0 ),
        .I4(\bcd1[3]_INST_0_i_21_n_0 ),
        .I5(\bcd1[3]_INST_0_i_22_n_0 ),
        .O(\bcd1[3]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h690F96960F0F96F0)) 
    \bcd2[0]_INST_0 
       (.I0(\bcd1[3]_INST_0_i_1_n_0 ),
        .I1(\bcd1[3]_INST_0_i_2_n_0 ),
        .I2(\bcd1[3]_INST_0_i_3_n_0 ),
        .I3(\bcd1[3]_INST_0_i_4_n_0 ),
        .I4(\bcd1[3]_INST_0_i_5_n_0 ),
        .I5(\bcd1[3]_INST_0_i_6_n_0 ),
        .O(bcd2[0]));
  LUT4 #(
    .INIT(16'h05F8)) 
    \bcd2[1]_INST_0 
       (.I0(\bcd2[3]_INST_0_i_4_n_0 ),
        .I1(\bcd2[3]_INST_0_i_2_n_0 ),
        .I2(\bcd2[3]_INST_0_i_1_n_0 ),
        .I3(\bcd2[3]_INST_0_i_3_n_0 ),
        .O(bcd2[1]));
  LUT4 #(
    .INIT(16'hC2C6)) 
    \bcd2[2]_INST_0 
       (.I0(\bcd2[3]_INST_0_i_1_n_0 ),
        .I1(\bcd2[3]_INST_0_i_2_n_0 ),
        .I2(\bcd2[3]_INST_0_i_3_n_0 ),
        .I3(\bcd2[3]_INST_0_i_4_n_0 ),
        .O(bcd2[2]));
  LUT4 #(
    .INIT(16'h03A8)) 
    \bcd2[3]_INST_0 
       (.I0(\bcd2[3]_INST_0_i_1_n_0 ),
        .I1(\bcd2[3]_INST_0_i_2_n_0 ),
        .I2(\bcd2[3]_INST_0_i_3_n_0 ),
        .I3(\bcd2[3]_INST_0_i_4_n_0 ),
        .O(bcd2[3]));
  LUT6 #(
    .INIT(64'h4402118011203824)) 
    \bcd2[3]_INST_0_i_1 
       (.I0(\bcd2[3]_INST_0_i_5_n_0 ),
        .I1(\bcd2[3]_INST_0_i_6_n_0 ),
        .I2(\bcd2[3]_INST_0_i_7_n_0 ),
        .I3(\bcd2[3]_INST_0_i_8_n_0 ),
        .I4(\bcd2[3]_INST_0_i_9_n_0 ),
        .I5(\bcd2[3]_INST_0_i_10_n_0 ),
        .O(\bcd2[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h772319EC660331C8)) 
    \bcd2[3]_INST_0_i_10 
       (.I0(\bcd1[3]_INST_0_i_7_n_0 ),
        .I1(\bcd1[3]_INST_0_i_8_n_0 ),
        .I2(\bcd1[3]_INST_0_i_9_n_0 ),
        .I3(\bcd1[3]_INST_0_i_10_n_0 ),
        .I4(\bcd1[3]_INST_0_i_11_n_0 ),
        .I5(\bcd1[3]_INST_0_i_2_n_0 ),
        .O(\bcd2[3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hEA05263111CAD846)) 
    \bcd2[3]_INST_0_i_2 
       (.I0(\bcd2[3]_INST_0_i_9_n_0 ),
        .I1(\bcd2[3]_INST_0_i_8_n_0 ),
        .I2(\bcd2[3]_INST_0_i_7_n_0 ),
        .I3(\bcd2[3]_INST_0_i_6_n_0 ),
        .I4(\bcd2[3]_INST_0_i_5_n_0 ),
        .I5(\bcd2[3]_INST_0_i_10_n_0 ),
        .O(\bcd2[3]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h95565A5A)) 
    \bcd2[3]_INST_0_i_3 
       (.I0(\bcd1[3]_INST_0_i_16_n_0 ),
        .I1(\bcd1[3]_INST_0_i_2_n_0 ),
        .I2(\bcd1[3]_INST_0_i_1_n_0 ),
        .I3(\bcd1[3]_INST_0_i_4_n_0 ),
        .I4(\bcd1[3]_INST_0_i_15_n_0 ),
        .O(\bcd2[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2299545A449A2592)) 
    \bcd2[3]_INST_0_i_4 
       (.I0(\bcd2[3]_INST_0_i_5_n_0 ),
        .I1(\bcd2[3]_INST_0_i_6_n_0 ),
        .I2(\bcd2[3]_INST_0_i_7_n_0 ),
        .I3(\bcd2[3]_INST_0_i_8_n_0 ),
        .I4(\bcd2[3]_INST_0_i_9_n_0 ),
        .I5(\bcd2[3]_INST_0_i_10_n_0 ),
        .O(\bcd2[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4DA13A7C4B0130EC)) 
    \bcd2[3]_INST_0_i_5 
       (.I0(\bcd1[3]_INST_0_i_8_n_0 ),
        .I1(\bcd1[3]_INST_0_i_28_n_0 ),
        .I2(\bcd1[3]_INST_0_i_22_n_0 ),
        .I3(\bcd1[3]_INST_0_i_27_n_0 ),
        .I4(\bcd1[3]_INST_0_i_26_n_0 ),
        .I5(\bcd1[3]_INST_0_i_7_n_0 ),
        .O(\bcd2[3]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h95565A5A)) 
    \bcd2[3]_INST_0_i_6 
       (.I0(\bcd1[3]_INST_0_i_28_n_0 ),
        .I1(\bcd1[3]_INST_0_i_22_n_0 ),
        .I2(\bcd1[3]_INST_0_i_27_n_0 ),
        .I3(\bcd1[3]_INST_0_i_8_n_0 ),
        .I4(\bcd1[3]_INST_0_i_26_n_0 ),
        .O(\bcd2[3]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h41201804)) 
    \bcd2[3]_INST_0_i_7 
       (.I0(\bcd3[3]_INST_0_i_8_n_0 ),
        .I1(\bcd3[3]_INST_0_i_9_n_0 ),
        .I2(bcd0_out),
        .I3(\bcd3[3]_INST_0_i_11_n_0 ),
        .I4(\bcd3[3]_INST_0_i_7_n_0 ),
        .O(\bcd2[3]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hC3611C86)) 
    \bcd2[3]_INST_0_i_8 
       (.I0(\bcd3[3]_INST_0_i_11_n_0 ),
        .I1(bcd0_out),
        .I2(\bcd3[3]_INST_0_i_9_n_0 ),
        .I3(\bcd3[3]_INST_0_i_8_n_0 ),
        .I4(\bcd3[3]_INST_0_i_7_n_0 ),
        .O(\bcd2[3]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h249A45A2)) 
    \bcd2[3]_INST_0_i_9 
       (.I0(\bcd3[3]_INST_0_i_8_n_0 ),
        .I1(\bcd3[3]_INST_0_i_9_n_0 ),
        .I2(bcd0_out),
        .I3(\bcd3[3]_INST_0_i_11_n_0 ),
        .I4(\bcd3[3]_INST_0_i_7_n_0 ),
        .O(\bcd2[3]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h56AA)) 
    \bcd3[0]_INST_0 
       (.I0(\bcd2[3]_INST_0_i_1_n_0 ),
        .I1(\bcd2[3]_INST_0_i_2_n_0 ),
        .I2(\bcd2[3]_INST_0_i_3_n_0 ),
        .I3(\bcd2[3]_INST_0_i_4_n_0 ),
        .O(bcd3[0]));
  LUT6 #(
    .INIT(64'hA2599A4545A2249A)) 
    \bcd3[1]_INST_0 
       (.I0(\bcd3[3]_INST_0_i_5_n_0 ),
        .I1(bcd1_out),
        .I2(\bcd3[3]_INST_0_i_3_n_0 ),
        .I3(\bcd3[3]_INST_0_i_2_n_0 ),
        .I4(\bcd3[3]_INST_0_i_1_n_0 ),
        .I5(\bcd3[3]_INST_0_i_6_n_0 ),
        .O(bcd3[1]));
  LUT6 #(
    .INIT(64'h9429A54AA54A2952)) 
    \bcd3[2]_INST_0 
       (.I0(\bcd3[3]_INST_0_i_1_n_0 ),
        .I1(\bcd3[3]_INST_0_i_2_n_0 ),
        .I2(\bcd3[3]_INST_0_i_3_n_0 ),
        .I3(bcd1_out),
        .I4(\bcd3[3]_INST_0_i_5_n_0 ),
        .I5(\bcd3[3]_INST_0_i_6_n_0 ),
        .O(bcd3[2]));
  LUT6 #(
    .INIT(64'h2142081008104284)) 
    \bcd3[3]_INST_0 
       (.I0(\bcd3[3]_INST_0_i_1_n_0 ),
        .I1(\bcd3[3]_INST_0_i_2_n_0 ),
        .I2(\bcd3[3]_INST_0_i_3_n_0 ),
        .I3(bcd1_out),
        .I4(\bcd3[3]_INST_0_i_5_n_0 ),
        .I5(\bcd3[3]_INST_0_i_6_n_0 ),
        .O(bcd3[3]));
  LUT5 #(
    .INIT(32'hA17C01EC)) 
    \bcd3[3]_INST_0_i_1 
       (.I0(\bcd2[3]_INST_0_i_6_n_0 ),
        .I1(\bcd2[3]_INST_0_i_7_n_0 ),
        .I2(\bcd2[3]_INST_0_i_8_n_0 ),
        .I3(\bcd2[3]_INST_0_i_9_n_0 ),
        .I4(\bcd2[3]_INST_0_i_5_n_0 ),
        .O(\bcd3[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hF000E000)) 
    \bcd3[3]_INST_0_i_10 
       (.I0(bin_in[11]),
        .I1(bin_in[12]),
        .I2(bin_in[14]),
        .I3(bin_in[15]),
        .I4(bin_in[13]),
        .O(bcd0_out));
  LUT6 #(
    .INIT(64'h0FF00F000FE03F00)) 
    \bcd3[3]_INST_0_i_11 
       (.I0(bin_in[10]),
        .I1(bin_in[11]),
        .I2(bin_in[14]),
        .I3(bin_in[15]),
        .I4(bin_in[13]),
        .I5(bin_in[12]),
        .O(\bcd3[3]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h3973CE9C31638C18)) 
    \bcd3[3]_INST_0_i_2 
       (.I0(\bcd3[3]_INST_0_i_7_n_0 ),
        .I1(\bcd3[3]_INST_0_i_8_n_0 ),
        .I2(\bcd3[3]_INST_0_i_9_n_0 ),
        .I3(bcd0_out),
        .I4(\bcd3[3]_INST_0_i_11_n_0 ),
        .I5(\bcd2[3]_INST_0_i_6_n_0 ),
        .O(\bcd3[3]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h793C6138)) 
    \bcd3[3]_INST_0_i_3 
       (.I0(\bcd3[3]_INST_0_i_8_n_0 ),
        .I1(\bcd3[3]_INST_0_i_9_n_0 ),
        .I2(bcd0_out),
        .I3(\bcd3[3]_INST_0_i_11_n_0 ),
        .I4(\bcd3[3]_INST_0_i_7_n_0 ),
        .O(\bcd3[3]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \bcd3[3]_INST_0_i_4 
       (.I0(\bcd3[3]_INST_0_i_9_n_0 ),
        .I1(\bcd3[3]_INST_0_i_11_n_0 ),
        .I2(bcd0_out),
        .O(bcd1_out));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hB424)) 
    \bcd3[3]_INST_0_i_5 
       (.I0(\bcd3[3]_INST_0_i_9_n_0 ),
        .I1(bcd0_out),
        .I2(\bcd3[3]_INST_0_i_11_n_0 ),
        .I3(\bcd3[3]_INST_0_i_8_n_0 ),
        .O(\bcd3[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h772319EC660331C8)) 
    \bcd3[3]_INST_0_i_6 
       (.I0(\bcd2[3]_INST_0_i_5_n_0 ),
        .I1(\bcd2[3]_INST_0_i_6_n_0 ),
        .I2(\bcd2[3]_INST_0_i_7_n_0 ),
        .I3(\bcd2[3]_INST_0_i_8_n_0 ),
        .I4(\bcd2[3]_INST_0_i_9_n_0 ),
        .I5(\bcd2[3]_INST_0_i_10_n_0 ),
        .O(\bcd3[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h772319EC660331C8)) 
    \bcd3[3]_INST_0_i_7 
       (.I0(\bcd1[3]_INST_0_i_17_n_0 ),
        .I1(\bcd1[3]_INST_0_i_18_n_0 ),
        .I2(\bcd1[3]_INST_0_i_19_n_0 ),
        .I3(\bcd1[3]_INST_0_i_20_n_0 ),
        .I4(\bcd1[3]_INST_0_i_21_n_0 ),
        .I5(\bcd1[3]_INST_0_i_22_n_0 ),
        .O(\bcd3[3]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hA17C01EC)) 
    \bcd3[3]_INST_0_i_8 
       (.I0(\bcd1[3]_INST_0_i_18_n_0 ),
        .I1(\bcd1[3]_INST_0_i_19_n_0 ),
        .I2(\bcd1[3]_INST_0_i_20_n_0 ),
        .I3(\bcd1[3]_INST_0_i_21_n_0 ),
        .I4(\bcd1[3]_INST_0_i_17_n_0 ),
        .O(\bcd3[3]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h56AA)) 
    \bcd3[3]_INST_0_i_9 
       (.I0(\bcd1[3]_INST_0_i_19_n_0 ),
        .I1(\bcd1[3]_INST_0_i_20_n_0 ),
        .I2(\bcd1[3]_INST_0_i_18_n_0 ),
        .I3(\bcd1[3]_INST_0_i_21_n_0 ),
        .O(\bcd3[3]_INST_0_i_9_n_0 ));
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
