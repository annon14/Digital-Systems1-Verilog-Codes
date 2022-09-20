`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:44:41 05/07/2017 
// Design Name: 
// Module Name:    FIFO 
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
	module FIFO(
	input clkA ,
	input clkB,
	input rst , 
	input [15:0] datain ,
	input W ,
	input R ,
	output reg [15:0] dataout
		 );
	reg [3:0] WPointer ;
	reg [3:0] RPointer ;
	
	always @ (posedge clkA) 
		begin
			if(rst)
				WPointer <= 15;
			else if(W)
				begin
					FIFO1 My_FIFO (
					  .clka(clkA), // input clka
					  .wea(W), // input [0 : 0] wea
					  .addra(WPointer), // input [3 : 0] addra
					  .dina(datain), // input [15 : 0] dina
					  .clkb(clkB), // input clkb
					  .addrb(RPointer), // input [3 : 0] addrb
					  .doutb(dataout) // output [15 : 0] doutb
						);
					WPointer <= WPointer -1  ;
				end
			end
	always @ (posedge clkB)
		begin
			if(rst)
				RPointer <= 15;
			else if(R)
				begin
					RPointer <= RPointer -1 ;
					FIFO1 My_FIFO2 (
						  .clka(clkA), // input clka
						  .wea(W), // input [0 : 0] wea
						  .addra(WPointer), // input [3 : 0] addra
						  .dina(datain), // input [15 : 0] dina
						  .clkb(clkB), // input clkb
						  .addrb(RPointer), // input [3 : 0] addrb
						  .doutb(dataout) // output [15 : 0] doutb
							);
				end
			end
	endmodule
