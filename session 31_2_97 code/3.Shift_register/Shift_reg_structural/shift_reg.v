`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:28:22 03/05/2017 
// Design Name: 
// Module Name:    shift_reg 
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
module shift_reg(
// Structural Code
    input  I,
    input  Reset,
    input  clk,
    output [2:0] Out
    );
		reg A2 , A1 , A0 ;
		always @ (posedge clk)
			if (Reset)
			begin
			A0 <= A1;
			A1 <= A2;
			A2 <= I ;
			end
		assign Out ={A2 , A1 , A0};
	endmodule
		
