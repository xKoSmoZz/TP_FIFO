// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Mon Mar 20 16:29:09 2023
// Host        : pc-u3-305-17 running 64-bit Debian GNU/Linux 11 (bullseye)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/dld2321a/VHDL/zybo-tp7/zybo-tp7.sim/sim_1/synth/timing/xsim/test_fifo_time_synth.v
// Design      : fifo
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ABUS_WIDTH = "10" *) (* DBUS_WIDTH = "36" *) 
(* NotValidForBitStream *)
module fifo
   (CLK,
    RST,
    REN,
    WEN,
    DI,
    DO,
    EMPTY,
    MID,
    FULL);
  input CLK;
  input RST;
  input REN;
  input WEN;
  input [35:0]DI;
  output [35:0]DO;
  output EMPTY;
  output MID;
  output FULL;

  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire [35:0]DI;
  wire [35:0]DI_IBUF;
  wire [35:0]DO;
  wire [35:0]DO_OBUF;
  wire EMPTY;
  wire EMPTY_OBUF;
  wire EMPTY_i_1_n_0;
  wire EMPTY_i_3_n_0;
  wire EMPTY_i_4_n_0;
  wire EMPTY_i_5_n_0;
  wire EMPTY_i_6_n_0;
  wire EMPTY_i_7_n_0;
  wire EMPTY_reg_i_2_n_1;
  wire EMPTY_reg_i_2_n_2;
  wire EMPTY_reg_i_2_n_3;
  wire FULL;
  wire FULL_OBUF;
  wire FULL_i_10_n_0;
  wire FULL_i_11_n_0;
  wire FULL_i_1_n_0;
  wire FULL_i_4_n_0;
  wire FULL_i_5_n_0;
  wire FULL_i_6_n_0;
  wire FULL_i_7_n_0;
  wire FULL_i_8_n_0;
  wire FULL_i_9_n_0;
  wire FULL_reg_i_2_n_1;
  wire FULL_reg_i_2_n_2;
  wire FULL_reg_i_2_n_3;
  wire FULL_reg_i_3_n_1;
  wire FULL_reg_i_3_n_2;
  wire FULL_reg_i_3_n_3;
  wire MID;
  wire MID06_out;
  wire MID_OBUF;
  wire MID_i_10_n_0;
  wire MID_i_11_n_0;
  wire MID_i_12_n_0;
  wire MID_i_13_n_0;
  wire MID_i_14_n_0;
  wire MID_i_15_n_0;
  wire MID_i_1_n_0;
  wire MID_i_2_n_0;
  wire MID_i_4_n_0;
  wire MID_i_6_n_0;
  wire MID_i_8_n_0;
  wire MID_i_9_n_0;
  wire MID_reg_i_5_n_1;
  wire MID_reg_i_5_n_2;
  wire MID_reg_i_5_n_3;
  wire MID_reg_i_7_n_1;
  wire MID_reg_i_7_n_2;
  wire MID_reg_i_7_n_3;
  wire REGS_reg_i_1_n_0;
  wire REGS_reg_i_2_n_0;
  wire REN;
  wire REN_IBUF;
  wire RST;
  wire RST_IBUF;
  wire \R_ADR[0]_i_1_n_0 ;
  wire \R_ADR[6]_i_2_n_0 ;
  wire \R_ADR_reg_n_0_[0] ;
  wire \R_ADR_reg_n_0_[1] ;
  wire \R_ADR_reg_n_0_[2] ;
  wire \R_ADR_reg_n_0_[3] ;
  wire \R_ADR_reg_n_0_[4] ;
  wire \R_ADR_reg_n_0_[5] ;
  wire \R_ADR_reg_n_0_[6] ;
  wire \R_ADR_reg_n_0_[7] ;
  wire \R_ADR_reg_n_0_[8] ;
  wire \R_ADR_reg_n_0_[9] ;
  wire WEN;
  wire WEN_IBUF;
  wire \W_ADR[0]_i_1_n_0 ;
  wire \W_ADR[1]_i_1_n_0 ;
  wire \W_ADR[2]_i_1_n_0 ;
  wire \W_ADR[3]_i_1_n_0 ;
  wire \W_ADR[4]_i_1_n_0 ;
  wire \W_ADR[5]_i_1_n_0 ;
  wire \W_ADR[5]_i_2_n_0 ;
  wire \W_ADR[6]_i_1_n_0 ;
  wire \W_ADR[7]_i_1_n_0 ;
  wire \W_ADR[8]_i_1_n_0 ;
  wire \W_ADR[8]_i_2_n_0 ;
  wire \W_ADR[9]_i_1_n_0 ;
  wire \W_ADR_reg_n_0_[0] ;
  wire \W_ADR_reg_n_0_[1] ;
  wire \W_ADR_reg_n_0_[2] ;
  wire \W_ADR_reg_n_0_[3] ;
  wire \W_ADR_reg_n_0_[4] ;
  wire \W_ADR_reg_n_0_[5] ;
  wire \W_ADR_reg_n_0_[6] ;
  wire \W_ADR_reg_n_0_[7] ;
  wire \W_ADR_reg_n_0_[8] ;
  wire eqOp;
  wire eqOp0_out;
  wire eqOp1_out;
  wire p_1_in;
  wire [9:0]plusOp;
  wire [3:0]NLW_EMPTY_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_FULL_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_FULL_reg_i_3_O_UNCONNECTED;
  wire [3:3]NLW_MID_reg_i_5_CO_UNCONNECTED;
  wire [3:0]NLW_MID_reg_i_5_O_UNCONNECTED;
  wire [3:3]NLW_MID_reg_i_7_CO_UNCONNECTED;
  wire [3:0]NLW_MID_reg_i_7_O_UNCONNECTED;
  wire NLW_REGS_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_REGS_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_REGS_reg_DBITERR_UNCONNECTED;
  wire NLW_REGS_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_REGS_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_REGS_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_REGS_reg_DOADO_UNCONNECTED;
  wire [3:0]NLW_REGS_reg_DOPADOP_UNCONNECTED;
  wire [7:0]NLW_REGS_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_REGS_reg_RDADDRECC_UNCONNECTED;

