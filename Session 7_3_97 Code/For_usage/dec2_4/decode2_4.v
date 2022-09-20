`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:01:40 05/22/2018 
// Design Name: 
// Module Name:    decode2_4 
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
	module decode2_4(
		 input [1:0] W,
		 input En,
		 output reg[3:0] Y
		 );
		integer k ;
		always @(W , En)
			begin
					for(k=0;k<=3;k=k+1)
						begin
							if((W==k)&&(En==1))
								Y[k]=1 ;
							else
								Y[k]=0;
						end
			end 
	endmodule
