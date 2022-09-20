`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:35:28 04/19/2017 
// Design Name: 
// Module Name:    Mux_4_1 
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
module Mux_4_1(
    input [3:0] In,
    input [2:0] S,
    input reg Out
    );
	always @ (In , S)
		case (S)
		2'b00: Out = In[3] ;
		2'b01: Out = In[2] ;
		2'b10: Out = In[1] ;
		2'b11: Out = In[0] ;
		default : Out = 1'bz ;
endmodule
