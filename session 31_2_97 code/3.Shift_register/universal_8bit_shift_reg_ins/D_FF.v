`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:28:17 04/19/2017 
// Design Name: 
// Module Name:    D_FF 
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
module D_FF( input clk , input D , output Q ,input reset 
    );
	 wire w ;
	always @ (posedge clk) begin
	if	(reset)
		w <= 0 ;
	else 
		w <= D
	end
	assign Q = w ;
endmodule
