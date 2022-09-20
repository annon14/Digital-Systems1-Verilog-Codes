`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:50:03 05/23/2018 
// Design Name: 
// Module Name:    jhhv 
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
module jhhv(o,c,clk,r
    );
	 input r,clk;
	 output o;
output  reg c;
always @(posedge clk)
begin
if (r)begin
c<=0;
q=<=0;end
if (c==4'b1001)
c<=0;
else begin
c<=c+1;
if (c==n/2)
begin
q<=~q;
c<=0;
end
end

assign o=c;
endmodule
