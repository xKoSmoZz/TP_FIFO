-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Mon Mar 20 17:06:01 2023
-- Host        : pc-u3-305-17 running 64-bit Debian GNU/Linux 11 (bullseye)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/dld2321a/VHDL/zybo-tp7/zybo-tp7.sim/sim_1/synth/func/xsim/test_fifo_func_synth.vhd
-- Design      : fifo
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    REN : in STD_LOGIC;
    WEN : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 35 downto 0 );
    DO : out STD_LOGIC_VECTOR ( 35 downto 0 );
    EMPTY : out STD_LOGIC;
    MID : out STD_LOGIC;
    FULL : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fifo : entity is true;
  attribute ABUS_WIDTH : integer;
  attribute ABUS_WIDTH of fifo : entity is 5;
  attribute DBUS_WIDTH : integer;
  attribute DBUS_WIDTH of fifo : entity is 36;
end fifo;

architecture STRUCTURE of fifo is
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal DI_IBUF : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal DO_OBUF : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal EMPTY0 : STD_LOGIC;
  signal EMPTY_OBUF : STD_LOGIC;
  signal EMPTY_i_1_n_0 : STD_LOGIC;
  signal EMPTY_i_3_n_0 : STD_LOGIC;
  signal EMPTY_i_4_n_0 : STD_LOGIC;
  signal FULL011_out : STD_LOGIC;
  signal FULL_OBUF : STD_LOGIC;
  signal FULL_i_1_n_0 : STD_LOGIC;
  signal FULL_i_3_n_0 : STD_LOGIC;
  signal MID06_out : STD_LOGIC;
  signal MID21_out : STD_LOGIC;
  signal MID_OBUF : STD_LOGIC;
  signal MID_i_1_n_0 : STD_LOGIC;
  signal MID_i_2_n_0 : STD_LOGIC;
  signal MID_i_4_n_0 : STD_LOGIC;
  signal MID_i_5_n_0 : STD_LOGIC;
  signal MID_i_7_n_0 : STD_LOGIC;
  signal MID_i_8_n_0 : STD_LOGIC;
  signal MID_i_9_n_0 : STD_LOGIC;
  signal REGS_reg_i_1_n_0 : STD_LOGIC;
  signal REGS_reg_i_2_n_0 : STD_LOGIC;
  signal REN_IBUF : STD_LOGIC;
  signal RST_IBUF : STD_LOGIC;
  signal \R_ADR[3]_i_1_n_0\ : STD_LOGIC;
  signal \R_ADR_reg_n_0_[0]\ : STD_LOGIC;
  signal \R_ADR_reg_n_0_[1]\ : STD_LOGIC;
  signal \R_ADR_reg_n_0_[2]\ : STD_LOGIC;
  signal \R_ADR_reg_n_0_[3]\ : STD_LOGIC;
  signal \R_ADR_reg_n_0_[4]\ : STD_LOGIC;
  signal WEN_IBUF : STD_LOGIC;
  signal \W_ADR[0]_i_1_n_0\ : STD_LOGIC;
  signal \W_ADR[1]_i_1_n_0\ : STD_LOGIC;
  signal \W_ADR[2]_i_1_n_0\ : STD_LOGIC;
  signal \W_ADR[3]_i_1_n_0\ : STD_LOGIC;
  signal \W_ADR[4]_i_1_n_0\ : STD_LOGIC;
  signal \W_ADR_reg_n_0_[0]\ : STD_LOGIC;
  signal \W_ADR_reg_n_0_[1]\ : STD_LOGIC;
  signal \W_ADR_reg_n_0_[2]\ : STD_LOGIC;
  signal \W_ADR_reg_n_0_[3]\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in0_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of EMPTY_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of MID_i_9 : label is "soft_lutpair0";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of REGS_reg : label is "p4_d32";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of REGS_reg : label is "p4_d32";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of REGS_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of REGS_reg : label is 1152;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of REGS_reg : label is "REGS_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of REGS_reg : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of REGS_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of REGS_reg : label is 511;
  attribute ram_offset : integer;
  attribute ram_offset of REGS_reg : label is 480;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of REGS_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of REGS_reg : label is 35;
  attribute SOFT_HLUTNM of \R_ADR[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \R_ADR[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \R_ADR[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \R_ADR[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \W_ADR[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \W_ADR[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \W_ADR[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \W_ADR[4]_i_2\ : label is "soft_lutpair0";
begin
CLK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK_IBUF,
      O => CLK_IBUF_BUFG
    );
CLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK,
      O => CLK_IBUF
    );
\DI_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(0),
      O => DI_IBUF(0)
    );
\DI_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(10),
      O => DI_IBUF(10)
    );
\DI_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(11),
      O => DI_IBUF(11)
    );
\DI_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(12),
      O => DI_IBUF(12)
    );
\DI_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(13),
      O => DI_IBUF(13)
    );
