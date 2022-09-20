`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:01:15 06/03/2017
// Design Name:   D_FF
// Module Name:   D:/Homeworks/FPGA_codes/D_FF/D_FF/D_FF_tb.v
// Project Name:  D_FF
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D_FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module D_FF_tb;
 
	// Inputs
	reg D;
	reg Clk;
	reg SReset;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	D_FF uut (
		.D(D), 
		.Clk(Clk), 
		.SReset(SReset), 
		.Q(Q)
	);

	initial begin
		
		D = 0;
		Clk = 0;
		SReset = 1;
	end
		integer wfile ;
		initial #30  SReset = 0;
		initial forever #20 Clk= ~ Clk ;
		initial forever #20 D= $random();  
		initial $fopen("output.txt" , "w");
		always $fwrite( wfile , "value : %d \n" , Q );
endmodule

