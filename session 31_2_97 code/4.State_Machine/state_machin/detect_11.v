`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:16:39 04/26/2017 
// Design Name: 
// Module Name:    S3 
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
module detect_11( input I , output [1:0] O , input clk ,input reset
    );
	parameter [1:0] S0=0;
	parameter [1:0] S1=1;
	parameter [1:0] S2=2;
	parameter [1:0] S3=3;
	reg [1:0] PS, NS;
	reg Ztemp ;
	always @ (posedge clk )
	if (reset)
		PS<=S0;
		O<=0;
	else 
		PS<=NS;
		O <= Ztemp ;
	always @ (PS , I)
	case ({PS,I})	
		{S0,1'b0}: NS<=S0;
		{S0,1'b1}: NS<=S2;
		{S1,1'b0}: NS<=S0;
		{S1,1'b1}: NS<=S2;
		{S2,1'b0}: NS<=S1;
		{S2,1'b1}: NS<=S3;
		{S3,1'b0}: NS<=S1;
		default:   NS<=S3;
	endcase
	always @ (PS , I)
	case ({PS,I})
	{S0,1'b0}:  Ztemp<=0;
	{S0,1'b1}:  Ztemp<=0;
	{S1,1'b0}:  Ztemp<=0;
	{S1,1'b1}:  Ztemp<=0;
	{S2,1'b0}:  Ztemp<=0;
	{S2,1'b1}:  Ztemp<=1;
	{S3,1'b0}:  Ztemp<=0;	
	default:    Ztemp<=1;
	endcase
	assign O = Ztemp ;
endmodule
