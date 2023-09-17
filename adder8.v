`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2023 12:50:33
// Design Name: 
// Module Name: adder8
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


module adder8(
input  a,
input  b,
input cin,
output  sum,
output  carry
    );
    assign sum = a^b^cin;
    assign carry = (a&b)|(b&cin)|(a&cin);
endmodule