\DI_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(14),
      O => DI_IBUF(14)
    );
\DI_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(15),
      O => DI_IBUF(15)
    );
\DI_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(16),
      O => DI_IBUF(16)
    );
\DI_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(17),
      O => DI_IBUF(17)
    );
\DI_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(18),
      O => DI_IBUF(18)
    );
\DI_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(19),
      O => DI_IBUF(19)
    );
\DI_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(1),
      O => DI_IBUF(1)
    );
\DI_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(20),
      O => DI_IBUF(20)
    );
\DI_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(21),
      O => DI_IBUF(21)
    );
\DI_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(22),
      O => DI_IBUF(22)
    );
\DI_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(23),
      O => DI_IBUF(23)
    );
\DI_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(24),
      O => DI_IBUF(24)
    );
\DI_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(25),
      O => DI_IBUF(25)
    );
\DI_IBUF[26]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(26),
      O => DI_IBUF(26)
    );
\DI_IBUF[27]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(27),
      O => DI_IBUF(27)
    );
\DI_IBUF[28]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(28),
      O => DI_IBUF(28)
    );
\DI_IBUF[29]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(29),
      O => DI_IBUF(29)
    );
\DI_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(2),
      O => DI_IBUF(2)
    );
\DI_IBUF[30]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(30),
      O => DI_IBUF(30)
    );
\DI_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(31),
      O => DI_IBUF(31)
    );
\DI_IBUF[32]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(32),
      O => DI_IBUF(32)
    );
\DI_IBUF[33]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(33),
      O => DI_IBUF(33)
    );
\DI_IBUF[34]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(34),
      O => DI_IBUF(34)
    );
\DI_IBUF[35]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(35),
      O => DI_IBUF(35)
    );
\DI_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(3),
      O => DI_IBUF(3)
    );
\DI_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(4),
      O => DI_IBUF(4)
    );
\DI_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(5),
      O => DI_IBUF(5)
    );
\DI_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(6),
      O => DI_IBUF(6)
    );
\DI_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(7),
      O => DI_IBUF(7)
    );
\DI_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(8),
      O => DI_IBUF(8)
    );
\DI_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(9),
      O => DI_IBUF(9)
    );
\DO_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(0),
      O => DO(0)
    );
\DO_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(10),
      O => DO(10)
    );
\DO_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(11),
      O => DO(11)
    );
\DO_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(12),
      O => DO(12)
    );
\DO_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(13),
      O => DO(13)
    );
\DO_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(14),
      O => DO(14)
    );
\DO_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(15),
      O => DO(15)
    );
\DO_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(16),
      O => DO(16)
    );
\DO_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(17),
      O => DO(17)
    );
\DO_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(18),
      O => DO(18)
    );
\DO_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(19),
      O => DO(19)
    );
\DO_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(1),
      O => DO(1)
    );
\DO_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(20),
      O => DO(20)
    );
\DO_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(21),
      O => DO(21)
    );
\DO_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(22),
      O => DO(22)
    );
\DO_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(23),
      O => DO(23)
    );
\DO_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(24),
      O => DO(24)
    );
\DO_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(25),
      O => DO(25)
    );
\DO_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(26),
      O => DO(26)
    );
\DO_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(27),
      O => DO(27)
    );
\DO_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(28),
      O => DO(28)
    );
\DO_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(29),
      O => DO(29)
    );
\DO_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(2),
      O => DO(2)
    );
\DO_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(30),
      O => DO(30)
    );
\DO_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(31),
      O => DO(31)
    );
\DO_OBUF[32]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(32),
      O => DO(32)
    );
\DO_OBUF[33]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(33),
      O => DO(33)
    );
\DO_OBUF[34]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(34),
      O => DO(34)
    );
\DO_OBUF[35]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(35),
      O => DO(35)
    );
\DO_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(3),
      O => DO(3)
    );
\DO_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(4),
      O => DO(4)
    );
\DO_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(5),
      O => DO(5)
    );
\DO_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(6),
      O => DO(6)
    );
\DO_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(7),
      O => DO(7)
    );
\DO_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(8),
      O => DO(8)
    );
