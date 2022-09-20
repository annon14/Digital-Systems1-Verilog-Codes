`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:47:54 05/03/2017 
// Design Name: 
// Module Name:    up_down_counter 
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
module up_down_counter(clk  , reset ,out ,up
    );
	input clk ; 
	input reset ;
	input up ;
	output reg [3:0] out  ;
	always @ (posedge clk)begin 
		if(reset)
			out <= 4'b0 ;
		else if (up)
		if ( out == 4'b1001) 
		out <= 4'b0000;
		else 
		out <= out +1 ;
		else 
		if ( out == 4'b0000) 
		out <= 4'b1001;
		else 
		out <= out -1 ;
		end
endmodule
