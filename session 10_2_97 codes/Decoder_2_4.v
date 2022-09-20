`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:59:46 03/01/2017 
// Design Name: 
// Module Name:    Decoder_2_4 
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
module Decoder_2_4(
    input [1:0] I,
    input E,
    output reg [3:0] O
    );
	always @ (I,E)
		if(E)begin
		 if (I[1]==0 && I[0]==0)begin
		O[0]<=1;
		O[1]<=0;
		O[2]<=0;
		O[3]<=0;
		end
		else if (I[1]==0 && I[0]==1)begin
		O[0]<=0;
		O[1]<=1;
		O[2]<=0;
		O[3]<=0;
		end

		else if (I[1]==1 && I[0]==0)begin
		O[0]<=0;
		O[1]<=0;
		O[2]<=1;
		O[3]<=0;
		end

		else if (I[1]==1 && I[0]==1)begin
		O[0]<=0;
		O[1]<=0;
		O[2]<=0;
		O[3]<=1;
		end
		end
		else begin
		O[0]<=0;
		O[1]<=0;
		O[2]<=0;
		O[3]<=0;
	end

endmodule
