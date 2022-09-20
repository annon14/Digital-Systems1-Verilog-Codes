`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:57:45 04/19/2017 
// Design Name: 
// Module Name:    define_usage 
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
	`define m = 2 ;
	`define n =  3 ;
	`define w `n+`m ;
module define_usage(
    );
	
	input [n-1 : 0] A ;
	input [m-1 : 0] B ;
	output [w-1 : 0] F ;
	assign F = A + B ;
endmodule 
	
	

endmodule
