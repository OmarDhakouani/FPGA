`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 02:10:20 PM
// Design Name: 
// Module Name: clock_divider
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


module clock_divider(
    input  clk_in,
    output reg clk_out,
    input  reset,
    input  [31:0] ratio
    );
  reg [31:0] counter;
  
  always @ (posedge clk_in, negedge reset) 
    if(reset==0)begin
      counter<=32'd0;
      clk_out=0;
    end
    else
      if (counter==ratio-1) begin
        $display("ratio-1 = counter:%d",counter);
        clk_out<=0;
        counter<=32'd0;
      end
      else 
        if(counter==(ratio/2)-1) begin
          $display("ratio/2 -1 = counter:%d",counter);
          clk_out<=1;
          counter<=counter+1;
        end 
        else
          counter<=counter+1;
endmodule
