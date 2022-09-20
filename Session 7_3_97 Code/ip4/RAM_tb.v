`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:53:31 05/02/2017
// Design Name:   RAM
// Module Name:   D:/Homeworks/FPGA_codes/ip4/RAM_tb.v
// Project Name:  ip4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RAM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RAM_tb;

	// Inputs
	reg [3:0] adr;
	reg [7:0] din;
	reg w;
	reg clk;

	// Outputs
	wire [7:0] dout;

	// Instantiate the Unit Under Test (UUT)
	RAM uut (
		.adr(adr), 
		.din(din), 
		.w(w), 
		.clk(clk), 
		.dout(dout)
	);

	initial begin
		// Initialize Inputs
		adr = 0;
		din = 0;
		w = 0;
		clk = 0;
			end
		// clk
		initial forever #10 clk = ~clk ;
		
		//w
		initial forever #320 w=~w ;
		
		//adr , din
		always @ (posedge clk )begin
		#5 adr = adr+1 ;
			din = $random();
			end
		// din
		
endmodule

