`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:43:45 06/04/2017 
// Design Name: 
// Module Name:    Frequence_Meter 
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
module Frequence_Meter( clk , pulse , reset , N  );
	input clk ,reset  ,pulse ;
	output [7:0] N ;
	wire Edge ;
	Edge_Detector ED_ins (.clk(clk) , .pulse(pulse) , .reset(reset) ,.oedge(Edge) ) ;
	frequence_measure FM_ins(.clk(clk) , .reset(reset) , .iedge(Edge) , .N(N)) ;


endmodule
