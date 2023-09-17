`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2023 08:30:54
// Design Name: 
// Module Name: mod10tb
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


module mod10tb();
reg clk;
reg rst;
wire [3:0] count;
mod10 m1(.clk(clk), .rst(rst), .count(count));
initial
begin
 rst<=1'b1;
 clk<=1'b0;
 #5 rst<=1'b0;
 forever #5 clk<=~clk;
 #300 $finish;
 end
endmodule
