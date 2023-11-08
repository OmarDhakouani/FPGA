`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:06:56 04/06/2010 
// Design Name: 
// Module Name:    AdderWithDisplay
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
module AdderWithDisplay(
    input [3:0] A,           // Switches SW7-SW4 
    input [3:0] B,           // Switches SW3-SW0
    input ClockIn,           // 100MHz Clock
    input[4:0] Push,         // Push Buttons
    output [6:0] Display,    // Display Segments
    output reg [3:0] Anodes, // Anode Bits 
    output reg [7:0] LEDs,   // LEDs
    output decp              // decimal point
    )/* synthesis syn_hier = "hard" */;
	 wire [3:0] Sum;          
	 tri  [3:0] DecoderInput;  
	 wire Cout;
	 wire AnodeClock;
	 wire a,b,c; // Interconnecting wires
	 
  FourBitAdder adder(A,B,Sum,Cout);
  FourBitTriState TriA(A,~Anodes[3],DecoderInput);
  FourBitTriState TriB(B,~Anodes[2],DecoderInput);
  FourBitTriState TriCo(Cout?4'b0001:4'b0000,~Anodes[1],DecoderInput);
  FourBitTriState TriSum(Sum,~Anodes[0],DecoderInput);
  hex2_7seg Decoder(
						  DecoderInput[3],   // input D
						  DecoderInput[2],   // input C
						  DecoderInput[1],   // input B
						  DecoderInput[0],   // input A
						  Display[0],        // seg a
						  Display[1],        // seg b
						  Display[2],        // seg c
						  Display[3],        // seg d
						  Display[4],        // seg e
						  Display[5],        // seg f
						  Display[6],        // seg g
						  decp
						  );
  
	 FreqDivider div1(ClockIn,32'd416_667,a);  // ClockIn = 100MHz
	 FreqDivider div2(a,32'd240,b);           //        a = 240Hz
	                                         //         b = 1Hz
	 
	 //The Center Pushbutton selects 240Hz or 1Hz anode frequency
	 mux2 myMux(Push[0],a,b,AnodeClock);  
  
	 initial 
	   begin
	     Anodes=4'b0111;             // Leftmost display goes first
		 LEDs[0]=1'b0;               // Turn LED0 Off
	   end
	 
	 always @ (posedge AnodeClock)
	   begin
		  LEDs[0]=~LEDs[0];            // Blink LED0 @ 1/2 Anode frequency
		  case(Anodes)                 // Rotate bits @ Anode frequency 
		 	 4'b0111 : Anodes=4'b1011;
	 		 4'b1011 : Anodes=4'b1101;
 			 4'b1101 : Anodes=4'b1110;
			 4'b1110 : Anodes=4'b0111;
		  endcase
		end
endmodule

