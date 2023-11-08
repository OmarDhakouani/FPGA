`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Eduardo Corpeno
// 
// Create Date:    16:45:12 04/05/2010 
// Design Name: Full Adder
// Module Name:    full_adder 
// Project Name: Full Adder
// Dependencies: Half Adder
//
// Revision: 1.0
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module full_adder(
    input A,
    input B,
    input Ci,
    output S,
    output Co
    );

      wire P,G,H;

      half_adder ha1(A,B,P,G);
      half_adder ha2(P,Ci,S,H);
      or(Co,G,H);

endmodule
