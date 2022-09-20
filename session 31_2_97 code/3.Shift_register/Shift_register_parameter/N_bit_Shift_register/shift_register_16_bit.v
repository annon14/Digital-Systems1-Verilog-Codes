`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:57:48 06/03/2017 
// Design Name: 
// Module Name:    shift_register_16_bit 
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
module shift_register_16_bit( in , clk , reset , R , L , out  );
	
	input [15:0] in ;
	input reset , R , L , clk ;
	output [15:0] out ;
	N_bit_shift_register#(.N(16)) shift_register(.clk(clk),.in(in),.reset(reset),.R(R),.L(L),.out(out));
	
endmodule
