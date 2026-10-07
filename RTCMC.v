`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:04:51 05/06/2024 
// Design Name: 
// Module Name:    RTCMC 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module RTCMC(input clk, reset, start, [2:0]measure, output reg [2:0]LED, [7:0] seg, an);
wire [3:0]sel;
wire [4:0]rflsr;

lfsr_5b m0(clk,reset,rflsr);
assign sel[0]= ~rflsr[1] & ~rflsr[0];
assign sel[1]= (~rflsr[1] & rflsr[0])| (rflsr[1] & rflsr[0]) ;
assign sel[2]= rflsr[1] & ~rflsr[0];
ReactionTimer m1(clk, reset, start, measure[0],LED[0], seg[7:0], an);

endmodule
