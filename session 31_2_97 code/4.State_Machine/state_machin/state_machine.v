`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:36:28 04/26/2017 
// Design Name: 
// Module Name:    state_machine 
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
module state_machine( input I , output [1:0] O , input clk ,input reset
    );
	parameter [1:0] S0=0;
	parameter [1:0] S1=1;
	parameter [1:0] S2=2;
	parameter [1:0] S3=3;
	reg [1:0] PS, NS;
	always @ (posedge clk )
	if (Reset)
		PS<=S0;
	else 
		PS<=NS;
	always @ (*)
	case ({PS,I})	
		{S0,1'b0}: NS<=S1;
		{S0,1'b1}: NS<=S0;
		{S1,1'b0}: NS<=S3;
		{S1,1'b1}: NS<=S2;
		{S2,1'b0}: NS<=S3;
		{S2,1'b1}: NS<=S2;
		{S3,1'b0}: NS<=S0;
		default:   NS<=S3;
	endcase
	assign O = PS ;
endmodule
