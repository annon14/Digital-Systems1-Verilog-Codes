`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:54:32 06/04/2017 
// Design Name: 
// Module Name:    frequence_measure 
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
	module frequence_measure( iedge , clk , reset , N   );
		input iedge , reset , clk ;
		output reg [7:0] N ;
		reg [7:0] counter ;
		
		always @ (posedge clk )
			if(reset)
				counter <= 1 ;
			else if (iedge)
				begin 
					counter <= 1 ;
					N <= counter ;
				end 
			else 
				counter <= counter+1 ;
				
	endmodule
