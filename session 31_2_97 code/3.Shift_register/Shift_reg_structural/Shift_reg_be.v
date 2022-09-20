`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:57:04 03/05/2017 
// Design Name: 
// Module Name:    Shift_reg_be 
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
module Shift_reg_be(
    input I,
    input clk,
    input Reset ,
    output reg [2:0] Out
    );

always @  (posedge clk )
	if(Reset)
	Out <= 0;
	else 
	Out <= {I , Out[2:1] };
endmodule
