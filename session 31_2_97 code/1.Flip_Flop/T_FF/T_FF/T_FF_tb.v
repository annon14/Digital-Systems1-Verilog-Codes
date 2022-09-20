`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:23:30 06/03/2017
// Design Name:   T_FF
// Module Name:   D:/Homeworks/FPGA_codes/T_FF/T_FF/T_FF_tb.v
// Project Name:  T_FF
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: T_FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module T_FF_tb;

	// Inputs
	reg T;
	reg SR;
	reg Clk;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	T_FF uut (
		.T(T), 
		.SR(SR), 
		.Clk(Clk), 
		.Q(Q)
	);
	integer wfile ;
	initial begin
		// Initialize Inputs
		T = 0;
		SR = 1;
		Clk = 0;
	end
		initial forever #20 T = $random($time);
		initial #30 SR = 0;
		initial forever #20 Clk=~Clk ;
      
		initial wfile=$fopen("output.txt" , "w");
		initial  $fwrite(wfile , "%b\n" , Q );
	//	initial #500 $fclose(wfile) ;
		
endmodule

