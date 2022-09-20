`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:13:07 03/08/2017 
// Design Name: 
// Module Name:    D_FF 
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
	module D_FF( D , Clk , SReset , Q  );
		input D ;
		input Clk ;
		input SReset;
		output Q ;
		reg Q ;
		always @ ( posedge Clk)
			if(SReset == 0)
			Q <= D ; 
			else 
			Q <= 0 ;
	endmodule
		
