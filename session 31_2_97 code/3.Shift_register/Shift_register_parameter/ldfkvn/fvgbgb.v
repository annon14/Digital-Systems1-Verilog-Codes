`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:20:18 05/23/2018 
// Design Name: 
// Module Name:    fvgbgb 
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
module fvgbgb(r,l,o,g,reset,in,clk
    );
	 parameter n=6;
input r,l,reset,clk;
input [n-1:0]in;
output [n-1:0]o;
output reg [n-1:0]g;
always @(posedge clk)
begin
if (reset)
g<=0;
else if (r)
g<={in,g[n-1:1]};
else if (l) 
g<={g[n-2:0],in};
else
 g<=g;
 end
assign o=g;

endmodule
