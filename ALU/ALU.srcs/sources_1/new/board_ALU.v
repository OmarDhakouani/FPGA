`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 08:00:24 PM
// Design Name: 
// Module Name: board_ALU
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


module board_ALU(
    input [15:0] sw,
    output [7:0] led,
    output [3:0] an
    );
  
  assign an=4'b1111;
  
  ALU the_ALU(
    .a(sw[7:4]),
    .b(sw[3:0]),
    .op(sw[15:12]),
    .result(led)
  );
endmodule


