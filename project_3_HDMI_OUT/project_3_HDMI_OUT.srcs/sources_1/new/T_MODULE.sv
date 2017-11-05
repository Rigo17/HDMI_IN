`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2017 21:42:43
// Design Name: 
// Module Name: T_MODULE
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


module T_MODULE(
    input clk_sys, cpu_resetn,
    input [2:0] sw,
    output hdmi_tx_clk_p, hdmi_tx_clk_n,
    output [2:0] hdmi_tx_p, hdmi_tx_n
);

wire clk_250mhz, clk_25mhz;
clk_wiz_0 CLK_INSTANCE
   (
    // Clock out ports
    .clk_out1(clk_250mhz),     // output clk_out1
    .clk_out2(clk_25mhz),     // output clk_out2
    .resetn(cpu_resetn),    // input resetn
    .clk_in1(clk_sys)
    ); 

//wire [9:0] CounterX, CounterY;

HDMI_OUT_DRIVER HDMI_OUT_INSTANCE
    (
    .clk_pixel(clk_25mhz),
    .clk_serial(clk_250mhz),
    .red_out({8{sw[0]}}),
    .green_out({8{sw[1]}}),
    .blue_out({8{sw[2]}}),
    .TMDSp(hdmi_tx_p),
    .TMDSn(hdmi_tx_n),
    .TMDSp_clock(hdmi_tx_clk_p),
    .TMDSn_clock(hdmi_tx_clk_n),
    .CounterX(),
    .CounterY()
    );
 
endmodule
