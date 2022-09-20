`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:30:24 06/03/2017 
// Design Name: 
// Module Name:    shift_register_8bit 
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
module shift_register_8bit( in , clk , reset , R , L , out  );
	input [7:0] in ;
	input reset , R , L , clk ;
	output [7:0] out ;
	
	N_bit_shift_register shift_reg_2(.clk(clk),.in(in),.reset(reset),.R(R),.L(L),.out(out)) ;
	defparam shift_reg_2.N = 8 ;
endmodule
