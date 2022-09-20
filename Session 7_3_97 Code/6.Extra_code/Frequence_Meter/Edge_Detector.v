`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:44:16 06/04/2017 
// Design Name: 
// Module Name:    Edge_Detector 
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
module Edge_Detector( clk , pulse , reset , oedge  );
	input clk , reset , pulse ;
	output oedge ;
	reg r0 , r1 ;
	always @ (posedge clk)
		begin
			if (reset)
				begin 
					r0 <= 0;
					r1 <= 1;
				end
			else 
				begin
					r0<= r1 ;
					r1<= pulse ;
				end 
		end 
	assign oedge = (r1) & (!r0) ;

endmodule
