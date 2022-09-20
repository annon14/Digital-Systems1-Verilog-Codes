`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:40:26 05/18/2017 
// Design Name: 
// Module Name:    Memory_Interface_Datapath 
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
	module Memory_Interface_Datapath( input [15:0] addrbus16 , input [7:0] data8 , input clk , rst , 
													ldaddr , incc2 , rst2 , ldden ,
												 output [17:0] addr18 , output [31:0] databus32 , output reg coc2 );
			wire [17:0] addreg18 ;
			reg [15:0] addreg16 ;
			reg [1:0] counter2 ;
			reg [3:0] ldd = 0 ;
			reg [7:0] datareg0 , datareg1 , datareg2 , datareg3 ;
			always @ (posedge clk , posedge rst)  // 16 bit address register
				begin
				 if(rst)
					addreg16 <= 16'b0 ;
				else if(ldaddr)
					addreg16 <= addrbus16 ;
				else 
					addreg16 <= addreg16 ;
				end 
				
			always @ (posedge clk , posedge rst2)  // 2 bit counter
				begin 
						if(rst2)
							counter2 <= 2'b0 ;
						else if (incc2)
							{coc2 , counter2} <= counter2 +1 ;
				end 
			assign addreg18 = {addreg16 , counter2} ; // 18 bit address to memory 
			assign addr18 = addreg18 ;
			always @ (ldden) // decoder for mapping the address 
				begin 
					ldd = 4'b000 ;
					case (counter2)
						2'b00: ldd[0] = 1;
						2'b01: ldd[1] = 1;
						2'b10: ldd[2] = 1;
						2'b11: ldd[3] = 1;
					endcase
				end 
				
			always @ (posedge clk , posedge rst)
				begin
						if(rst)
							begin
								datareg0 <= 8'b0 ;
								datareg1 <= 8'b0 ;
								datareg2 <= 8'b0 ;
								datareg3 <= 8'b0 ;
							end 
						else if(ldd[0])
							datareg0 <= data8 ;
						else if(ldd[1])
							datareg1 <= data8 ;
						else if(ldd[2])
							datareg2 <= data8 ;
						else if(ldd[3])
							datareg3 <= data8 ;
				end 
				assign databus32 = {datareg3 , datareg2 , datareg1 , datareg0} ;
				 
	endmodule
