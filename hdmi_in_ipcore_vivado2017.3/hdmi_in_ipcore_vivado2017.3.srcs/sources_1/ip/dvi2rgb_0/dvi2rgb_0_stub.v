// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Sun Nov  5 11:47:44 2017
// Host        : Dell-Rodrigo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/rodrigo/Dropbox/Academico/IPD432 Super
//               Digitales/Proyectos de
//               prueba/hdmi_in_ipcore_vivado2017.3/hdmi_in_ipcore_vivado2017.3.srcs/sources_1/ip/dvi2rgb_0/dvi2rgb_0_stub.v}
// Design      : dvi2rgb_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dvi2rgb,Vivado 2017.3" *)
module dvi2rgb_0(TMDS_Clk_p, TMDS_Clk_n, TMDS_Data_p, 
  TMDS_Data_n, RefClk, aRst, vid_pData, vid_pVDE, vid_pHSync, vid_pVSync, PixelClk, aPixelClkLckd, 
  pRst)
/* synthesis syn_black_box black_box_pad_pin="TMDS_Clk_p,TMDS_Clk_n,TMDS_Data_p[2:0],TMDS_Data_n[2:0],RefClk,aRst,vid_pData[23:0],vid_pVDE,vid_pHSync,vid_pVSync,PixelClk,aPixelClkLckd,pRst" */;
  input TMDS_Clk_p;
  input TMDS_Clk_n;
  input [2:0]TMDS_Data_p;
  input [2:0]TMDS_Data_n;
  input RefClk;
  input aRst;
  output [23:0]vid_pData;
  output vid_pVDE;
  output vid_pHSync;
  output vid_pVSync;
  output PixelClk;
  output aPixelClkLckd;
  input pRst;
endmodule