initial begin
 $sdf_annotate("test_fifo_time_synth.sdf",,,,"tool_control");
end
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  IBUF \DI_IBUF[0]_inst 
       (.I(DI[0]),
        .O(DI_IBUF[0]));
  IBUF \DI_IBUF[10]_inst 
       (.I(DI[10]),
        .O(DI_IBUF[10]));
  IBUF \DI_IBUF[11]_inst 
       (.I(DI[11]),
        .O(DI_IBUF[11]));
  IBUF \DI_IBUF[12]_inst 
       (.I(DI[12]),
        .O(DI_IBUF[12]));
  IBUF \DI_IBUF[13]_inst 
       (.I(DI[13]),
        .O(DI_IBUF[13]));
  IBUF \DI_IBUF[14]_inst 
       (.I(DI[14]),
        .O(DI_IBUF[14]));
  IBUF \DI_IBUF[15]_inst 
       (.I(DI[15]),
        .O(DI_IBUF[15]));
  IBUF \DI_IBUF[16]_inst 
       (.I(DI[16]),
        .O(DI_IBUF[16]));
  IBUF \DI_IBUF[17]_inst 
       (.I(DI[17]),
        .O(DI_IBUF[17]));
  IBUF \DI_IBUF[18]_inst 
       (.I(DI[18]),
        .O(DI_IBUF[18]));
  IBUF \DI_IBUF[19]_inst 
       (.I(DI[19]),
        .O(DI_IBUF[19]));
  IBUF \DI_IBUF[1]_inst 
       (.I(DI[1]),
        .O(DI_IBUF[1]));
  IBUF \DI_IBUF[20]_inst 
       (.I(DI[20]),
        .O(DI_IBUF[20]));
  IBUF \DI_IBUF[21]_inst 
       (.I(DI[21]),
        .O(DI_IBUF[21]));
  IBUF \DI_IBUF[22]_inst 
       (.I(DI[22]),
        .O(DI_IBUF[22]));
  IBUF \DI_IBUF[23]_inst 
       (.I(DI[23]),
        .O(DI_IBUF[23]));
  IBUF \DI_IBUF[24]_inst 
       (.I(DI[24]),
        .O(DI_IBUF[24]));
  IBUF \DI_IBUF[25]_inst 
       (.I(DI[25]),
        .O(DI_IBUF[25]));
  IBUF \DI_IBUF[26]_inst 
       (.I(DI[26]),
        .O(DI_IBUF[26]));
  IBUF \DI_IBUF[27]_inst 
       (.I(DI[27]),
        .O(DI_IBUF[27]));
  IBUF \DI_IBUF[28]_inst 
       (.I(DI[28]),
        .O(DI_IBUF[28]));
  IBUF \DI_IBUF[29]_inst 
       (.I(DI[29]),
        .O(DI_IBUF[29]));
  IBUF \DI_IBUF[2]_inst 
       (.I(DI[2]),
        .O(DI_IBUF[2]));
  IBUF \DI_IBUF[30]_inst 
       (.I(DI[30]),
        .O(DI_IBUF[30]));
  IBUF \DI_IBUF[31]_inst 
       (.I(DI[31]),
        .O(DI_IBUF[31]));
  IBUF \DI_IBUF[32]_inst 
       (.I(DI[32]),
        .O(DI_IBUF[32]));
  IBUF \DI_IBUF[33]_inst 
       (.I(DI[33]),
        .O(DI_IBUF[33]));
  IBUF \DI_IBUF[34]_inst 
       (.I(DI[34]),
        .O(DI_IBUF[34]));
  IBUF \DI_IBUF[35]_inst 
       (.I(DI[35]),
        .O(DI_IBUF[35]));
  IBUF \DI_IBUF[3]_inst 
       (.I(DI[3]),
        .O(DI_IBUF[3]));
  IBUF \DI_IBUF[4]_inst 
       (.I(DI[4]),
        .O(DI_IBUF[4]));
  IBUF \DI_IBUF[5]_inst 
       (.I(DI[5]),
        .O(DI_IBUF[5]));
  IBUF \DI_IBUF[6]_inst 
       (.I(DI[6]),
        .O(DI_IBUF[6]));
  IBUF \DI_IBUF[7]_inst 
       (.I(DI[7]),
        .O(DI_IBUF[7]));
  IBUF \DI_IBUF[8]_inst 
       (.I(DI[8]),
        .O(DI_IBUF[8]));
  IBUF \DI_IBUF[9]_inst 
       (.I(DI[9]),
        .O(DI_IBUF[9]));
  OBUF \DO_OBUF[0]_inst 
       (.I(DO_OBUF[0]),
        .O(DO[0]));
  OBUF \DO_OBUF[10]_inst 
       (.I(DO_OBUF[10]),
        .O(DO[10]));
  OBUF \DO_OBUF[11]_inst 
       (.I(DO_OBUF[11]),
        .O(DO[11]));
  OBUF \DO_OBUF[12]_inst 
       (.I(DO_OBUF[12]),
        .O(DO[12]));
  OBUF \DO_OBUF[13]_inst 
       (.I(DO_OBUF[13]),
        .O(DO[13]));
  OBUF \DO_OBUF[14]_inst 
       (.I(DO_OBUF[14]),
        .O(DO[14]));
  OBUF \DO_OBUF[15]_inst 
       (.I(DO_OBUF[15]),
        .O(DO[15]));
  OBUF \DO_OBUF[16]_inst 
       (.I(DO_OBUF[16]),
        .O(DO[16]));
  OBUF \DO_OBUF[17]_inst 
       (.I(DO_OBUF[17]),
        .O(DO[17]));
  OBUF \DO_OBUF[18]_inst 
       (.I(DO_OBUF[18]),
        .O(DO[18]));
  OBUF \DO_OBUF[19]_inst 
       (.I(DO_OBUF[19]),
        .O(DO[19]));
  OBUF \DO_OBUF[1]_inst 
       (.I(DO_OBUF[1]),
        .O(DO[1]));
  OBUF \DO_OBUF[20]_inst 
       (.I(DO_OBUF[20]),
        .O(DO[20]));
  OBUF \DO_OBUF[21]_inst 
       (.I(DO_OBUF[21]),
        .O(DO[21]));
  OBUF \DO_OBUF[22]_inst 
       (.I(DO_OBUF[22]),
        .O(DO[22]));
  OBUF \DO_OBUF[23]_inst 
       (.I(DO_OBUF[23]),
        .O(DO[23]));
  OBUF \DO_OBUF[24]_inst 
       (.I(DO_OBUF[24]),
        .O(DO[24]));
  OBUF \DO_OBUF[25]_inst 
       (.I(DO_OBUF[25]),
        .O(DO[25]));
  OBUF \DO_OBUF[26]_inst 
       (.I(DO_OBUF[26]),
        .O(DO[26]));
  OBUF \DO_OBUF[27]_inst 
       (.I(DO_OBUF[27]),
        .O(DO[27]));
  OBUF \DO_OBUF[28]_inst 
       (.I(DO_OBUF[28]),
        .O(DO[28]));
  OBUF \DO_OBUF[29]_inst 
       (.I(DO_OBUF[29]),
        .O(DO[29]));
  OBUF \DO_OBUF[2]_inst 
       (.I(DO_OBUF[2]),
        .O(DO[2]));
  OBUF \DO_OBUF[30]_inst 
       (.I(DO_OBUF[30]),
        .O(DO[30]));
  OBUF \DO_OBUF[31]_inst 
       (.I(DO_OBUF[31]),
        .O(DO[31]));
  OBUF \DO_OBUF[32]_inst 
       (.I(DO_OBUF[32]),
        .O(DO[32]));
  OBUF \DO_OBUF[33]_inst 
       (.I(DO_OBUF[33]),
        .O(DO[33]));
  OBUF \DO_OBUF[34]_inst 
       (.I(DO_OBUF[34]),
        .O(DO[34]));
  OBUF \DO_OBUF[35]_inst 
       (.I(DO_OBUF[35]),
        .O(DO[35]));
  OBUF \DO_OBUF[3]_inst 
       (.I(DO_OBUF[3]),
        .O(DO[3]));
  OBUF \DO_OBUF[4]_inst 
       (.I(DO_OBUF[4]),
        .O(DO[4]));
  OBUF \DO_OBUF[5]_inst 
       (.I(DO_OBUF[5]),
        .O(DO[5]));
  OBUF \DO_OBUF[6]_inst 
       (.I(DO_OBUF[6]),
        .O(DO[6]));
  OBUF \DO_OBUF[7]_inst 
       (.I(DO_OBUF[7]),
        .O(DO[7]));
  OBUF \DO_OBUF[8]_inst 
       (.I(DO_OBUF[8]),
        .O(DO[8]));
  OBUF \DO_OBUF[9]_inst 
       (.I(DO_OBUF[9]),
        .O(DO[9]));
  OBUF EMPTY_OBUF_inst
       (.I(EMPTY_OBUF),
        .O(EMPTY));
  LUT5 #(
    .INIT(32'h8C88FFFF)) 
    EMPTY_i_1
       (.I0(EMPTY_OBUF),
        .I1(WEN_IBUF),
        .I2(REN_IBUF),
        .I3(eqOp1_out),
        .I4(RST_IBUF),
        .O(EMPTY_i_1_n_0));
  LUT6 #(
    .INIT(64'h9969999999999999)) 
    EMPTY_i_3
       (.I0(p_1_in),
        .I1(\R_ADR_reg_n_0_[9] ),
        .I2(\R_ADR_reg_n_0_[7] ),
        .I3(\R_ADR[6]_i_2_n_0 ),
        .I4(\R_ADR_reg_n_0_[6] ),
        .I5(\R_ADR_reg_n_0_[8] ),
        .O(EMPTY_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009420400000020)) 
    EMPTY_i_4
       (.I0(\R_ADR_reg_n_0_[6] ),
        .I1(\R_ADR[6]_i_2_n_0 ),
        .I2(\R_ADR_reg_n_0_[7] ),
        .I3(\W_ADR_reg_n_0_[7] ),
        .I4(\W_ADR_reg_n_0_[6] ),
        .I5(MID_i_14_n_0),
        .O(EMPTY_i_4_n_0));
  LUT6 #(
    .INIT(64'h9400029400020000)) 
    EMPTY_i_5
       (.I0(\R_ADR_reg_n_0_[3] ),
        .I1(\W_ADR_reg_n_0_[3] ),
        .I2(EMPTY_i_7_n_0),
        .I3(\W_ADR_reg_n_0_[4] ),
        .I4(\R_ADR_reg_n_0_[4] ),
        .I5(MID_i_15_n_0),
        .O(EMPTY_i_5_n_0));
  LUT6 #(
    .INIT(64'h0090090006000090)) 
    EMPTY_i_6
       (.I0(\R_ADR_reg_n_0_[2] ),
        .I1(\W_ADR_reg_n_0_[2] ),
        .I2(\W_ADR_reg_n_0_[0] ),
        .I3(\R_ADR_reg_n_0_[0] ),
        .I4(\R_ADR_reg_n_0_[1] ),
        .I5(\W_ADR_reg_n_0_[1] ),
        .O(EMPTY_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    EMPTY_i_7
       (.I0(\R_ADR_reg_n_0_[1] ),
        .I1(\R_ADR_reg_n_0_[0] ),
        .I2(\R_ADR_reg_n_0_[2] ),
        .O(EMPTY_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    EMPTY_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(EMPTY_i_1_n_0),
        .Q(EMPTY_OBUF),
        .R(1'b0));
  CARRY4 EMPTY_reg_i_2
       (.CI(1'b0),
        .CO({eqOp1_out,EMPTY_reg_i_2_n_1,EMPTY_reg_i_2_n_2,EMPTY_reg_i_2_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_EMPTY_reg_i_2_O_UNCONNECTED[3:0]),
        .S({EMPTY_i_3_n_0,EMPTY_i_4_n_0,EMPTY_i_5_n_0,EMPTY_i_6_n_0}));
  OBUF FULL_OBUF_inst
       (.I(FULL_OBUF),
        .O(FULL));
  LUT6 #(
    .INIT(64'h8EAE8AAA00000000)) 
    FULL_i_1
       (.I0(FULL_OBUF),
        .I1(REN_IBUF),
        .I2(WEN_IBUF),
        .I3(eqOp),
        .I4(eqOp0_out),
        .I5(RST_IBUF),
        .O(FULL_i_1_n_0));
  LUT6 #(
    .INIT(64'h8200008200188200)) 
    FULL_i_10
       (.I0(MID_i_15_n_0),
        .I1(\R_ADR_reg_n_0_[4] ),
        .I2(\W_ADR_reg_n_0_[4] ),
        .I3(\R_ADR_reg_n_0_[3] ),
        .I4(\W_ADR_reg_n_0_[3] ),
        .I5(\W_ADR[5]_i_2_n_0 ),
        .O(FULL_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000422490090000)) 
    FULL_i_11
       (.I0(\W_ADR_reg_n_0_[1] ),
        .I1(\R_ADR_reg_n_0_[1] ),
        .I2(\W_ADR_reg_n_0_[2] ),
        .I3(\R_ADR_reg_n_0_[2] ),
        .I4(\R_ADR_reg_n_0_[0] ),
        .I5(\W_ADR_reg_n_0_[0] ),
        .O(FULL_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    FULL_i_4
       (.I0(p_1_in),
        .I1(\R_ADR_reg_n_0_[9] ),
        .O(FULL_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    FULL_i_5
       (.I0(\W_ADR_reg_n_0_[6] ),
        .I1(\R_ADR_reg_n_0_[6] ),
        .I2(\W_ADR_reg_n_0_[7] ),
        .I3(\R_ADR_reg_n_0_[7] ),
        .I4(\W_ADR_reg_n_0_[8] ),
        .I5(\R_ADR_reg_n_0_[8] ),
        .O(FULL_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    FULL_i_6
       (.I0(\W_ADR_reg_n_0_[3] ),
        .I1(\R_ADR_reg_n_0_[3] ),
        .I2(\W_ADR_reg_n_0_[4] ),
        .I3(\R_ADR_reg_n_0_[4] ),
        .I4(\W_ADR_reg_n_0_[5] ),
        .I5(\R_ADR_reg_n_0_[5] ),
        .O(FULL_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    FULL_i_7
       (.I0(\W_ADR_reg_n_0_[1] ),
        .I1(\R_ADR_reg_n_0_[1] ),
        .I2(\W_ADR_reg_n_0_[2] ),
        .I3(\R_ADR_reg_n_0_[2] ),
        .I4(\R_ADR_reg_n_0_[0] ),
        .I5(\W_ADR_reg_n_0_[0] ),
        .O(FULL_i_7_n_0));
  LUT6 #(
    .INIT(64'h9969999999999999)) 
    FULL_i_8
       (.I0(\R_ADR_reg_n_0_[9] ),
        .I1(p_1_in),
        .I2(\W_ADR_reg_n_0_[8] ),
        .I3(\W_ADR[8]_i_2_n_0 ),
        .I4(\W_ADR_reg_n_0_[6] ),
        .I5(\W_ADR_reg_n_0_[7] ),
        .O(FULL_i_8_n_0));
  LUT6 #(
    .INIT(64'h8610008600001000)) 
    FULL_i_9
       (.I0(\W_ADR[8]_i_2_n_0 ),
        .I1(\R_ADR_reg_n_0_[6] ),
        .I2(\W_ADR_reg_n_0_[6] ),
        .I3(\W_ADR_reg_n_0_[7] ),
        .I4(\R_ADR_reg_n_0_[7] ),
        .I5(MID_i_14_n_0),
        .O(FULL_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    FULL_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(FULL_i_1_n_0),
        .Q(FULL_OBUF),
        .R(1'b0));
  CARRY4 FULL_reg_i_2
       (.CI(1'b0),
        .CO({eqOp,FULL_reg_i_2_n_1,FULL_reg_i_2_n_2,FULL_reg_i_2_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_FULL_reg_i_2_O_UNCONNECTED[3:0]),
        .S({FULL_i_4_n_0,FULL_i_5_n_0,FULL_i_6_n_0,FULL_i_7_n_0}));
  CARRY4 FULL_reg_i_3
       (.CI(1'b0),
        .CO({eqOp0_out,FULL_reg_i_3_n_1,FULL_reg_i_3_n_2,FULL_reg_i_3_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_FULL_reg_i_3_O_UNCONNECTED[3:0]),
        .S({FULL_i_8_n_0,FULL_i_9_n_0,FULL_i_10_n_0,FULL_i_11_n_0}));
  OBUF MID_OBUF_inst
       (.I(MID_OBUF),
        .O(MID));
  LUT1 #(
    .INIT(2'h1)) 
    MID_i_1
       (.I0(RST_IBUF),
        .O(MID_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000422490090000)) 
    MID_i_10
       (.I0(\W_ADR_reg_n_0_[1] ),
        .I1(\R_ADR_reg_n_0_[1] ),
        .I2(\W_ADR_reg_n_0_[2] ),
        .I3(\R_ADR_reg_n_0_[2] ),
        .I4(\R_ADR_reg_n_0_[0] ),
        .I5(\W_ADR_reg_n_0_[0] ),
        .O(MID_i_10_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    MID_i_11
       (.I0(\W_ADR_reg_n_0_[6] ),
        .I1(\R_ADR_reg_n_0_[6] ),
        .I2(\W_ADR_reg_n_0_[7] ),
        .I3(\R_ADR_reg_n_0_[7] ),
        .I4(\W_ADR_reg_n_0_[8] ),
        .I5(\R_ADR_reg_n_0_[8] ),
        .O(MID_i_11_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    MID_i_12
       (.I0(\W_ADR_reg_n_0_[3] ),
        .I1(\R_ADR_reg_n_0_[3] ),
        .I2(\W_ADR_reg_n_0_[4] ),
        .I3(\R_ADR_reg_n_0_[4] ),
        .I4(\W_ADR_reg_n_0_[5] ),
        .I5(\R_ADR_reg_n_0_[5] ),
        .O(MID_i_12_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    MID_i_13
       (.I0(\W_ADR_reg_n_0_[1] ),
        .I1(\R_ADR_reg_n_0_[1] ),
        .I2(\W_ADR_reg_n_0_[2] ),
        .I3(\R_ADR_reg_n_0_[2] ),
        .I4(\R_ADR_reg_n_0_[0] ),
        .I5(\W_ADR_reg_n_0_[0] ),
        .O(MID_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h9)) 
    MID_i_14
       (.I0(\R_ADR_reg_n_0_[8] ),
        .I1(\W_ADR_reg_n_0_[8] ),
        .O(MID_i_14_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    MID_i_15
       (.I0(\R_ADR_reg_n_0_[5] ),
        .I1(\W_ADR_reg_n_0_[5] ),
        .O(MID_i_15_n_0));
  LUT6 #(
    .INIT(64'h00F0840000008400)) 
    MID_i_2
       (.I0(MID_i_4_n_0),
        .I1(MID_reg_i_5_n_1),
        .I2(MID_i_6_n_0),
        .I3(REN_IBUF),
        .I4(WEN_IBUF),
        .I5(MID_reg_i_7_n_1),
        .O(MID_i_2_n_0));
  LUT6 #(
    .INIT(64'h0008080008000008)) 
    MID_i_3
       (.I0(MID_reg_i_5_n_1),
        .I1(REN_IBUF),
        .I2(WEN_IBUF),
        .I3(\R_ADR_reg_n_0_[9] ),
        .I4(p_1_in),
        .I5(MID_i_4_n_0),
        .O(MID06_out));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    MID_i_4
       (.I0(\W_ADR_reg_n_0_[8] ),
        .I1(\W_ADR[8]_i_2_n_0 ),
        .I2(\W_ADR_reg_n_0_[6] ),
        .I3(\W_ADR_reg_n_0_[7] ),
        .O(MID_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    MID_i_6
       (.I0(\R_ADR_reg_n_0_[9] ),
        .I1(p_1_in),
        .O(MID_i_6_n_0));
  LUT6 #(
    .INIT(64'h8610008600001000)) 
    MID_i_8
       (.I0(\W_ADR[8]_i_2_n_0 ),
        .I1(\R_ADR_reg_n_0_[6] ),
        .I2(\W_ADR_reg_n_0_[6] ),
        .I3(\W_ADR_reg_n_0_[7] ),
        .I4(\R_ADR_reg_n_0_[7] ),
        .I5(MID_i_14_n_0),
        .O(MID_i_8_n_0));
  LUT6 #(
    .INIT(64'h8200008200188200)) 
    MID_i_9
       (.I0(MID_i_15_n_0),
        .I1(\R_ADR_reg_n_0_[4] ),
        .I2(\W_ADR_reg_n_0_[4] ),
        .I3(\R_ADR_reg_n_0_[3] ),
        .I4(\W_ADR_reg_n_0_[3] ),
        .I5(\W_ADR[5]_i_2_n_0 ),
        .O(MID_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    MID_reg
       (.C(CLK_IBUF_BUFG),
        .CE(MID_i_2_n_0),
        .D(MID06_out),
        .Q(MID_OBUF),
        .R(MID_i_1_n_0));
  CARRY4 MID_reg_i_5
       (.CI(1'b0),
        .CO({NLW_MID_reg_i_5_CO_UNCONNECTED[3],MID_reg_i_5_n_1,MID_reg_i_5_n_2,MID_reg_i_5_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_MID_reg_i_5_O_UNCONNECTED[3:0]),
        .S({1'b0,MID_i_8_n_0,MID_i_9_n_0,MID_i_10_n_0}));
  CARRY4 MID_reg_i_7
       (.CI(1'b0),
        .CO({NLW_MID_reg_i_7_CO_UNCONNECTED[3],MID_reg_i_7_n_1,MID_reg_i_7_n_2,MID_reg_i_7_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_MID_reg_i_7_O_UNCONNECTED[3:0]),
        .S({1'b0,MID_i_11_n_0,MID_i_12_n_0,MID_i_13_n_0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "36864" *) 
  (* RTL_RAM_NAME = "REGS_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "35" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    REGS_reg
       (.ADDRARDADDR({1'b1,p_1_in,\W_ADR_reg_n_0_[8] ,\W_ADR_reg_n_0_[7] ,\W_ADR_reg_n_0_[6] ,\W_ADR_reg_n_0_[5] ,\W_ADR_reg_n_0_[4] ,\W_ADR_reg_n_0_[3] ,\W_ADR_reg_n_0_[2] ,\W_ADR_reg_n_0_[1] ,\W_ADR_reg_n_0_[0] ,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,\R_ADR_reg_n_0_[9] ,\R_ADR_reg_n_0_[8] ,\R_ADR_reg_n_0_[7] ,\R_ADR_reg_n_0_[6] ,\R_ADR_reg_n_0_[5] ,\R_ADR_reg_n_0_[4] ,\R_ADR_reg_n_0_[3] ,\R_ADR_reg_n_0_[2] ,\R_ADR_reg_n_0_[1] ,\R_ADR_reg_n_0_[0] ,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_REGS_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_REGS_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(CLK_IBUF_BUFG),
        .CLKBWRCLK(CLK_IBUF_BUFG),
        .DBITERR(NLW_REGS_reg_DBITERR_UNCONNECTED),
        .DIADI(DI_IBUF[31:0]),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP(DI_IBUF[35:32]),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(NLW_REGS_reg_DOADO_UNCONNECTED[31:0]),
        .DOBDO(DO_OBUF[31:0]),
        .DOPADOP(NLW_REGS_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(DO_OBUF[35:32]),
        .ECCPARITY(NLW_REGS_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(REGS_reg_i_1_n_0),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_REGS_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_REGS_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_REGS_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(REGS_reg_i_2_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_REGS_reg_SBITERR_UNCONNECTED),
        .WEA({RST_IBUF,RST_IBUF,RST_IBUF,RST_IBUF}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    REGS_reg_i_1
       (.I0(WEN_IBUF),
        .O(REGS_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    REGS_reg_i_2
       (.I0(REN_IBUF),
        .I1(EMPTY_OBUF),
        .I2(RST_IBUF),
        .O(REGS_reg_i_2_n_0));
  IBUF REN_IBUF_inst
       (.I(REN),
        .O(REN_IBUF));
  IBUF RST_IBUF_inst
       (.I(RST),
        .O(RST_IBUF));
  LUT4 #(
    .INIT(16'h1F11)) 
    \R_ADR[0]_i_1 
       (.I0(EMPTY_OBUF),
        .I1(REN_IBUF),
        .I2(WEN_IBUF),
        .I3(FULL_OBUF),
        .O(\R_ADR[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \R_ADR[0]_i_2 
       (.I0(\R_ADR_reg_n_0_[0] ),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \R_ADR[1]_i_1 
       (.I0(\R_ADR_reg_n_0_[0] ),
        .I1(\R_ADR_reg_n_0_[1] ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \R_ADR[2]_i_1 
       (.I0(\R_ADR_reg_n_0_[1] ),
        .I1(\R_ADR_reg_n_0_[0] ),
        .I2(\R_ADR_reg_n_0_[2] ),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \R_ADR[3]_i_1 
       (.I0(\R_ADR_reg_n_0_[2] ),
        .I1(\R_ADR_reg_n_0_[0] ),
        .I2(\R_ADR_reg_n_0_[1] ),
        .I3(\R_ADR_reg_n_0_[3] ),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \R_ADR[4]_i_1 
       (.I0(\R_ADR_reg_n_0_[3] ),
        .I1(\R_ADR_reg_n_0_[1] ),
        .I2(\R_ADR_reg_n_0_[0] ),
        .I3(\R_ADR_reg_n_0_[2] ),
        .I4(\R_ADR_reg_n_0_[4] ),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \R_ADR[5]_i_1 
       (.I0(\R_ADR_reg_n_0_[4] ),
        .I1(\R_ADR_reg_n_0_[2] ),
        .I2(\R_ADR_reg_n_0_[0] ),
        .I3(\R_ADR_reg_n_0_[1] ),
        .I4(\R_ADR_reg_n_0_[3] ),
        .I5(\R_ADR_reg_n_0_[5] ),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \R_ADR[6]_i_1 
       (.I0(\R_ADR[6]_i_2_n_0 ),
        .I1(\R_ADR_reg_n_0_[6] ),
        .O(plusOp[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \R_ADR[6]_i_2 
       (.I0(\R_ADR_reg_n_0_[4] ),
        .I1(\R_ADR_reg_n_0_[2] ),
        .I2(\R_ADR_reg_n_0_[0] ),
        .I3(\R_ADR_reg_n_0_[1] ),
        .I4(\R_ADR_reg_n_0_[3] ),
        .I5(\R_ADR_reg_n_0_[5] ),
        .O(\R_ADR[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \R_ADR[7]_i_1 
       (.I0(\R_ADR_reg_n_0_[6] ),
        .I1(\R_ADR[6]_i_2_n_0 ),
        .I2(\R_ADR_reg_n_0_[7] ),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \R_ADR[8]_i_1 
       (.I0(\R_ADR_reg_n_0_[7] ),
        .I1(\R_ADR[6]_i_2_n_0 ),
        .I2(\R_ADR_reg_n_0_[6] ),
        .I3(\R_ADR_reg_n_0_[8] ),
        .O(plusOp[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \R_ADR[9]_i_1 
       (.I0(\R_ADR_reg_n_0_[8] ),
        .I1(\R_ADR_reg_n_0_[6] ),
        .I2(\R_ADR[6]_i_2_n_0 ),
        .I3(\R_ADR_reg_n_0_[7] ),
        .I4(\R_ADR_reg_n_0_[9] ),
        .O(plusOp[9]));
  FDRE #(
    .INIT(1'b0)) 
    \R_ADR_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\R_ADR[0]_i_1_n_0 ),
        .D(plusOp[0]),
        .Q(\R_ADR_reg_n_0_[0] ),
        .R(MID_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \R_ADR_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\R_ADR[0]_i_1_n_0 ),
        .D(plusOp[1]),
        .Q(\R_ADR_reg_n_0_[1] ),
        .R(MID_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \R_ADR_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\R_ADR[0]_i_1_n_0 ),
        .D(plusOp[2]),
        .Q(\R_ADR_reg_n_0_[2] ),
        .R(MID_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \R_ADR_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\R_ADR[0]_i_1_n_0 ),
        .D(plusOp[3]),
        .Q(\R_ADR_reg_n_0_[3] ),
        .R(MID_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \R_ADR_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\R_ADR[0]_i_1_n_0 ),
        .D(plusOp[4]),
        .Q(\R_ADR_reg_n_0_[4] ),
        .R(MID_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \R_ADR_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\R_ADR[0]_i_1_n_0 ),
        .D(plusOp[5]),
        .Q(\R_ADR_reg_n_0_[5] ),
        .R(MID_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \R_ADR_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\R_ADR[0]_i_1_n_0 ),
        .D(plusOp[6]),
        .Q(\R_ADR_reg_n_0_[6] ),
        .R(MID_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \R_ADR_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\R_ADR[0]_i_1_n_0 ),
        .D(plusOp[7]),
        .Q(\R_ADR_reg_n_0_[7] ),
        .R(MID_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \R_ADR_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\R_ADR[0]_i_1_n_0 ),
        .D(plusOp[8]),
        .Q(\R_ADR_reg_n_0_[8] ),
        .R(MID_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \R_ADR_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\R_ADR[0]_i_1_n_0 ),
        .D(plusOp[9]),
        .Q(\R_ADR_reg_n_0_[9] ),
        .R(MID_i_1_n_0));
  IBUF WEN_IBUF_inst
       (.I(WEN),
        .O(WEN_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \W_ADR[0]_i_1 
       (.I0(RST_IBUF),
        .I1(\W_ADR_reg_n_0_[0] ),
        .I2(WEN_IBUF),
        .O(\W_ADR[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hB040)) 
    \W_ADR[1]_i_1 
       (.I0(WEN_IBUF),
        .I1(\W_ADR_reg_n_0_[0] ),
        .I2(RST_IBUF),
        .I3(\W_ADR_reg_n_0_[1] ),
        .O(\W_ADR[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hDF002000)) 
    \W_ADR[2]_i_1 
       (.I0(\W_ADR_reg_n_0_[0] ),
        .I1(WEN_IBUF),
        .I2(\W_ADR_reg_n_0_[1] ),
        .I3(RST_IBUF),
        .I4(\W_ADR_reg_n_0_[2] ),
        .O(\W_ADR[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7F000000800000)) 
    \W_ADR[3]_i_1 
       (.I0(\W_ADR_reg_n_0_[2] ),
        .I1(\W_ADR_reg_n_0_[0] ),
        .I2(\W_ADR_reg_n_0_[1] ),
        .I3(WEN_IBUF),
        .I4(RST_IBUF),
        .I5(\W_ADR_reg_n_0_[3] ),
        .O(\W_ADR[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEF001000)) 
    \W_ADR[4]_i_1 
       (.I0(WEN_IBUF),
        .I1(\W_ADR[5]_i_2_n_0 ),
        .I2(\W_ADR_reg_n_0_[3] ),
        .I3(RST_IBUF),
        .I4(\W_ADR_reg_n_0_[4] ),
        .O(\W_ADR[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFDFF000002000000)) 
    \W_ADR[5]_i_1 
       (.I0(\W_ADR_reg_n_0_[3] ),
        .I1(\W_ADR[5]_i_2_n_0 ),
        .I2(WEN_IBUF),
        .I3(\W_ADR_reg_n_0_[4] ),
        .I4(RST_IBUF),
        .I5(\W_ADR_reg_n_0_[5] ),
        .O(\W_ADR[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \W_ADR[5]_i_2 
       (.I0(\W_ADR_reg_n_0_[1] ),
        .I1(\W_ADR_reg_n_0_[0] ),
        .I2(\W_ADR_reg_n_0_[2] ),
        .O(\W_ADR[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hE010)) 
    \W_ADR[6]_i_1 
       (.I0(\W_ADR[8]_i_2_n_0 ),
        .I1(WEN_IBUF),
        .I2(RST_IBUF),
        .I3(\W_ADR_reg_n_0_[6] ),
        .O(\W_ADR[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEF001000)) 
    \W_ADR[7]_i_1 
       (.I0(WEN_IBUF),
        .I1(\W_ADR[8]_i_2_n_0 ),
        .I2(\W_ADR_reg_n_0_[6] ),
        .I3(RST_IBUF),
        .I4(\W_ADR_reg_n_0_[7] ),
        .O(\W_ADR[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFDFF000002000000)) 
    \W_ADR[8]_i_1 
       (.I0(\W_ADR_reg_n_0_[6] ),
        .I1(\W_ADR[8]_i_2_n_0 ),
        .I2(WEN_IBUF),
        .I3(\W_ADR_reg_n_0_[7] ),
        .I4(RST_IBUF),
        .I5(\W_ADR_reg_n_0_[8] ),
        .O(\W_ADR[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \W_ADR[8]_i_2 
       (.I0(\W_ADR_reg_n_0_[5] ),
        .I1(\W_ADR_reg_n_0_[1] ),
        .I2(\W_ADR_reg_n_0_[0] ),
        .I3(\W_ADR_reg_n_0_[2] ),
        .I4(\W_ADR_reg_n_0_[3] ),
        .I5(\W_ADR_reg_n_0_[4] ),
        .O(\W_ADR[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hE010)) 
    \W_ADR[9]_i_1 
       (.I0(MID_i_4_n_0),
        .I1(WEN_IBUF),
        .I2(RST_IBUF),
        .I3(p_1_in),
        .O(\W_ADR[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \W_ADR_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\W_ADR[0]_i_1_n_0 ),
        .Q(\W_ADR_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \W_ADR_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\W_ADR[1]_i_1_n_0 ),
        .Q(\W_ADR_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \W_ADR_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\W_ADR[2]_i_1_n_0 ),
        .Q(\W_ADR_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \W_ADR_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\W_ADR[3]_i_1_n_0 ),
        .Q(\W_ADR_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \W_ADR_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\W_ADR[4]_i_1_n_0 ),
        .Q(\W_ADR_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \W_ADR_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\W_ADR[5]_i_1_n_0 ),
        .Q(\W_ADR_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \W_ADR_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\W_ADR[6]_i_1_n_0 ),
        .Q(\W_ADR_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \W_ADR_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\W_ADR[7]_i_1_n_0 ),
        .Q(\W_ADR_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \W_ADR_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\W_ADR[8]_i_1_n_0 ),
        .Q(\W_ADR_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \W_ADR_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\W_ADR[9]_i_1_n_0 ),
        .Q(p_1_in),
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
