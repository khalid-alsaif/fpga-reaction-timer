`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:51:33 03/25/2024 
// Design Name: 
// Module Name:    lfsr_5b 
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
module lfsr_5b(input clk, preset, output reg [4:0] y);
always @(posedge clk)   
begin 
if(preset)
y <= 5'b11111;
else
y <= {y[2]^y[0] , y[4:1]};
end 
endmodule
