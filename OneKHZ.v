`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:58:59 04/22/2024 
// Design Name: 
// Module Name:    OneKHZ 
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
module OneKHZ (input clk, reset,output clk1khz );
reg [26:0] counter;

always @(posedge clk)
if (reset || clk1khz )
counter <= 0;
else
counter <= counter + 1;
assign clk1khz = (counter == 99999);
endmodule

