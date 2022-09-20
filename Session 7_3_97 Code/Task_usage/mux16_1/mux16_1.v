`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:24:39 05/22/2018 
// Design Name: 
// Module Name:    mux16_1 
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
module mux16_1(
    input [0:15] W,
    input [3:0] S16,
    output reg f
    );
	always @(W,S16)
		case(S16[3:2])
			0:mux4to1(W[0:3],S16[1:0],f);
			1:mux4to1(W[4:7],S16[1:0],f);
			2:mux4to1(W[8:11],S16[1:0],f);
			3:mux4to1(W[12:15],S16[1:0],f);
		endcase
	// Task that specifies a 4to1 multiplexer
		task mux4to1;
			input [0:3] X;
			input [1:0]S4;
			output reg g ;
			case (S4)
				0:g=X[0];
				1:g=X[1];
				2:g=X[2];
				3:g=X[3];
			endcase
		endtask
		
endmodule