\DO_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DO_OBUF(9),
      O => DO(9)
    );
EMPTY_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => EMPTY_OBUF,
      O => EMPTY
    );
EMPTY_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D8FF"
    )
        port map (
      I0 => EMPTY_OBUF,
      I1 => WEN_IBUF,
      I2 => EMPTY0,
      I3 => RST_IBUF,
      O => EMPTY_i_1_n_0
    );
EMPTY_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9000009000000000"
    )
        port map (
      I0 => \W_ADR_reg_n_0_[3]\,
      I1 => plusOp(3),
      I2 => EMPTY_i_3_n_0,
      I3 => \W_ADR_reg_n_0_[2]\,
      I4 => plusOp(2),
      I5 => EMPTY_i_4_n_0,
      O => EMPTY0
    );
EMPTY_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000022020020000"
    )
        port map (
      I0 => WEN_IBUF,
      I1 => REN_IBUF,
      I2 => \W_ADR_reg_n_0_[1]\,
      I3 => \R_ADR_reg_n_0_[1]\,
      I4 => \W_ADR_reg_n_0_[0]\,
      I5 => \R_ADR_reg_n_0_[0]\,
      O => EMPTY_i_3_n_0
    );
EMPTY_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => p_1_in,
      I1 => \R_ADR_reg_n_0_[4]\,
      I2 => \R_ADR_reg_n_0_[3]\,
      I3 => \R_ADR_reg_n_0_[1]\,
      I4 => \R_ADR_reg_n_0_[0]\,
      I5 => \R_ADR_reg_n_0_[2]\,
      O => EMPTY_i_4_n_0
    );
EMPTY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => EMPTY_i_1_n_0,
      Q => EMPTY_OBUF,
      R => '0'
    );
FULL_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => FULL_OBUF,
      O => FULL
    );
FULL_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CEEE0000"
    )
        port map (
      I0 => FULL_OBUF,
      I1 => FULL011_out,
      I2 => FULL_i_3_n_0,
      I3 => MID_i_4_n_0,
      I4 => RST_IBUF,
      O => FULL_i_1_n_0
    );
FULL_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000009000000"
    )
        port map (
      I0 => \R_ADR_reg_n_0_[3]\,
      I1 => MID_i_9_n_0,
      I2 => WEN_IBUF,
      I3 => REN_IBUF,
      I4 => MID_i_8_n_0,
      I5 => MID21_out,
      O => FULL011_out
    );
FULL_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900900000000"
    )
        port map (
      I0 => \R_ADR_reg_n_0_[4]\,
      I1 => p_1_in,
      I2 => \R_ADR_reg_n_0_[3]\,
      I3 => \W_ADR_reg_n_0_[3]\,
      I4 => REN_IBUF,
      I5 => WEN_IBUF,
      O => FULL_i_3_n_0
    );
FULL_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => FULL_i_1_n_0,
      Q => FULL_OBUF,
      R => '0'
    );
MID_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => MID_OBUF,
      O => MID
    );
MID_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RST_IBUF,
      O => MID_i_1_n_0
    );
MID_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => MID_i_4_n_0,
      I1 => MID_i_5_n_0,
      I2 => MID21_out,
      I3 => MID_i_7_n_0,
      O => MID_i_2_n_0
    );
MID_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => MID_i_7_n_0,
      I1 => MID21_out,
      O => MID06_out
    );
MID_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \R_ADR_reg_n_0_[1]\,
      I1 => \W_ADR_reg_n_0_[1]\,
      I2 => \R_ADR_reg_n_0_[2]\,
      I3 => \W_ADR_reg_n_0_[2]\,
      I4 => \W_ADR_reg_n_0_[0]\,
      I5 => \R_ADR_reg_n_0_[0]\,
      O => MID_i_4_n_0
    );
MID_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000600600000000"
    )
        port map (
      I0 => \R_ADR_reg_n_0_[4]\,
      I1 => p_1_in,
      I2 => \R_ADR_reg_n_0_[3]\,
      I3 => \W_ADR_reg_n_0_[3]\,
      I4 => REN_IBUF,
      I5 => WEN_IBUF,
      O => MID_i_5_n_0
    );
MID_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666666666666666"
    )
        port map (
      I0 => \R_ADR_reg_n_0_[4]\,
      I1 => p_1_in,
      I2 => \W_ADR_reg_n_0_[3]\,
      I3 => \W_ADR_reg_n_0_[1]\,
      I4 => \W_ADR_reg_n_0_[0]\,
      I5 => \W_ADR_reg_n_0_[2]\,
      O => MID21_out
    );
