`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:55:19 03/08/2017 
// Design Name: 
// Module Name:    up_counter 
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
module up_counter( Enable , Reset , Clk , Out);
		input Reset;
		input Enable;
		input	clk;
		output reg [7:0] Out;
		always @ (posedge Clk)
			begin
			if(Reset)
				Out <= 8'b0;
			else 
				if(Enable)
					Out <= Out+1 ;
			end	
endmodule
