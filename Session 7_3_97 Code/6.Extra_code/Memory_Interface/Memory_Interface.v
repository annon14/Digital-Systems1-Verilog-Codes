`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:39:46 05/18/2017 
// Design Name: 
// Module Name:    Memory_Interface 
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
	module Memory_Interface( input readdata32 , grant , memready8 , clk , rst , 
									 input [15:0] addrbus , 
									 input [7:0] data8 ,output [31:0] databus32 ,
									 output [17:0] addr18 ,
									 output memready32 , request , readdata8 );
			wire coc2 ;
			wire incc2 , ldaddr , lden , rst2 ;
			
			Memory_Interface_Controller MI_CU (clk , rst , readdata32 , grant , memready , coc2 , ldaddr ,
															rst2 , request , readdata8 , ldden , incc2 , memready32) ;
			Memory_Interface_Datapath MI_DU (addrbus16 , data8 , clk , rst , ldaddr , incc2 ,rst2 ,
															ldden , addr18 , databus32 , coc2 ) ;
																
	endmodule
