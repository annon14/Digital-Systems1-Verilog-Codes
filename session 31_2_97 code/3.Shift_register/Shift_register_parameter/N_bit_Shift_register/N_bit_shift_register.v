`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:44:01 06/03/2017 
// Design Name: 
// Module Name:    N_bit_shift_register 
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
module N_bit_shift_register( in , clk , out , reset , R , L );
	parameter N = 6 ;
	input	[N-1:0] in ;
	input	clk , reset  ,R , L ;
	output [N-1:0] out ;
	reg [N-1:0] register ;
	always @(posedge clk ) 
		begin
			if(reset)
				register <= 0;
			else if (R)
				register <= {in , register[N-1:1]} ;
			else if (L)
				register <= {register[N-2:0], in} ;
			else 
				register <= register ;	
		end 
	assign out = register ;
	

endmodule
