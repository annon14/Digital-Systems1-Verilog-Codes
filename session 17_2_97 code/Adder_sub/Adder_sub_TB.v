`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:54:47 05/06/2018
// Design Name:   adder_sub
// Module Name:   C:/Users/Saeid/Desktop/Digital_system1/17_2_97 session code/Adder_sub/Adder_sub_TB.v
// Project Name:  Adder_sub
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder_sub
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Adder_sub_TB;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg S;

	// Outputs
	wire COB;
	wire [7:0] Out;

	// Instantiate the Unit Under Test (UUT)
	adder_sub uut (
		.A(A), 
		.B(B), 
		.S(S), 
		.COB(COB), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
			A = 0;
			B = 0;
			S = 0;
			#25 
				A = 8'h22;
				B = 8'h11;
				S=0;
			#25
				A=8'h33 ;
				B=8'h66;
				S=0 ;
			#25
				A = 8'h22;
				B = 8'h11;
				S= 0 ;
			#35
				A = 8'h33;
				B = 8'h15;
				S= 1 ;
			#25
				A = 8'h44;
				B = 8'h33;
				S=1;
			#25
				A = 8'h33;
				B = 8'h55;
				S= 1;
				// Wait 100 ns for global reset to finish

	end
      
endmodule

