`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:26:26 03/08/2017 
// Design Name: 
// Module Name:    Mux8_1 
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
module Mux8_1(
    input [7:0] I,
    output O,
    input [2:0] S
    );
		assign O =(S==3'b000)? I[0]:
					 (S==3'b001)? I[1]:
					 (S==3'b010)? I[2]:
				  	 (S==3'b011)? I[3]:
					 (S==3'b100)? I[4]:
					 (S==3'b101)? I[5]:
					 (S==3'b110)? I[6]: 
					 (S==3'b111)? I[7]:
					 1'bx;
					

endmodule