MID_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000008"
    )
        port map (
      I0 => MID_i_8_n_0,
      I1 => REN_IBUF,
      I2 => WEN_IBUF,
      I3 => MID_i_9_n_0,
      I4 => \R_ADR_reg_n_0_[3]\,
      O => MID_i_7_n_0
    );
MID_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0824100010000824"
    )
        port map (
      I0 => \R_ADR_reg_n_0_[1]\,
      I1 => \R_ADR_reg_n_0_[0]\,
      I2 => \W_ADR_reg_n_0_[0]\,
      I3 => \W_ADR_reg_n_0_[1]\,
      I4 => \W_ADR_reg_n_0_[2]\,
      I5 => \R_ADR_reg_n_0_[2]\,
      O => MID_i_8_n_0
    );
MID_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \W_ADR_reg_n_0_[1]\,
      I1 => \W_ADR_reg_n_0_[0]\,
      I2 => \W_ADR_reg_n_0_[2]\,
      I3 => \W_ADR_reg_n_0_[3]\,
      O => MID_i_9_n_0
    );
MID_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => MID_i_2_n_0,
      D => MID06_out,
      Q => MID_OBUF,
      R => MID_i_1_n_0
    );
REGS_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13 downto 10) => B"1111",
      ADDRARDADDR(9) => \R_ADR_reg_n_0_[4]\,
      ADDRARDADDR(8) => \R_ADR_reg_n_0_[3]\,
      ADDRARDADDR(7) => \R_ADR_reg_n_0_[2]\,
      ADDRARDADDR(6) => \R_ADR_reg_n_0_[1]\,
      ADDRARDADDR(5) => \R_ADR_reg_n_0_[0]\,
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(13 downto 10) => B"1111",
      ADDRBWRADDR(9) => p_1_in,
      ADDRBWRADDR(8) => \W_ADR_reg_n_0_[3]\,
      ADDRBWRADDR(7) => \W_ADR_reg_n_0_[2]\,
      ADDRBWRADDR(6) => \W_ADR_reg_n_0_[1]\,
      ADDRBWRADDR(5) => \W_ADR_reg_n_0_[0]\,
      ADDRBWRADDR(4 downto 0) => B"11111",
      CLKARDCLK => CLK_IBUF_BUFG,
      CLKBWRCLK => CLK_IBUF_BUFG,
      DIADI(15 downto 0) => DI_IBUF(15 downto 0),
      DIBDI(15 downto 0) => DI_IBUF(31 downto 16),
      DIPADIP(1 downto 0) => DI_IBUF(33 downto 32),
      DIPBDIP(1 downto 0) => DI_IBUF(35 downto 34),
      DOADO(15 downto 0) => DO_OBUF(15 downto 0),
      DOBDO(15 downto 0) => DO_OBUF(31 downto 16),
      DOPADOP(1 downto 0) => DO_OBUF(33 downto 32),
      DOPBDOP(1 downto 0) => DO_OBUF(35 downto 34),
      ENARDEN => '1',
      ENBWREN => REGS_reg_i_1_n_0,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => REGS_reg_i_2_n_0,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => RST_IBUF,
      WEBWE(2) => RST_IBUF,
      WEBWE(1) => RST_IBUF,
      WEBWE(0) => RST_IBUF
    );
REGS_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => WEN_IBUF,
      O => REGS_reg_i_1_n_0
    );
REGS_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => RST_IBUF,
      I1 => REN_IBUF,
      I2 => EMPTY_OBUF,
      O => REGS_reg_i_2_n_0
    );
REN_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => REN,
      O => REN_IBUF
    );
RST_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RST,
      O => RST_IBUF
    );
\R_ADR[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \R_ADR_reg_n_0_[0]\,
      O => plusOp(0)
    );
\R_ADR[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \R_ADR_reg_n_0_[0]\,
      I1 => \R_ADR_reg_n_0_[1]\,
      O => plusOp(1)
    );
\R_ADR[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \R_ADR_reg_n_0_[0]\,
      I1 => \R_ADR_reg_n_0_[1]\,
      I2 => \R_ADR_reg_n_0_[2]\,
      O => plusOp(2)
    );
\R_ADR[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"444F"
    )
        port map (
      I0 => WEN_IBUF,
      I1 => FULL_OBUF,
      I2 => REN_IBUF,
      I3 => EMPTY_OBUF,
      O => \R_ADR[3]_i_1_n_0\
    );
