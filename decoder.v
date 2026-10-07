`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:33:10 05/06/2024 
// Design Name: 
// Module Name:    decoder 
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
module decoder( input [1:0] A , output reg [3:0] D);

always @(A) begin
if (A==0)  D=4'b0001;
else if (A==1)  D=4'b0010;
else if (A==2)  D=4'b0100;
else    D=4'b1000;
end
endmodule

