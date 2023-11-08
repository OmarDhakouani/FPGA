`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Eduardo Corpeno
// 
// Create Date:    16:48:40 04/05/2010 
// Design Name: Half Adder
// Module Name:    half_adder 
// Project Name: Half Adder
//
// Revision: 1.0
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module half_adder(
    input x,
    input y,
    output S,
    output C
    );

      xor(S,x,y);
      and(C,x,y);

endmodule
