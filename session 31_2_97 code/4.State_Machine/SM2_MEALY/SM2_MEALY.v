`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:50:35 04/16/2017 
// Design Name: 
// Module Name:    SM2_MEALY 
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
module SM2_MEALY( Clk , Reset , in , Z 
    );
	input	Clk , Reset , in ;
	output reg Z ;
	parameter S0=0 , S1=1 ;
	reg	PS , NS ;
	reg Ztemp ; 
	always @ (posedge Clk)
	if(Reset) begin
		PS <= S0 ;
		Z <= 0;
		end
	else begin
		PS <= NS ;
		Z <= Ztemp ;
always @ (PS , in )
	case ({PS , in})
		{S0 , 1'b0} : NS <= S0;
		{S0 , 1'b1} : NS <= S1;
		{S1 , 1'b0} : NS <= S0;
		{S1 , 1'b1} : NS <= S1;
		default: NS <= S0 ;
	endcase
	always @ (PS , in )
	case ({PS , in})
		{S0 , 1'b0} : Ztemp <= 0;
		{S0 , 1'b1} : Ztemp <= 0;
		{S1 , 1'b0} : Ztemp <= 0;
		{S1 , 1'b1} : Ztemp <= 1;
		default: Ztemp <= 0 ;
	endcase
endmodule
