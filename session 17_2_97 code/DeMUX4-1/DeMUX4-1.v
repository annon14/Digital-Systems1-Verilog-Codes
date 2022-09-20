`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:41:41 05/06/2018 
// Design Name: 
// Module Name:    DeMUX4-1 
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
module DeMUX4_1( A ,S , Out1,Out2,Out3,Out4 );
	input [7:0] A ;
	input [1:0] S ;
	output reg [7:0] Out1,Out2,Out3,Out4 ;
	always @(A, S)
			case(S)
				2'b00: Out1<=A ;
				2'b01: Out2<=A ;
				2'b10: Out3<=A ;
				2'b11: Out4<=A ;
				default:Out1<= 8'h00;
			endcase
endmodule
