`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2023 09:35:00
// Design Name: 
// Module Name: statetest
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


module statetest;
  reg clk, rst, x;
  reg [1:0] ps;
  wire [1:0] ns;
  wire y;
  state uut (
    .clk(clk),
    .rst(rst),
    .x(x),.ps(ps), .ns(ns),
    .y(y)
  );
  always begin
#5 clk <= ~clk; 
  end
    initial begin
    rst = 1'b1;
    clk <= 1'b0;
    x<=1'b0;
    #10;
    rst = 1'b0;
    #100
    x<=1'b1;
    #100; 
    $finish; 
  end
  always begin
  #20
  ps<=2'b00;
  #20
  ps<=2'b01;
  #20
  ps<=2'b10;
  #20
  ps<=2'b11;
  end 
endmodule
