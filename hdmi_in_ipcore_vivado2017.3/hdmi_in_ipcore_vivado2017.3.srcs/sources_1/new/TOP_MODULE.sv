`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.11.2017 11:49:03
// Design Name: 
// Module Name: TOP_MODULE
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TOP_MODULE(
    input clk_sys, cpu_resetn,
    input [2:0] hdmi_rx_p, hdmi_rx_n,
    input hdmi_rx_clk_p, hdmi_rx_clk_n,
    output [7:0] led
);

wire clk_200mhz;
wire [23:0] rgb_in;

clk_wiz_0 clkinstance(
    .clk_out1(clk_200mhz),     // output clk_out1
    .resetn(~cpu_resetn), // input reset
    .clk_in1(clk_sys)
    );
     
dvi2rgb_0 INSTANCE_DVI2RGB (
  .TMDS_Clk_p(hdmi_rx_clk_p),        // input wire TMDS_Clk_p
  .TMDS_Clk_n(hdmi_rx_clk_n),        // input wire TMDS_Clk_n
  .TMDS_Data_p(hdmi_rx_p),      // input wire [2 : 0] TMDS_Data_p
  .TMDS_Data_n(hdmi_rx_n),      // input wire [2 : 0] TMDS_Data_n
  .RefClk(clk_200mhz),                // input wire RefClk
  .aRst(1'b0),                    // input wire aRst
  .vid_pData(rgb_in),          // output wire [23 : 0] vid_pData
  .vid_pVDE(),            // output wire vid_pVDE
  .vid_pHSync(),        // output wire vid_pHSync
  .vid_pVSync(),        // output wire vid_pVSync
  .PixelClk(),            // output wire PixelClk
  .aPixelClkLckd(),  // output wire aPixelClkLckd
  .pRst(1'b0)                    // input wire pRst
  );
  assign led[7:0] = rgb_in[7:0];
endmodule
