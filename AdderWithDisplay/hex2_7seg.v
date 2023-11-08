`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Universidad Galileo
// Engineer: Rodrigo Baessa, ECORP
// 
// Create Date:    15:37:54 04/05/2010 
// Design Name: 
// Module Name:    hex2_7seg 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: Hex to 7 Seg Decoder
//
// Dependencies: none
//
// Revision: 1.0
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module hex2_7seg(
    input D,
    input C,
    input B,
    input A,
    output aSeg,
    output bSeg,
    output cSeg,
    output dSeg,
    output eSeg,
    output fSeg,
    output gSeg,
	 output dp
    );


assign aSeg = ~(
           (~D & ~C & ~B & ~A) |//0
           (~D & ~C &  B & ~A) |//2
           (~D & ~C &  B &  A) |//3
           (~D &  C & ~B &  A) |//5
           (~D &  C &  B & ~A) |//6
           (~D &  C &  B &  A) |//7
           ( D & ~C & ~B & ~A) |//8
           ( D & ~C & ~B &  A) |//9
           ( D & ~C &  B & ~A) |//A
           ( D &  C & ~B & ~A) |//C
           ( D &  C &  B & ~A) |//E
           ( D &  C &  B &  A)  //F
			  );
assign bSeg = ~(
           (~D & ~C & ~B & ~A) |//0
           (~D & ~C & ~B &  A) |//1
           (~D & ~C &  B & ~A) |//2
           (~D & ~C &  B &  A) |//3
           (~D &  C & ~B & ~A) |//4
           (~D &  C &  B &  A) |//7
           ( D & ~C & ~B & ~A) |//8
           ( D & ~C & ~B &  A) |//9
           ( D & ~C &  B & ~A) |//A
           ( D &  C & ~B &  A)  //D
			  );
assign cSeg = ~(
           (~D & ~C & ~B & ~A) |//0
           (~D & ~C & ~B &  A) |//1
           (~D & ~C &  B &  A) |//3
           (~D &  C & ~B & ~A) |//4
           (~D &  C & ~B &  A) |//5
           (~D &  C &  B & ~A) |//6
           (~D &  C &  B &  A) |//7
           ( D & ~C & ~B & ~A) |//8
           ( D & ~C & ~B &  A) |//9
           ( D & ~C &  B & ~A) |//A
           ( D & ~C &  B &  A) |//B
           ( D &  C & ~B &  A)  //D
			  );
assign dSeg = ~(
           (~D & ~C & ~B & ~A) |//0
           (~D & ~C &  B & ~A) |//2
           (~D & ~C &  B &  A) |//3
           (~D &  C & ~B &  A) |//5
           (~D &  C &  B & ~A) |//6
           ( D & ~C & ~B & ~A) |//8
           ( D & ~C & ~B &  A) |//9
           ( D & ~C &  B &  A) |//B
           ( D &  C & ~B & ~A) |//C
           ( D &  C & ~B &  A) |//D
           ( D &  C &  B & ~A)  //E
			  );
assign eSeg = ~(
           (~D & ~C & ~B & ~A) |//0
           (~D & ~C &  B & ~A) |//2
           (~D &  C &  B & ~A) |//6
           ( D & ~C & ~B & ~A) |//8
           ( D & ~C &  B & ~A) |//A
           ( D & ~C &  B &  A) |//B
           ( D &  C & ~B & ~A) |//C
           ( D &  C & ~B &  A) |//D
           ( D &  C &  B & ~A) |//E
           ( D &  C &  B &  A)  //F
			  );
assign fSeg = ~(
           (~D & ~C & ~B & ~A) |//0
           (~D &  C & ~B & ~A) |//4
           (~D &  C & ~B &  A) |//5
           (~D &  C &  B & ~A) |//6
           ( D & ~C & ~B & ~A) |//8
           ( D & ~C & ~B &  A) |//9
           ( D & ~C &  B & ~A) |//A
           ( D & ~C &  B &  A) |//B
           ( D &  C & ~B & ~A) |//C
           ( D &  C &  B & ~A) |//E
           ( D &  C &  B &  A)  //F
			  );
assign gSeg = ~(
           (~D & ~C &  B & ~A) |//2
           (~D & ~C &  B &  A) |//3
           (~D &  C & ~B & ~A) |//4
           (~D &  C & ~B &  A) |//5
           (~D &  C &  B & ~A) |//6
           ( D & ~C & ~B & ~A) |//8
           ( D & ~C & ~B &  A) |//9
           ( D & ~C &  B & ~A) |//A
           ( D & ~C &  B &  A) |//B
           ( D &  C & ~B &  A) |//D
           ( D &  C &  B & ~A) |//E
           ( D &  C &  B &  A)  //F
			  );
assign dp = 1;			  
endmodule
