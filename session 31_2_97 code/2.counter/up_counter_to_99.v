`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:55:03 05/03/2017 
// Design Name: 
// Module Name:    up_counter_to_99 
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
module up_counter_to_99( input clk , input reset , output [3:0] outA , output [3:0] outB
    );
		reg outA , outB ;
		always @ (posedge clk ) begin
			if(reset)begin
				outA <= 4'b0000 ;
				outB <= 4'b0 ;
				end 
			else if (outB == 4'b1001)
			begin 
				outA <= outA +1 ;
				outB <= 4'b0000;
				end 
			else if (outA == 4'b10001)
				outA <= 4'b0 ;
			else 	
				outB <= outB + 1 ;				
			end
endmodule
