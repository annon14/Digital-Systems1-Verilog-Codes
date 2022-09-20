`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:48:46 03/01/2017 
// Design Name: 
// Module Name:    adder_subtracto_4_bit 
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
module adder_subtracto_4_bit(
    input [3:0] A,
    input [3:0] B,
    input M,
    output [3:0] OUT );
	 reg [3:0] L;
	 always @(A or B or M)
	 if(M)
	 L <= A+B;
	 else 
	 L <=A-B;
	 assign OUT =L;
	 
   


endmodule
