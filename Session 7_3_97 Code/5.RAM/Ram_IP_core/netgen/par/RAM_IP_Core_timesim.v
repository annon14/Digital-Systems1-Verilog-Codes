////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: RAM_IP_Core_timesim.v
// /___/   /\     Timestamp: Sun Jun 04 17:35:42 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -filter D:/Homeworks/FPGA_codes/Ram_IP_core/iseconfig/filter.filter -intstyle ise -s 5 -pcf RAM_IP_Core.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim RAM_IP_Core.ncd RAM_IP_Core_timesim.v 
// Device	: 3s200pq208-5 (PRODUCTION 1.39 2013-10-13)
// Input file	: RAM_IP_Core.ncd
// Output file	: D:\Homeworks\FPGA_codes\Ram_IP_core\netgen\par\RAM_IP_Core_timesim.v
// # of Modules	: 1
// Design Name	: RAM_IP_Core
// Xilinx        : D:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module RAM_IP_Core (
  clk, reset, wen, dout, addr, din
);
  input clk;
  input reset;
  input wen;
  output [7 : 0] dout;
  input [3 : 0] addr;
  input [7 : 0] din;
  wire addr_2_IBUF_185;
  wire din_2_IBUF_186;
  wire addr_3_IBUF_187;
  wire din_3_IBUF_188;
  wire din_4_IBUF_189;
  wire din_5_IBUF_190;
  wire din_6_IBUF_191;
  wire din_7_IBUF_192;
  wire dout_0_OBUF_194;
  wire dout_1_OBUF_195;
  wire dout_2_OBUF_196;
  wire dout_3_OBUF_197;
  wire dout_4_OBUF_198;
  wire dout_5_OBUF_199;
  wire dout_6_OBUF_200;
  wire dout_7_OBUF_201;
  wire reset_IBUF_202;
  wire wen_IBUF_203;
  wire addr_0_IBUF_204;
  wire din_0_IBUF_205;
  wire addr_1_IBUF_206;
  wire din_1_IBUF_207;
  wire clk_BUFGP;
  wire \addr<2>/INBUF ;
  wire \addr<3>/INBUF ;
  wire \din<2>/INBUF ;
  wire \clk_BUFGP/BUFG/S_INVNOT ;
  wire \clk_BUFGP/BUFG/I0_INV ;
  wire \wen/INBUF ;
  wire \dout<7>/O ;
  wire \addr<1>/INBUF ;
  wire \din<0>/INBUF ;
  wire \dout<6>/O ;
  wire \addr<0>/INBUF ;
  wire \reset/INBUF ;
  wire \din<1>/INBUF ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOPB3 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOPB2 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOPB1 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOPB0 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB31 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB30 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB29 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB28 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB27 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB26 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB25 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB23 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB22 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB21 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB20 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB19 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB18 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB17 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB15 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB14 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB13 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB12 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB11 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB10 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB9 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB7 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB6 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB5 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB4 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB3 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB2 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB1 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOPA3 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOPA2 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOPA1 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOPA0 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA31 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA30 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA29 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA28 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA27 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA26 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA25 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA23 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA22 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA21 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA20 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA19 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA18 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA17 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA15 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA14 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA13 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA12 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA11 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA10 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA9 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA7 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA6 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA5 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA4 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA3 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA2 ;
  wire \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA1 ;
  wire \dout<2>/O ;
  wire \din<5>/INBUF ;
  wire \dout<3>/O ;
  wire \din<7>/INBUF ;
  wire \dout<4>/O ;
  wire \din<3>/INBUF ;
  wire \din<4>/INBUF ;
  wire \clk/INBUF ;
  wire \dout<5>/O ;
  wire \din<6>/INBUF ;
  wire \dout<1>/O ;
  wire \dout<0>/O ;
  wire \NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/CLKA ;
  wire \NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/CLKB ;
  wire \NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRA<4> ;
  wire \NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRA<3> ;
  wire \NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRA<2> ;
  wire \NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRA<1> ;
  wire \NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRB<4> ;
  wire \NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRB<3> ;
  wire \NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRB<2> ;
  wire \NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRB<1> ;
  wire \NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIA<0> ;
  wire \NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIA<8> ;
  wire \NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIA<16> ;
  wire \NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIA<24> ;
  wire \NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIB<0> ;
  wire \NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIB<8> ;
  wire \NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIB<16> ;
  wire \NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIB<24> ;
  wire GND;
  initial $sdf_annotate("netgen/par/ram_ip_core_timesim.sdf");
  X_IPAD #(
    .LOC ( "PAD20" ))
  \addr<2>/PAD  (
    .PAD(addr[2])
  );
  X_BUF #(
    .LOC ( "PAD20" ))
  addr_2_IBUF (
    .I(addr[2]),
    .O(\addr<2>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD30" ))
  \addr<3>/PAD  (
    .PAD(addr[3])
  );
  X_BUF #(
    .LOC ( "PAD30" ))
  addr_3_IBUF (
    .I(addr[3]),
    .O(\addr<3>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD57" ))
  \din<2>/PAD  (
    .PAD(din[2])
  );
  X_BUF #(
    .LOC ( "PAD57" ))
  din_2_IBUF (
    .I(din[2]),
    .O(\din<2>/INBUF )
  );
  X_BUFGMUX #(
    .LOC ( "BUFGMUX0" ))
  \clk_BUFGP/BUFG  (
    .I0(\clk_BUFGP/BUFG/I0_INV ),
    .I1(GND),
    .S(\clk_BUFGP/BUFG/S_INVNOT ),
    .O(clk_BUFGP)
  );
  X_INV #(
    .LOC ( "BUFGMUX0" ))
  \clk_BUFGP/BUFG/SINV  (
    .I(1'b1),
    .O(\clk_BUFGP/BUFG/S_INVNOT )
  );
  X_BUF #(
    .LOC ( "BUFGMUX0" ))
  \clk_BUFGP/BUFG/I0_USED  (
    .I(\clk/INBUF ),
    .O(\clk_BUFGP/BUFG/I0_INV )
  );
  X_IPAD #(
    .LOC ( "PAD23" ))
  \wen/PAD  (
    .PAD(wen)
  );
  X_BUF #(
    .LOC ( "PAD23" ))
  wen_IBUF (
    .I(wen),
    .O(\wen/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD37" ))
  \dout<7>/PAD  (
    .PAD(dout[7])
  );
  X_OBUF #(
    .LOC ( "PAD37" ))
  dout_7_OBUF (
    .I(\dout<7>/O ),
    .O(dout[7])
  );
  X_IPAD #(
    .LOC ( "PAD60" ))
  \addr<1>/PAD  (
    .PAD(addr[1])
  );
  X_BUF #(
    .LOC ( "PAD60" ))
  addr_1_IBUF (
    .I(addr[1]),
    .O(\addr<1>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD58" ))
  \din<0>/PAD  (
    .PAD(din[0])
  );
  X_BUF #(
    .LOC ( "PAD58" ))
  din_0_IBUF (
    .I(din[0]),
    .O(\din<0>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD59" ))
  \dout<6>/PAD  (
    .PAD(dout[6])
  );
  X_OBUF #(
    .LOC ( "PAD59" ))
  dout_6_OBUF (
    .I(\dout<6>/O ),
    .O(dout[6])
  );
  X_IPAD #(
    .LOC ( "PAD38" ))
  \addr<0>/PAD  (
    .PAD(addr[0])
  );
  X_BUF #(
    .LOC ( "PAD38" ))
  addr_0_IBUF (
    .I(addr[0]),
    .O(\addr<0>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD50" ))
  \reset/PAD  (
    .PAD(reset)
  );
  X_BUF #(
    .LOC ( "PAD50" ))
  reset_IBUF (
    .I(reset),
    .O(\reset/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD51" ))
  \din<1>/PAD  (
    .PAD(din[1])
  );
  X_BUF #(
    .LOC ( "PAD51" ))
  din_1_IBUF (
    .I(din[1]),
    .O(\din<1>/INBUF )
  );
  X_RAMB16_S36_S36 #(
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .LOC ( "RAMB16_X1Y5" ),
    .SETUP_ALL ( 421 ),
    .SETUP_READ_FIRST ( 421 ))
  \RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram  (
    .CLKA(\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/CLKA ),
    .CLKB(\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/CLKB ),
    .ENA(1'b1),
    .ENB(1'b1),
    .SSRA(reset_IBUF_202),
    .SSRB(reset_IBUF_202),
    .WEA(wen_IBUF_203),
    .WEB(wen_IBUF_203),
    .ADDRA({1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRA<4> , 
\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRA<3> , 
\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRA<2> , 
\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRA<1> , 1'b0}),
    .ADDRB({1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRB<4> , 
\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRB<3> , 
\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRB<2> , 
\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRB<1> , 1'b1}),
    .DIA({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIA<24> , 1'b0, 
1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIA<16> , 1'b0, 
1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIA<8> , 1'b0, 1'b0
, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIA<0> }),
    .DIPA({1'b0, 1'b0, 1'b0, 1'b0}),
    .DIB({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIB<24> , 1'b0, 
1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIB<16> , 1'b0, 
1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIB<8> , 1'b0, 1'b0
, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIB<0> }),
    .DIPB({1'b0, 1'b0, 1'b0, 1'b0}),
    .DOA({\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA31 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA30 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA29 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA28 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA27 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA26 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA25 , dout_3_OBUF_197, 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA23 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA22 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA21 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA20 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA19 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA18 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA17 , dout_2_OBUF_196, 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA15 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA14 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA13 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA12 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA11 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA10 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA9 , dout_1_OBUF_195, 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA7 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA6 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA5 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA4 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA3 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA2 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOA1 , dout_0_OBUF_194}),
    .DOPA({\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOPA3 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOPA2 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOPA1 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOPA0 }),
    .DOB({\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB31 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB30 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB29 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB28 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB27 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB26 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB25 , dout_7_OBUF_201, 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB23 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB22 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB21 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB20 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB19 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB18 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB17 , dout_6_OBUF_200, 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB15 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB14 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB13 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB12 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB11 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB10 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB9 , dout_5_OBUF_199, 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB7 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB6 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB5 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB4 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB3 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB2 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOB1 , dout_4_OBUF_198}),
    .DOPB({\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOPB3 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOPB2 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOPB1 , 
\RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DOPB0 })
  );
  X_OPAD #(
    .LOC ( "PAD47" ))
  \dout<2>/PAD  (
    .PAD(dout[2])
  );
  X_OBUF #(
    .LOC ( "PAD47" ))
  dout_2_OBUF (
    .I(\dout<2>/O ),
    .O(dout[2])
  );
  X_IPAD #(
    .LOC ( "PAD25" ))
  \din<5>/PAD  (
    .PAD(din[5])
  );
  X_BUF #(
    .LOC ( "PAD25" ))
  din_5_IBUF (
    .I(din[5]),
    .O(\din<5>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD41" ))
  \dout<3>/PAD  (
    .PAD(dout[3])
  );
  X_OBUF #(
    .LOC ( "PAD41" ))
  dout_3_OBUF (
    .I(\dout<3>/O ),
    .O(dout[3])
  );
  X_IPAD #(
    .LOC ( "PAD52" ))
  \din<7>/PAD  (
    .PAD(din[7])
  );
  X_BUF #(
    .LOC ( "PAD52" ))
  din_7_IBUF (
    .I(din[7]),
    .O(\din<7>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD56" ))
  \dout<4>/PAD  (
    .PAD(dout[4])
  );
  X_OBUF #(
    .LOC ( "PAD56" ))
  dout_4_OBUF (
    .I(\dout<4>/O ),
    .O(dout[4])
  );
  X_IPAD #(
    .LOC ( "PAD49" ))
  \din<3>/PAD  (
    .PAD(din[3])
  );
  X_BUF #(
    .LOC ( "PAD49" ))
  din_3_IBUF (
    .I(din[3]),
    .O(\din<3>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD63" ))
  \din<4>/PAD  (
    .PAD(din[4])
  );
  X_BUF #(
    .LOC ( "PAD63" ))
  din_4_IBUF (
    .I(din[4]),
    .O(\din<4>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD123" ))
  \clk/PAD  (
    .PAD(clk)
  );
  X_BUF #(
    .LOC ( "PAD123" ))
  \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD39" ))
  \dout<5>/PAD  (
    .PAD(dout[5])
  );
  X_OBUF #(
    .LOC ( "PAD39" ))
  dout_5_OBUF (
    .I(\dout<5>/O ),
    .O(dout[5])
  );
  X_IPAD #(
    .LOC ( "PAD62" ))
  \din<6>/PAD  (
    .PAD(din[6])
  );
  X_BUF #(
    .LOC ( "PAD62" ))
  din_6_IBUF (
    .I(din[6]),
    .O(\din<6>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD48" ))
  \dout<1>/PAD  (
    .PAD(dout[1])
  );
  X_OBUF #(
    .LOC ( "PAD48" ))
  dout_1_OBUF (
    .I(\dout<1>/O ),
    .O(dout[1])
  );
  X_OPAD #(
    .LOC ( "PAD40" ))
  \dout<0>/PAD  (
    .PAD(dout[0])
  );
  X_OBUF #(
    .LOC ( "PAD40" ))
  dout_0_OBUF (
    .I(\dout<0>/O ),
    .O(dout[0])
  );
  X_BUF #(
    .LOC ( "PAD49" ))
  \din<3>/IFF/IMUX  (
    .I(\din<3>/INBUF ),
    .O(din_3_IBUF_188)
  );
  X_BUF #(
    .LOC ( "PAD30" ))
  \addr<3>/IFF/IMUX  (
    .I(\addr<3>/INBUF ),
    .O(addr_3_IBUF_187)
  );
  X_BUF #(
    .LOC ( "PAD25" ))
  \din<5>/IFF/IMUX  (
    .I(\din<5>/INBUF ),
    .O(din_5_IBUF_190)
  );
  X_BUF #(
    .LOC ( "PAD62" ))
  \din<6>/IFF/IMUX  (
    .I(\din<6>/INBUF ),
    .O(din_6_IBUF_191)
  );
  X_BUF #(
    .LOC ( "PAD20" ))
  \addr<2>/IFF/IMUX  (
    .I(\addr<2>/INBUF ),
    .O(addr_2_IBUF_185)
  );
  X_BUF #(
    .LOC ( "PAD52" ))
  \din<7>/IFF/IMUX  (
    .I(\din<7>/INBUF ),
    .O(din_7_IBUF_192)
  );
  X_BUF #(
    .LOC ( "PAD63" ))
  \din<4>/IFF/IMUX  (
    .I(\din<4>/INBUF ),
    .O(din_4_IBUF_189)
  );
  X_BUF #(
    .LOC ( "PAD57" ))
  \din<2>/IFF/IMUX  (
    .I(\din<2>/INBUF ),
    .O(din_2_IBUF_186)
  );
  X_BUF #(
    .LOC ( "PAD50" ))
  \reset/IFF/IMUX  (
    .I(\reset/INBUF ),
    .O(reset_IBUF_202)
  );
  X_BUF #(
    .LOC ( "PAD23" ))
  \wen/IFF/IMUX  (
    .I(\wen/INBUF ),
    .O(wen_IBUF_203)
  );
  X_BUF #(
    .LOC ( "PAD38" ))
  \addr<0>/IFF/IMUX  (
    .I(\addr<0>/INBUF ),
    .O(addr_0_IBUF_204)
  );
  X_BUF #(
    .LOC ( "PAD51" ))
  \din<1>/IFF/IMUX  (
    .I(\din<1>/INBUF ),
    .O(din_1_IBUF_207)
  );
  X_BUF #(
    .LOC ( "PAD58" ))
  \din<0>/IFF/IMUX  (
    .I(\din<0>/INBUF ),
    .O(din_0_IBUF_205)
  );
  X_BUF #(
    .LOC ( "PAD60" ))
  \addr<1>/IFF/IMUX  (
    .I(\addr<1>/INBUF ),
    .O(addr_1_IBUF_206)
  );
  X_BUF #(
    .LOC ( "PAD37" ))
  \dout<7>/OUTPUT/OFF/OMUX  (
    .I(dout_7_OBUF_201),
    .O(\dout<7>/O )
  );
  X_BUF #(
    .LOC ( "PAD59" ))
  \dout<6>/OUTPUT/OFF/OMUX  (
    .I(dout_6_OBUF_200),
    .O(\dout<6>/O )
  );
  X_BUF #(
    .LOC ( "PAD47" ))
  \dout<2>/OUTPUT/OFF/OMUX  (
    .I(dout_2_OBUF_196),
    .O(\dout<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD41" ))
  \dout<3>/OUTPUT/OFF/OMUX  (
    .I(dout_3_OBUF_197),
    .O(\dout<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD56" ))
  \dout<4>/OUTPUT/OFF/OMUX  (
    .I(dout_4_OBUF_198),
    .O(\dout<4>/O )
  );
  X_BUF #(
    .LOC ( "PAD39" ))
  \dout<5>/OUTPUT/OFF/OMUX  (
    .I(dout_5_OBUF_199),
    .O(\dout<5>/O )
  );
  X_BUF #(
    .LOC ( "PAD48" ))
  \dout<1>/OUTPUT/OFF/OMUX  (
    .I(dout_1_OBUF_195),
    .O(\dout<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD40" ))
  \dout<0>/OUTPUT/OFF/OMUX  (
    .I(dout_0_OBUF_194),
    .O(\dout<0>/O )
  );
  X_BUF   \NlwBufferBlock_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/CLKA  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/CLKA )
  );
  X_BUF   \NlwBufferBlock_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/CLKB  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/CLKB )
  );
  X_BUF 
  \NlwBufferBlock_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRA<4>  (
    .I(addr_3_IBUF_187),
    .O(\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRA<4> )
  );
  X_BUF 
  \NlwBufferBlock_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRA<3>  (
    .I(addr_2_IBUF_185),
    .O(\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRA<3> )
  );
  X_BUF 
  \NlwBufferBlock_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRA<2>  (
    .I(addr_1_IBUF_206),
    .O(\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRA<2> )
  );
  X_BUF 
  \NlwBufferBlock_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRA<1>  (
    .I(addr_0_IBUF_204),
    .O(\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRA<1> )
  );
  X_BUF 
  \NlwBufferBlock_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRB<4>  (
    .I(addr_3_IBUF_187),
    .O(\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRB<4> )
  );
  X_BUF 
  \NlwBufferBlock_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRB<3>  (
    .I(addr_2_IBUF_185),
    .O(\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRB<3> )
  );
  X_BUF 
  \NlwBufferBlock_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRB<2>  (
    .I(addr_1_IBUF_206),
    .O(\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRB<2> )
  );
  X_BUF 
  \NlwBufferBlock_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRB<1>  (
    .I(addr_0_IBUF_204),
    .O(\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/ADDRB<1> )
  );
  X_BUF   \NlwBufferBlock_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIA<0>  (
    .I(din_0_IBUF_205),
    .O(\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIA<0> )
  );
  X_BUF   \NlwBufferBlock_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIA<8>  (
    .I(din_1_IBUF_207),
    .O(\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIA<8> )
  );
  X_BUF   \NlwBufferBlock_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIA<16>  (
    .I(din_2_IBUF_186),
    .O(\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIA<16> )
  );
  X_BUF   \NlwBufferBlock_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIA<24>  (
    .I(din_3_IBUF_188),
    .O(\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIA<24> )
  );
  X_BUF   \NlwBufferBlock_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIB<0>  (
    .I(din_4_IBUF_189),
    .O(\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIB<0> )
  );
  X_BUF   \NlwBufferBlock_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIB<8>  (
    .I(din_5_IBUF_190),
    .O(\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIB<8> )
  );
  X_BUF   \NlwBufferBlock_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIB<16>  (
    .I(din_6_IBUF_191),
    .O(\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIB<16> )
  );
  X_BUF   \NlwBufferBlock_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIB<24>  (
    .I(din_7_IBUF_192),
    .O(\NlwBufferSignal_RAM_16/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/spram.ram/DIB<24> )
  );
  X_ZERO   NlwBlock_RAM_IP_Core_GND (
    .O(GND)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule

`endif

