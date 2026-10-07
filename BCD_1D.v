`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:05:49 04/22/2024 
// Design Name: 
// Module Name:    BCD_1D 
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
module BCD_1D (input clk, reset, enable, 
output ceo, reg [3:0] Q);
assign ceo = Q[3] & Q[0]; 
always @(posedge clk)
if (reset)
Q <= 4'b0000;
else if (enable)
if (ceo)
Q <= 4'b0000;
else 
Q <= Q + 1; endmodule
