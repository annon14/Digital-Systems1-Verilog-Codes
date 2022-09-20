`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:25:02 05/06/2018 
// Design Name: 
// Module Name:    Pri_Encoder 
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
module Pri_encoder( binary_out , encoder_in , enable
    );
	 // Pri_encoder 4 to 2
	 output reg [1:0] binary_out ;
	 input enable ;
	 input [3:0] encoder_in ;
	 always @ (encoder_in , enable)
		 begin
			 if(enable)
				 casex (encoder_in)
					 4'b1xxx: binary_out <= 2'b11;
					 4'b01xx: binary_out <= 2'b10;
					 4'b001x: binary_out <= 2'b01;
					 4'b0001: binary_out <= 2'b00;
					 default: binary_out <= 2'bxx;
				 endcase
			 else binary_out <=2'bzz;
		 end
endmodule
