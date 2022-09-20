`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:40:47 05/18/2017 
// Design Name: 
// Module Name:    Memory_Interface_Controller 
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
module Memory_Interface_Controller( input clk , rst , readdata32 , grant , memready8 , coc2 ,
												output reg ldaddr , rst2 , request , readdata8 ,ldden ,
												incc2 , memready32 );
	 
	 reg [2:0] NS , PS ;
	 parameter [2:0] waiting = 0 , getdata = 1 , getbus = 2 , readmem = 3 , onebyte = 4 , deliverdata = 5 ;
	 always @ (PS , readdata32 , grant , memready8 , coc2 )
			begin : combinational 
				ldaddr <= 1'b0 ;
				rst2 <= 1'b0 ;
				request <= 1'b0 ;
				readdata8 <= 1'b0 ;
				ldden <= 1'b0 ;
				incc2 <= 1'b0 ;
				memready32 <= 1'b0 ;
				case(PS)
					waiting : 
						if(readdata32)
							NS <= getdata ;
						else
							NS <= waiting ;
					getdata:
						begin 
							NS <= getbus ;
							ldaddr <= 1'b1 ;
							rst2 <= 1'b1 ;
						end
					getbus: 
						begin
							if (grant)
								NS <= readmem ;
							else
								begin
									NS <= getbus ;
									request <= 1'b1 ;
								end
						end	
					readmem:
						begin
							if(memready8)
								NS <= onebyte ;
							else 
								begin
									NS <= readmem ;
									request <= 1'b1 ;
								end 
						end
					onebyte:
						begin
							if(coc2)
								NS <= deliverdata ;
							else 
								begin
									NS <= readmem ;
									ldden <= 1'b1 ;
									request <= 1'b1 ;
									incc2 <= 1'b1 ;
								end
						end
					deliverdata :
						begin 
							if(readdata32)
								NS <= deliverdata ;
							else 
								begin
									NS <= waiting ;
									memready32 <= 1'b1 ;
								end
						end 
					default :
						begin
							NS <= 0 ;
							ldaddr <= 1'b0 ;
							rst2 <= 1'b0 ;
							request <= 1'b0 ;
							readdata8 <= 1'b0 ;
							ldden <= 1'b0 ;
							incc2 <= 1'b0 ;
							memready32 <= 1'b0 ;
						end
				endcase
			end 
		always @ (posedge clk , posedge rst ) 
			begin : sequential 
				if(rst)
					PS <= 3'b0 ;
				else 
					PS <= NS ;
			end
			
endmodule
