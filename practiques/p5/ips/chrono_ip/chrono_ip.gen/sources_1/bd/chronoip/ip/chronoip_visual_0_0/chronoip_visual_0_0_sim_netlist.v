// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Nov 30 23:46:06 2022
// Host        : DESKTOP-D4CQGM3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/docs/q5/Sistemes_digitals/p5/02_ips/chrono_ip/chrono_ip.gen/sources_1/bd/chronoip/ip/chronoip_visual_0_0/chronoip_visual_0_0_sim_netlist.v
// Design      : chronoip_visual_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "chronoip_visual_0_0,visual,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "visual,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module chronoip_visual_0_0
   (btnr,
    reset,
    clk,
    mssc,
    st,
    lap,
    centiseg,
    deciseg,
    seg,
    decaseg,
    min,
    decamin,
    disp0,
    disp1,
    disp2,
    disp3,
    crono_enable);
  input btnr;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
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

  wire \<const0> ;
  wire [3:0]centiseg;
  wire [3:0]decamin;
  wire [3:0]decaseg;
  wire [3:0]deciseg;
  wire [3:0]disp0;
  wire [3:0]disp1;
  wire [3:0]disp2;
  wire [3:0]disp3;
  wire [3:0]min;
  wire mssc;
  wire [3:0]seg;

  assign crono_enable = \<const0> ;
  GND GND
       (.G(\<const0> ));
  chronoip_visual_0_0_visual U0
       (.centiseg(centiseg),
        .decamin(decamin),
        .decaseg(decaseg),
        .deciseg(deciseg),
        .disp0(disp0),
        .disp1(disp1),
        .disp2(disp2),
        .disp3(disp3),
        .min(min),
        .mssc(mssc),
        .seg(seg));
endmodule

(* ORIG_REF_NAME = "visual" *) 
module chronoip_visual_0_0_visual
   (disp0,
    disp1,
    disp2,
    disp3,
    mssc,
    centiseg,
    seg,
    deciseg,
    decaseg,
    min,
    decamin);
  output [3:0]disp0;
  output [3:0]disp1;
  output [3:0]disp2;
  output [3:0]disp3;
  input mssc;
  input [3:0]centiseg;
  input [3:0]seg;
  input [3:0]deciseg;
  input [3:0]decaseg;
  input [3:0]min;
  input [3:0]decamin;

  wire [3:0]centiseg;
  wire [3:0]decamin;
  wire [3:0]decaseg;
  wire [3:0]deciseg;
  wire [3:0]disp0;
  wire [3:0]disp1;
  wire [3:0]disp2;
  wire [3:0]disp3;
  wire [3:0]min;
  wire mssc;
  wire pressed;
  wire pressed_reg_i_1_n_0;
  wire [3:0]seg;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hED48)) 
    \disp0[0]_INST_0 
       (.I0(mssc),
        .I1(centiseg[0]),
        .I2(pressed),
        .I3(seg[0]),
        .O(disp0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hED48)) 
    \disp0[1]_INST_0 
       (.I0(mssc),
        .I1(centiseg[1]),
        .I2(pressed),
        .I3(seg[1]),
        .O(disp0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hED48)) 
    \disp0[2]_INST_0 
       (.I0(mssc),
        .I1(centiseg[2]),
        .I2(pressed),
        .I3(seg[2]),
        .O(disp0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hED48)) 
    \disp0[3]_INST_0 
       (.I0(mssc),
        .I1(centiseg[3]),
        .I2(pressed),
        .I3(seg[3]),
        .O(disp0[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hED48)) 
    \disp1[0]_INST_0 
       (.I0(mssc),
        .I1(deciseg[0]),
        .I2(pressed),
        .I3(decaseg[0]),
        .O(disp1[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hED48)) 
    \disp1[1]_INST_0 
       (.I0(mssc),
        .I1(deciseg[1]),
        .I2(pressed),
        .I3(decaseg[1]),
        .O(disp1[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hED48)) 
    \disp1[2]_INST_0 
       (.I0(mssc),
        .I1(deciseg[2]),
        .I2(pressed),
        .I3(decaseg[2]),
        .O(disp1[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hED48)) 
    \disp1[3]_INST_0 
       (.I0(mssc),
        .I1(deciseg[3]),
        .I2(pressed),
        .I3(decaseg[3]),
        .O(disp1[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hED48)) 
    \disp2[0]_INST_0 
       (.I0(mssc),
        .I1(seg[0]),
        .I2(pressed),
        .I3(min[0]),
        .O(disp2[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hED48)) 
    \disp2[1]_INST_0 
       (.I0(mssc),
        .I1(seg[1]),
        .I2(pressed),
        .I3(min[1]),
        .O(disp2[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hED48)) 
    \disp2[2]_INST_0 
       (.I0(mssc),
        .I1(seg[2]),
        .I2(pressed),
        .I3(min[2]),
        .O(disp2[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hED48)) 
    \disp2[3]_INST_0 
       (.I0(mssc),
        .I1(seg[3]),
        .I2(pressed),
        .I3(min[3]),
        .O(disp2[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hED48)) 
    \disp3[0]_INST_0 
       (.I0(mssc),
        .I1(decaseg[0]),
        .I2(pressed),
        .I3(decamin[0]),
        .O(disp3[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hED48)) 
    \disp3[1]_INST_0 
       (.I0(mssc),
        .I1(decaseg[1]),
        .I2(pressed),
        .I3(decamin[1]),
        .O(disp3[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hED48)) 
    \disp3[2]_INST_0 
       (.I0(mssc),
        .I1(decaseg[2]),
        .I2(pressed),
        .I3(decamin[2]),
        .O(disp3[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hED48)) 
    \disp3[3]_INST_0 
       (.I0(mssc),
        .I1(decaseg[3]),
        .I2(pressed),
        .I3(decamin[3]),
        .O(disp3[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    pressed_reg
       (.CLR(1'b0),
        .D(pressed_reg_i_1_n_0),
        .G(mssc),
        .GE(1'b1),
        .Q(pressed));
  LUT1 #(
    .INIT(2'h1)) 
    pressed_reg_i_1
       (.I0(pressed),
        .O(pressed_reg_i_1_n_0));
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
