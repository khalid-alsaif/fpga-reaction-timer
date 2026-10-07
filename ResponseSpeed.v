`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:56:34 04/22/2024 
// Design Name: 
// Module Name:    ResponseSpeed 
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
module ResponseSpeed (input [3:0] Q,output Fast, Medium, Slow);
assign Slow = Q[3];
assign Medium = Q[2];
assign Fast = ~ (Slow | Medium);
endmodule
