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
    inout hdmi_rx_sda, hdmi_rx_scl,
    output hdmi_rx_hpa,
    output hdmi_rx_txen,
    output [3:0] led,
    output reg [3:0] led2
);
assign hdmi_rx_hpa = 1'b1;
assign hdmi_rx_txen = 1'b1;  
wire clk_200mhz;
wire [23:0] rgb_in;

wire SDA_I,SDA_O,SDA_T;
wire SCL_I,SCL_O,SCL_T;

clk_wiz_0 INSTANCECLK(
    .clk_out1(clk_200mhz),     // output clk_out1
    .resetn(cpu_resetn), // input reset
    .clk_in1(clk_sys)
    );
IOBUF INSTANCEIOBUF1(
    .IO(hdmi_rx_sda),
    .I(SDA_I),
    .O(SDA_O),
    .T(SDA_T)
    );
IOBUF INSTANCEIOBUF2(
        .IO(hdmi_rx_scl),
        .I(SCL_I),
        .O(SCL_O),
        .T(SCL_T)
        );    
         
dvi2rgb_0 INSTANCEDVI2RGB (
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
  .SDA_I(SDA_O),                  // input wire SDA_I
  .SDA_O(SDA_I),                  // output wire SDA_O
  .SDA_T(SDA_T),                  // output wire SDA_T
  .SCL_I(SCL_O),                  // input wire SCL_I
  .SCL_O(SCL_I),                  // output wire SCL_O
  .SCL_T(SCL_T),                  // output wire SCL_T
  .pRst(1'b0)                    // input wire pRst
  );
  assign led[3:0] = rgb_in[3:0];
  always @(posedge clk_200mhz) led2[3:0] <= rgb_in[3:0];
endmodule
