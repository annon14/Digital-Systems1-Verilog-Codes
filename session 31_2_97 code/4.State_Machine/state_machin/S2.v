`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:02:08 04/26/2017 
// Design Name: 
// Module Name:    S2 
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
module S2( input I , output [1:0] O , input clk ,input reset
    );
	parameter [1:0] S0=0;
	parameter [1:0] S1=1;
	parameter [1:0] S2=2;
	parameter [1:0] S3=3;
	reg [1:0] PS, NS;
	reg Z ;
	always @ (posedge clk )
	if (Reset)
		PS<=S0;
		O<=0;
	else 
		PS<=NS;
		O <= Z ;
	always @ (*)
	case ({PS,I})	
		{S0,1'b0}: NS<=S0;
		{S0,1'b1}: NS<=S1;
		{S1,1'b0}: NS<=S1;
		{S1,1'b1}: NS<=S2;
		{S2,1'b0}: NS<=S2;
		{S2,1'b1}: NS<=S3;
		{S3,1'b0}: NS<=S3;
		{S3,1'b1}: NS<=S0;
		default:   NS<=S3;
	endcase
	assign Z=(PS==S3)? 1:0;
endmodule
