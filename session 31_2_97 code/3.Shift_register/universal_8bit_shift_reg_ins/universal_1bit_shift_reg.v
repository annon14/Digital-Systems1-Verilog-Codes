`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:46:44 04/19/2017 
// Design Name: 
// Module Name:    universal_1bit_shift_reg 
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
module universal_1bit_shift_reg(input [3:0] In ,input [1:0] S ,input clk , input reset , output A
    );
	 wire w ;
	 always @ (*) begin 
	 Mux_4_1 ins1(.In(In),.S(S), .Out(w));
	 D_FF ins2(.clk(clk) , reset(reset) , .D(w) , .Q(A));
	 end
endmodule
