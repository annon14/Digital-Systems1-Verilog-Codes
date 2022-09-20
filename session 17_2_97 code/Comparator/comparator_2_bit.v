`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:18:35 03/01/2017 
// Design Name: 
// Module Name:    comparator_2_bit 
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
module comparator_2_bit(
    input [1:0] A,
    input [1:0] B,
    output[7:0] o,
	 // output [3:0] C
    );
	 reg [7:0] L;
		//assign C={0000};
		always @(A or B)
			if(A>B)
				L={11111111};
			else if(A==B)
				L={00001111};
			else 
				L={00000000};
		assign o = L;
endmodule
