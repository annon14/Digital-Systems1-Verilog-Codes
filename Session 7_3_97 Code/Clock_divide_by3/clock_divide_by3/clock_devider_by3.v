`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:08:31 03/08/2017 
// Design Name: 
// Module Name:    clock_devider_by3 
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
	module clock_devider_by3(input clk_in ,input reset ,output clk_out
		 );
		reg [1:0] pos_cnt;
		reg [1:0] neg_cnt;
		always @ (posedge clk_in)
		begin 
		if(reset)
			pos_cnt <= 0;
		else
			pos_cnt <=(pos_cnt==2)? 0: pos_cnt+1 ;
		end
		always @ (negedge clk_in)
		begin
		if(reset)
			neg_cnt <= 0 ;
		else
		 neg_cnt <=(neg_cnt == 2)? 0: neg_cnt +1 ;
		end
		assign clk_out = ((pos_cnt !=2)&&(neg_cnt !=2));
	endmodule
