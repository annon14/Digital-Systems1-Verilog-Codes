`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:45:23 03/08/2017 
// Design Name: 
// Module Name:    T_FF 
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
	module T_FF( input T ,
					input SR ,
					input Clk ,
					output reg Q 
		 );
		always @ (posedge Clk)
		if (SR == 1)
			Q <= 0;
		else
			if(T)
			Q <= ~Q ;
			else 
			Q <= Q ;
			

	endmodule
