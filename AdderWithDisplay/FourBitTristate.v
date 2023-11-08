`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:37:56 04/06/2010 
// Design Name: 
// Module Name:    FourBitTristate 
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
module FourBitTriState(
    input [3:0] I,
    input OE,
    output [3:0] O
    );

    assign O=OE?I:4'bzzzz;
endmodule









