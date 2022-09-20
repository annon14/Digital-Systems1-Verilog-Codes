`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:26:46 03/08/2017 
// Design Name: 
// Module Name:    Pri_encoder 
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
	 output [1:0] binary_out ;
	 input enable ;
	 input [3:0] encoder_in ;
	 reg [1:0] binary_out ;
	 always @ (encoder_in , enable)
	 begin
	 if(enable)
	 case (encoder_in)
	 4'b0000: binary_out <= 2'bzz;
	 4'b0001: binary_out <= 2'b00;
	 4'b0010: binary_out <= 2'b01;
	 4'b0011: binary_out <= 2'b01;
	 4'b0100: binary_out <= 2'b10;
	 4'b0101: binary_out <= 2'b10;
	 4'b0110: binary_out <= 2'b10;
	 4'b0111: binary_out <= 2'b10;
	 default: binary_out <= 2'b11;
	 endcase
	 else binary_out <=2'bzz;
	 end
endmodule
