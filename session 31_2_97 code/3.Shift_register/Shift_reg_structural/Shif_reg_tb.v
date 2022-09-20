`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:46:30 03/05/2017
// Design Name:   shift_reg
// Module Name:   D:/Homeworks/FPGA_codes/Shift_reg/Shif_reg_tb.v
// Project Name:  Shift_reg
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shift_reg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Shif_reg_tb;

	// Inputs
	reg [0:0] I;
	reg [0:0] Reset;
	reg [0:0] clk;

	// Outputs
	wire [2:0] Out;

	// Instantiate the Unit Under Test (UUT)
	shift_reg uut (
		.I(I), 
		.Reset(Reset), 
		.clk(clk), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		I = 1;
		Reset = 1;
		clk = 0;
	end
	//Clk
	initial forever #25 clk= ~clk
//Reset
	initial #30 Reset = 0
 //I
	initial begin
	#180
	I =0;
	#150
	I =1;
	#150
	I = 0;
	#150
	I = 1;
	end
      
endmodule

