`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:49:15 06/04/2017
// Design Name:   RAM_IP_Core
// Module Name:   D:/Homeworks/FPGA_codes/Ram_IP_core/RAM_16_tb.v
// Project Name:  Ram_IP_core
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RAM_IP_Core
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RAM_16_tb;

	// Inputs
	reg clk;
	reg reset;
	reg wen;
	reg [3:0] addr;
	reg [7:0] din;

	// Outputs
	wire [7:0] dout;

	// Instantiate the Unit Under Test (UUT)
	RAM_IP_Core uut (
		.clk(clk), 
		.reset(reset), 
		.wen(wen), 
		.addr(addr), 
		.din(din), 
		.dout(dout)
	);

	initial begin
		clk = 0;
		reset = 1;
		wen = 0;
		addr = 0;
		din = 0;
	end
	initial forever #10 clk =~clk ;
	initial #15 reset = 0 ;
	always @ (posedge clk )
			begin 
				din = $random() ;
				wen = 1 ;
			#5	addr <= addr+2 ;
			#5 wen=0;
			end
endmodule

