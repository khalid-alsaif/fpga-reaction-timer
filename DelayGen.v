`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:05:16 03/25/2024 
// Design Name: 
// Module Name:    DelayGen 
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
module DelayGen(input clk, reset, load_rand, output led);
wire enable, load_rand_q, zero ,clk1hz;
wire [4:0] rand;
assign led = zero & ~load_rand;
assign enable =~led & clk1hz & load_rand_q;
dff c1 (clk,reset,load_rand,1,load_rand_q);
OneHZ c2 (clk,reset,clk1hz);
lfsr_5b c3(clk,reset,rand);
dc_2b c4(clk, reset,enable,load_rand,{rand[1],rand[0]} ,zero);
endmodule
