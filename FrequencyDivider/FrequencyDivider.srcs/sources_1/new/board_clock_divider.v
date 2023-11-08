`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 09:27:10 PM
// Design Name: 
// Module Name: board_clock_divider
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module board_clock_divider(
    input clk,
    output led,
    output [3:0] an,
    output [6:0] seg,
    output dp
    );
  wire low_freq;
  assign an = 4'b1110;
  assign seg = low_freq==1 ? 7'b1111001 : 7'b1000000; 
  assign dp = 1;  
  assign led = clk;
  clock_divider the_divider(
    .clk_in(clk),
    .clk_out(low_freq),
    .reset(1),
    .ratio(32'd100_000_000)
  );
endmodule
