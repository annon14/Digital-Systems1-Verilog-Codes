`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:34:17 05/03/2017 
// Design Name: 
// Module Name:    counter 
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
module counter( clk  , reset ,out 
    );
 input clk , reset ;
 output reg [3:0] out ;
	always @ (posedge clk )
		begin 
			if(reset)
			out <= 4'b0000 ;
			else if ( out == 4'b1001) 
			out <= 4'b0000;
			else 
			out <= out +1 ;
	end
		
endmodule
