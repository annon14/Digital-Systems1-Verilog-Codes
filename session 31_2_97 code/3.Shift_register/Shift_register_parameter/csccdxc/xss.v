`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:56:26 05/23/2018 
// Design Name: 
// Module Name:    xss 
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
module xss( input A0 , input A1,input E ,output[3:0] B );
	assign B = E ? 4'b0000:
				({A1,A0}==2'b00 ? 4'b1000):
				({A1,A0}==2'b01 ? 4'b0100):
				({A1,A0}==2'b10 ? 4'b0010):
				({A1,A0}==2'b11 ? 4'b0001):
				4'bxxxx ;
				
endmodule
