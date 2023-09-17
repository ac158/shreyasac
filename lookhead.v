`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2023 00:51:29
// Design Name: 
// Module Name: lookhead
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


module lookhead(input A,
  input B,
  input Cin, 
  output wire Sum, 
  output wire Cout  );
   wire G = A & B;
  wire P = A ^ B;
  assign Cout = G | (P & Cin);
  assign Sum = P ^ Cin;
endmodule
