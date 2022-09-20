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
	module D_FF_ASReset( D , Clk , ASReset , Q , NQ );
		input D ;
		input Clk ;
		input ASReset;
		output Q ;
		output NQ ;
		reg Q ;
		always @ ( posedge Clk , ASReset )
			if(!ASReset)
			Q <= D ; 
			else 
			Q <= 0 ;
		assign NQ = ~Q ; 
	endmodule  
		
