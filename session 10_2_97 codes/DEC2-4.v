`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:56:50 04/30/2018 
// Design Name: 
// Module Name:    DEC2-4 
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
module DEC2-4( input A0 , input A1,input E ,output[3:0] B );
	assign B = E ? 4'b0000:
				({A1,A0}==2'b00 ? 4'b1000):
				({A1,A0}==2'b01 ? 4'b0100):
				({A1,A0}==2'b10 ? 4'b0010):
				({A1,A0}==2'b11 ? 4'b0001):
				4'bxxxx ;
				
endmodule
