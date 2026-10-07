`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:47:53 04/22/2024 
// Design Name: 
// Module Name:    BCD_3D 
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
module BCD_3D(input clk, reset, enable, 
output ceo, [3:0] Q2, Q1, Q0);

wire ceo0, ceo1 , ceo2;
assign en0 = enable & ~ceo;
assign en1 = ceo0 & en0;
assign en2 = ceo1 & en1;
assign ceo = ceo0 & ceo1 & ceo2;
BCD_1D m0 (clk, reset, en0, ceo0, Q0);
BCD_1D m1 (clk, reset, en1, ceo1, Q1);
BCD_1D m2 (clk, reset, en2, ceo2, Q2);

endmodule
