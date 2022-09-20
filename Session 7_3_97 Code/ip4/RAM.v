`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:47:59 05/02/2017 
// Design Name: 
// Module Name:    RAM 
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
module RAM( adr , din , w , clk , dout 
    );
input clk , w ;
input [3:0] adr ;
input [7:0] din ;
output [7:0] dout ;
ram ram_ins0 (
  .clka(clk), // input clka
  .wea(w), // input [3 : 0] wea
  .addra(adr), // input [31 : 0] addra
  .dina(din), // input [31 : 0] dina
  .douta(dout) // output [31 : 0] douta
);


endmodule
