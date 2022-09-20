`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:14:18 05/02/2017 
// Design Name: 
// Module Name:    stack 
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
module stack( din , push , clk , reset , dout 
    );
	input clk , reset , push , pop ;
	input [7:0] din ;
	output [7:0] dout ;
	reg [3:0] SP  ;
	
	ram your_instance_name (
  .clka(clk), // input clka
  .wea(push), // input [3 : 0] wea
  .addra(SP), // input [31 : 0] addra
  .dina(din), // input [31 : 0] dina
  .douta(dout) // output [31 : 0] douta
);
	always @ (posedge clk )begin 
		if(reset )
		SP <= 0 ;
		else if (push)
			SP <= SP +1 ;
			else if (pop)
			SP <= SP -1 ;
			else 
			SP <= SP ;
endmodule
