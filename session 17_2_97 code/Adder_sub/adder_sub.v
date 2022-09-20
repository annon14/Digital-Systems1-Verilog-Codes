`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:43:51 05/06/2018 
// Design Name: 
// Module Name:    adder_sub 
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
module adder_sub( A , B , S ,COB , Out );
	input [7:0] A ;
	input [7:0] B ;
	input S ;
	output COB ;
	output [7:0] Out ;
	reg [8:0] Ans ;
	always @(A , B , S)
		begin 
			if(S==1'b0)
				Ans <= A+B ;
			else
				Ans <= A-B ;
		end 	
	assign {COB,Out} = Ans ;
endmodule
