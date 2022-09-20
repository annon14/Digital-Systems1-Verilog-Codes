`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:08:56 05/23/2018 
// Design Name: 
// Module Name:    jnjnjk 
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
module jnjnjk(r,i,o,clk
    );
	 input r,i,clk;
	 output [1:0]o;
	 reg [1:0]s;
	 parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
	 always @(posedge clk)
	 if (r) begin
	 s<=0;
	 o<=0;
	 end
	 else case(s)
	 0:if(i==0)
	 begin s<=s1 ; o<=0 ; end
	 else
	 begin s<=s0 ; o<=1; end
	 1:if(i==0)
	 begin s<=s1 ; o<=0 ; end
	 else
	 begin s<=s0 ; o<=1; end
	  2:if(i==0)
	 begin s<=s1 ; o<=0 ; end
	 else
	 begin s<=s0 ; o<=1; end
	  3:if(i==0)
	 begin s<=s1 ; o<=0 ; end
	 else
	 begin s<=s0 ; o<=1; end
	 endcase
	
	 
	 
endmodule