\R_ADR[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \R_ADR_reg_n_0_[1]\,
      I1 => \R_ADR_reg_n_0_[0]\,
      I2 => \R_ADR_reg_n_0_[2]\,
      I3 => \R_ADR_reg_n_0_[3]\,
      O => plusOp(3)
    );
\R_ADR[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \R_ADR_reg_n_0_[2]\,
      I1 => \R_ADR_reg_n_0_[0]\,
      I2 => \R_ADR_reg_n_0_[1]\,
      I3 => \R_ADR_reg_n_0_[3]\,
      I4 => \R_ADR_reg_n_0_[4]\,
      O => plusOp(4)
    );
\R_ADR_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \R_ADR[3]_i_1_n_0\,
      D => plusOp(0),
      Q => \R_ADR_reg_n_0_[0]\,
      R => MID_i_1_n_0
    );
\R_ADR_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \R_ADR[3]_i_1_n_0\,
      D => plusOp(1),
      Q => \R_ADR_reg_n_0_[1]\,
      R => MID_i_1_n_0
    );
\R_ADR_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \R_ADR[3]_i_1_n_0\,
      D => plusOp(2),
      Q => \R_ADR_reg_n_0_[2]\,
      R => MID_i_1_n_0
    );
\R_ADR_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \R_ADR[3]_i_1_n_0\,
      D => plusOp(3),
      Q => \R_ADR_reg_n_0_[3]\,
      R => MID_i_1_n_0
    );
\R_ADR_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \R_ADR[3]_i_1_n_0\,
      D => plusOp(4),
      Q => \R_ADR_reg_n_0_[4]\,
      R => MID_i_1_n_0
    );
WEN_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => WEN,
      O => WEN_IBUF
    );
\W_ADR[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => \W_ADR_reg_n_0_[0]\,
      I1 => RST_IBUF,
      I2 => WEN_IBUF,
      O => \W_ADR[0]_i_1_n_0\
    );
\W_ADR[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C060"
    )
        port map (
      I0 => \W_ADR_reg_n_0_[0]\,
      I1 => \W_ADR_reg_n_0_[1]\,
      I2 => RST_IBUF,
      I3 => WEN_IBUF,
      O => \W_ADR[1]_i_1_n_0\
    );
\W_ADR[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0007800"
    )
        port map (
      I0 => \W_ADR_reg_n_0_[0]\,
      I1 => \W_ADR_reg_n_0_[1]\,
      I2 => \W_ADR_reg_n_0_[2]\,
      I3 => RST_IBUF,
      I4 => WEN_IBUF,
      O => \W_ADR[2]_i_1_n_0\
    );
\W_ADR[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0000007F800000"
    )
        port map (
      I0 => \W_ADR_reg_n_0_[1]\,
      I1 => \W_ADR_reg_n_0_[0]\,
      I2 => \W_ADR_reg_n_0_[2]\,
      I3 => \W_ADR_reg_n_0_[3]\,
      I4 => RST_IBUF,
      I5 => WEN_IBUF,
      O => \W_ADR[3]_i_1_n_0\
    );
\W_ADR[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => p_1_in,
      I1 => p_1_in0_in,
      I2 => RST_IBUF,
      I3 => WEN_IBUF,
      O => \W_ADR[4]_i_1_n_0\
    );
\W_ADR[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \W_ADR_reg_n_0_[2]\,
      I1 => \W_ADR_reg_n_0_[0]\,
      I2 => \W_ADR_reg_n_0_[1]\,
      I3 => \W_ADR_reg_n_0_[3]\,
      I4 => p_1_in,
      O => p_1_in0_in
    );
\W_ADR_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \W_ADR[0]_i_1_n_0\,
      Q => \W_ADR_reg_n_0_[0]\,
      R => '0'
    );
\W_ADR_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \W_ADR[1]_i_1_n_0\,
      Q => \W_ADR_reg_n_0_[1]\,
      R => '0'
    );
\W_ADR_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \W_ADR[2]_i_1_n_0\,
      Q => \W_ADR_reg_n_0_[2]\,
      R => '0'
    );
\W_ADR_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \W_ADR[3]_i_1_n_0\,
      Q => \W_ADR_reg_n_0_[3]\,
      R => '0'
    );
\W_ADR_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \W_ADR[4]_i_1_n_0\,
      Q => p_1_in,
      R => '0'
    );
end STRUCTURE;
