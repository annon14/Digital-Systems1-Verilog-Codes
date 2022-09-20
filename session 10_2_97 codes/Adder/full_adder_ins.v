`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:00:02 03/08/2017 
// Design Name: 
// Module Name:    full_adder_ins 
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
module full_adder_ins( A , B , Cin , Cout ,Sum )
    );
 input  A ;
 input  B ;
 input Cin ;
 output Sum ; 
 output Cout ;
 wire S1 , C1 , C2;
 half_adder HA_ins1 (.A(A) , .B(B) ,.Sum(S1), .Cout(C1));
 half_adder HA_ins2 (.A(S1) , .B(Cin) , .Sum(Sum) , .Cout(C2));
 or G1 (Cout , C1 , C2) ;
endmodule
