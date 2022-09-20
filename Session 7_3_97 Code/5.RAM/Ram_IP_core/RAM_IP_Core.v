`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:32:02 06/04/2017 
// Design Name: 
// Module Name:    RAM_IP_Core 
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
module RAM_IP_Core( clk , reset , wen , addr  ,din , dout   );
	input clk , reset , wen  ;
	input [3:0] addr ;
	input	[7:0] din ;
	output [7:0] dout ;
	RAM_IPCore RAM_16 (
  .clka(clk), // input clka
  .rsta(reset), // input rsta
  .wea(wen), // input [0 : 0] wea
  .addra(addr), // input [3 : 0] addra
  .dina(din), // input [7 : 0] dina
  .douta(dout) // output [7 : 0] douta
);

endmodule
