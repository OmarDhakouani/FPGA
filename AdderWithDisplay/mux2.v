`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:59:40 04/08/2010 
// Design Name: 
// Module Name:    mux2 
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
module mux2(
    input Sel,
    input I0,
    input I1,
    output Out
    );
	 wire a,b;
    and(a,~Sel,I0);
	 and(b,Sel,I1);
    or(Out,a,b);
endmodule
