`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:10:43 06/04/2017
// Design Name:   Frequence_Meter
// Module Name:   D:/Homeworks/FPGA_codes/Frequence_Meter/Frequence_Meter_tb.v
// Project Name:  Frequence_Meter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Frequence_Meter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Frequence_Meter_tb;

	// Inputs
	reg clk;
	reg pulse;
	reg reset;

	// Outputs
	wire [7:0] N;

	// Instantiate the Unit Under Test (UUT)
	Frequence_Meter uut (
		.clk(clk), 
		.pulse(pulse), 
		.reset(reset), 
		.N(N)
	);

	initial 
		begin
			
			clk = 0;
			pulse = 0;
			reset = 1;
		end
	initial #20 reset = 0;
	initial forever #5 clk = ~clk ;
	initial forever #630 pulse = ~pulse ;
	integer Wfile ;
	initial Wfile= $fopen("Edge.txt" , "w") ;
	always @(posedge pulse ) 
		$fwrite(Wfile , "%d\n" , N) ;
	initial #700 $fclose(Wfile) ;
	
	
      
endmodule

