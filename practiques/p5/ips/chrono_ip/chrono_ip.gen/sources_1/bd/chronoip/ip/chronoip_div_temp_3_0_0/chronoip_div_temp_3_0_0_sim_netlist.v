// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Nov 30 21:14:32 2022
// Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/docs/q5/Sistemes_digitals/p5/02_ips/chrono_ip/chrono_ip.gen/sources_1/bd/chronoip/ip/chronoip_div_temp_3_0_0/chronoip_div_temp_3_0_0_sim_netlist.v
// Design      : chronoip_div_temp_3_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "chronoip_div_temp_3_0_0,div_temp_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "div_temp_3,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module chronoip_div_temp_3_0_0
   (Clck_E,
    reset,
    compt,
    thick);
  input Clck_E;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  output [3:0]compt;
  output thick;

  wire Clck_E;
  wire [3:0]compt;
  wire reset;
  wire thick;

  chronoip_div_temp_3_0_0_div_temp_3 U0
       (.Clck_E(Clck_E),
        .Q(compt),
        .reset(reset),
        .thick(thick));
endmodule

(* ORIG_REF_NAME = "div_temp_3" *) 
module chronoip_div_temp_3_0_0_div_temp_3
   (Q,
    thick,
    reset,
    Clck_E);
  output [3:0]Q;
  output thick;
  input reset;
  input Clck_E;

  wire Clck_E;
  wire [3:0]Q;
  wire \compta[0]_i_1_n_0 ;
  wire \compta[1]_i_1_n_0 ;
  wire \compta[2]_i_1_n_0 ;
  wire \compta[3]_i_1_n_0 ;
  wire reset;
  wire thick;
  wire thick_i_1_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    \compta[0]_i_1 
       (.I0(Q[0]),
        .O(\compta[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2C3C)) 
    \compta[1]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\compta[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \compta[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\compta[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6F80)) 
    \compta[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\compta[3]_i_1_n_0 ));
  FDRE \compta_reg[0] 
       (.C(Clck_E),
        .CE(1'b1),
        .D(\compta[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(reset));
  FDRE \compta_reg[1] 
       (.C(Clck_E),
        .CE(1'b1),
        .D(\compta[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(reset));
  FDRE \compta_reg[2] 
       (.C(Clck_E),
        .CE(1'b1),
        .D(\compta[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(reset));
  FDRE \compta_reg[3] 
       (.C(Clck_E),
        .CE(1'b1),
        .D(\compta[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    thick_i_1
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(thick_i_1_n_0));
  FDRE thick_reg
       (.C(Clck_E),
        .CE(1'b1),
        .D(thick_i_1_n_0),
        .Q(thick),
        .R(reset));
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
