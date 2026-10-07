`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:57:33 03/25/2024 
// Design Name: 
// Module Name:    OneHZ 
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
module OneHZ (input clk, reset,output CEO);
reg [26:0] counter;

always @(posedge clk)
if (reset || CEO)
counter <= 0;
else
counter <= counter + 1;
assign CEO = (counter ==99999999);
endmodule

