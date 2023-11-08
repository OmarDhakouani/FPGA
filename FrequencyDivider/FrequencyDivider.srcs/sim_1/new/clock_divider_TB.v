`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 02:36:47 PM
// Design Name: 
// Module Name: clock_divider_TB
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


module clock_divider_TB();
  reg clk_fast, reset;
  wire clk_slow;
  
  always #5 clk_fast = ~clk_fast;
  /// try 300_000
  clock_divider DUT_divider(
    .clk_in(clk_fast),
    .clk_out(clk_slow),
    .reset(reset),
    .ratio(32'd100_000)
  ); // try 3

  initial begin
    clk_fast=0; reset=0; #999_996;
    reset=1; 
    #10_000_000;
    $stop;
  end
endmodule
