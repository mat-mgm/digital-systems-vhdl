// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Dec 14 11:37:18 2022
// Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_clk_divider_0_0 -prefix
//               design_1_clk_divider_0_0_ design_1_clk_divider_0_1_sim_netlist.v
// Design      : design_1_clk_divider_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_clk_divider_0_0_clk_divider
   (clk_div,
    reset,
    clk);
  output clk_div;
  input reset;
  input clk;

  wire clk;
  wire clk_div;
  wire clk_div_1;
  wire clk_div_i_2_n_0;
  wire clk_div_i_3_n_0;
  wire clk_div_i_4_n_0;
  wire [13:1]data0;
  wire [13:0]div_cnt;
  wire div_cnt0_carry__0_n_0;
  wire div_cnt0_carry__0_n_1;
  wire div_cnt0_carry__0_n_2;
  wire div_cnt0_carry__0_n_3;
  wire div_cnt0_carry__1_n_0;
  wire div_cnt0_carry__1_n_1;
  wire div_cnt0_carry__1_n_2;
  wire div_cnt0_carry__1_n_3;
  wire div_cnt0_carry_n_0;
  wire div_cnt0_carry_n_1;
  wire div_cnt0_carry_n_2;
  wire div_cnt0_carry_n_3;
  wire \div_cnt[0]_i_2_n_0 ;
  wire [13:0]div_cnt_0;
  wire reset;
  wire [3:0]NLW_div_cnt0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_div_cnt0_carry__2_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    clk_div_i_1
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(div_cnt[0]),
        .O(clk_div_1));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    clk_div_i_2
       (.I0(div_cnt[1]),
        .I1(div_cnt[12]),
        .I2(div_cnt[13]),
        .I3(div_cnt[3]),
        .I4(div_cnt[2]),
        .O(clk_div_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    clk_div_i_3
       (.I0(div_cnt[4]),
        .I1(div_cnt[5]),
        .I2(div_cnt[7]),
        .I3(div_cnt[6]),
        .O(clk_div_i_3_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    clk_div_i_4
       (.I0(div_cnt[9]),
        .I1(div_cnt[8]),
        .I2(div_cnt[10]),
        .I3(div_cnt[11]),
        .O(clk_div_i_4_n_0));
  FDRE clk_div_reg
       (.C(clk),
        .CE(1'b1),
        .D(clk_div_1),
        .Q(clk_div),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 div_cnt0_carry
       (.CI(1'b0),
        .CO({div_cnt0_carry_n_0,div_cnt0_carry_n_1,div_cnt0_carry_n_2,div_cnt0_carry_n_3}),
        .CYINIT(div_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(div_cnt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 div_cnt0_carry__0
       (.CI(div_cnt0_carry_n_0),
        .CO({div_cnt0_carry__0_n_0,div_cnt0_carry__0_n_1,div_cnt0_carry__0_n_2,div_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(div_cnt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 div_cnt0_carry__1
       (.CI(div_cnt0_carry__0_n_0),
        .CO({div_cnt0_carry__1_n_0,div_cnt0_carry__1_n_1,div_cnt0_carry__1_n_2,div_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(div_cnt[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 div_cnt0_carry__2
       (.CI(div_cnt0_carry__1_n_0),
        .CO(NLW_div_cnt0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_div_cnt0_carry__2_O_UNCONNECTED[3:1],data0[13]}),
        .S({1'b0,1'b0,1'b0,div_cnt[13]}));
  LUT2 #(
    .INIT(4'h2)) 
    \div_cnt[0]_i_1 
       (.I0(\div_cnt[0]_i_2_n_0 ),
        .I1(div_cnt[0]),
        .O(div_cnt_0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \div_cnt[0]_i_2 
       (.I0(clk_div_i_4_n_0),
        .I1(div_cnt[4]),
        .I2(div_cnt[5]),
        .I3(div_cnt[7]),
        .I4(div_cnt[6]),
        .I5(clk_div_i_2_n_0),
        .O(\div_cnt[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \div_cnt[10]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(div_cnt[0]),
        .I4(data0[10]),
        .O(div_cnt_0[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \div_cnt[11]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(div_cnt[0]),
        .I4(data0[11]),
        .O(div_cnt_0[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \div_cnt[12]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(div_cnt[0]),
        .I4(data0[12]),
        .O(div_cnt_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \div_cnt[13]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(div_cnt[0]),
        .I4(data0[13]),
        .O(div_cnt_0[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \div_cnt[1]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(div_cnt[0]),
        .I4(data0[1]),
        .O(div_cnt_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \div_cnt[2]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(div_cnt[0]),
        .I4(data0[2]),
        .O(div_cnt_0[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \div_cnt[3]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(div_cnt[0]),
        .I4(data0[3]),
        .O(div_cnt_0[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \div_cnt[4]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(div_cnt[0]),
        .I4(data0[4]),
        .O(div_cnt_0[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \div_cnt[5]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(div_cnt[0]),
        .I4(data0[5]),
        .O(div_cnt_0[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \div_cnt[6]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(div_cnt[0]),
        .I4(data0[6]),
        .O(div_cnt_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \div_cnt[7]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(div_cnt[0]),
        .I4(data0[7]),
        .O(div_cnt_0[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \div_cnt[8]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(div_cnt[0]),
        .I4(data0[8]),
        .O(div_cnt_0[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \div_cnt[9]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(div_cnt[0]),
        .I4(data0[9]),
        .O(div_cnt_0[9]));
  FDRE \div_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(div_cnt_0[0]),
        .Q(div_cnt[0]),
        .R(reset));
  FDRE \div_cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(div_cnt_0[10]),
        .Q(div_cnt[10]),
        .R(reset));
  FDRE \div_cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(div_cnt_0[11]),
        .Q(div_cnt[11]),
        .R(reset));
  FDRE \div_cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(div_cnt_0[12]),
        .Q(div_cnt[12]),
        .R(reset));
  FDRE \div_cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(div_cnt_0[13]),
        .Q(div_cnt[13]),
        .R(reset));
  FDRE \div_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(div_cnt_0[1]),
        .Q(div_cnt[1]),
        .R(reset));
  FDRE \div_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(div_cnt_0[2]),
        .Q(div_cnt[2]),
        .R(reset));
  FDRE \div_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(div_cnt_0[3]),
        .Q(div_cnt[3]),
        .R(reset));
  FDRE \div_cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(div_cnt_0[4]),
        .Q(div_cnt[4]),
        .R(reset));
  FDRE \div_cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(div_cnt_0[5]),
        .Q(div_cnt[5]),
        .R(reset));
  FDRE \div_cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(div_cnt_0[6]),
        .Q(div_cnt[6]),
        .R(reset));
  FDRE \div_cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(div_cnt_0[7]),
        .Q(div_cnt[7]),
        .R(reset));
  FDRE \div_cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(div_cnt_0[8]),
        .Q(div_cnt[8]),
        .R(reset));
  FDRE \div_cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(div_cnt_0[9]),
        .Q(div_cnt[9]),
        .R(reset));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_clk_divider_0_1,clk_divider,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "clk_divider,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module design_1_clk_divider_0_0
   (clk,
    reset,
    clk_div);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;
  output clk_div;

  wire clk;
  wire clk_div;
  wire reset;

  design_1_clk_divider_0_0_clk_divider U0
       (.clk(clk),
        .clk_div(clk_div),
        .reset(reset));
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
