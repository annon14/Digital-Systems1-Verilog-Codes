`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:42:34 04/12/2017 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
	input [1:0] A  ,
	input [1:0] B  ,
	output reg [1:0] O ,
	input  [2:0] C 
    );
	always @ *
	begin
	if (C==3'b1xx)
	begin
		case (C)
			3'b000: O= A ;
			3'b001: O= B ;
			3'b010: O= A+B ;
			3'b011: O= A-B ;
			default:O= 3'bxx;
		endcase
	end
		else
	begin
		case(C) 
			3'b100: O= A<<1;
			3'b101: O= A>>1 ;
			3'b110: O= A & B ;
			3'b111: O= A | B ;
			default:O= 2'bxx;
		endcase
	end
	end
endmodule
