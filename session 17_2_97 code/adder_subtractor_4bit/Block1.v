`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:07:23 03/01/2017 
// Design Name: 
// Module Name:    Block1 
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
module Block1(
    input In,
    input clk,
    input reset,
    output [3:0] Out
    );
	 reg [3:0] ro;
	 reg [3:0] rm;
	
always @ (posedge clk)
if(!reset)
ro <= 0;
else 
ro <= (rm+In);
assign Out = ro;
endmodule
