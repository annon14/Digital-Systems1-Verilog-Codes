`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:12:41 05/06/2018
// Design Name:   DeMUX4_1
// Module Name:   C:/Users/Saeid/Desktop/Digital_system1/17_2_97 session code/DeMUX4-1/DeMUX4_1_tb.v
// Project Name:  DeMUX4-1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DeMUX4_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DeMUX4_1_tb;

	// Inputs
	reg [7:0] A;
	reg [1:0] S;

	// Outputs
	wire [7:0] Out1;
	wire [7:0] Out2;
	wire [7:0] Out3;
	wire [7:0] Out4;

	// Instantiate the Unit Under Test (UUT)
	DeMUX4_1 uut (
		.A(A), 
		.S(S), 
		.Out1(Out1), 
		.Out2(Out2), 
		.Out3(Out3), 
		.Out4(Out4)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		S = 0;
		#25
		A=8'h66;
		S=2'b00;
		#25
		A=8'h66;
		S=2'b11;
		#25
		A=8'h66;
		S=2'b01;
		#25
		A=8'h66;
		S=2'b10;
	end
      
endmodule

