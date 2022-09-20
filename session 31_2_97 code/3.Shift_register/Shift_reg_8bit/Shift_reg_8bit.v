`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:47:45 04/19/2017 
// Design Name: 
// Module Name:    Shift_reg_8bit 
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
module Shift_reg_8bit( input In , output out 
    );
parameter w=8 ;
	always @ (posedge clk) begin 
		if (reset)
		L <= 0 ;
		else 
		L <= { In , L[w-1 : 1]} ;
	end
		assign out = L[0] ; 
endmodule
