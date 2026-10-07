`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:55:48 03/25/2024 
// Design Name: 
// Module Name:    dc_2b 
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
module dc_2b(input clk, reset, enable, load, [1:0] data, output zero); 
reg [1:0] count;
assign zero= ~count[1] & ~count[0];
always @(posedge clk)
begin
if (reset)
count <= 2'b 11;
else if (load)
count <= data;
else if (enable)
count <= count-1;
end
endmodule
