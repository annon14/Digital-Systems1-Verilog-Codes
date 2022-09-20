`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:22:44 04/12/2017 
// Design Name: 
// Module Name:    Clock_devider 
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
module Clock_devider(input clock , output reg clocko
    );
	parameter i=0 ;
	parameter n = 10 ;
	always @ (posedge clock)
	begin
		i <= i+1 ;
		if(i==n) 
			begin
				i<=1 ;
				clocko <= ~ clocko
			end
		else
				clocko <= clocko
	end
endmodule
