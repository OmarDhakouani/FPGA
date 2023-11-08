`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:30:16 04/07/2010 
// Design Name: 
// Module Name:    divisor8 
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
module FreqDivider(
    input entrada,
    input [31:0] ratio, 
	 output reg salida
    ); 
	 reg [31:0] cuenta;
	 initial 
	   begin
		  cuenta=32'd0;
		  salida=1'b0;
		end
	 
	 always @(posedge entrada)
	   begin
        cuenta = cuenta + 1;
		  if (cuenta==(ratio/2))
		  begin
		    cuenta=32'd0;
			 salida=~salida;
		  end
		end
endmodule		

/*
	 wire a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q;
// module JKFF(   J,   K,Q,QPrima,CLK,Preset,Clear);	
	 JKFF flip1(1'b1,1'b1,a,h,entrada,1'b1,1'b1);
	 JKFF flip2(1'b1,1'b1,b,i,a,1'b1,1'b1);
	 JKFF flip3(1'b1,1'b1,c,j,b,1'b1,1'b1);
	 JKFF flip4(1'b1,1'b1,d,k,c,1'b1,1'b1);
	 JKFF flip5(1'b1,1'b1,e,l,d,1'b1,1'b1);
	 JKFF flip6(1'b1,1'b1,f,m,e,1'b1,1'b1);
	 JKFF flip7(1'b1,1'b1,g,n,f,1'b1,1'b1);
	 JKFF flip8(1'b1,1'b1,salida,o,g,1'b1,1'b1);
endmodule
*/