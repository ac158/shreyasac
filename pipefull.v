`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2023 15:12:03
// Design Name: 
// Module Name: pipefull
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


module pipefull(input  [3:0]a,
input  [3:0]b,
input cin,
output  [3:0]sum,
output  carry);
wire ca[2:0];
adder8 a1(.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .carry(ca[0]));
adder8 a2(.a(a[1]), .b(b[1]), .cin(ca[0]), .sum(sum[1]), .carry(ca[1]));
adder8 a3(.a(a[2]), .b(b[2]), .cin(ca[1]), .sum(sum[2]), .carry(ca[2]));
adder8 a4(.a(a[3]), .b(b[3]), .cin(ca[2]), .sum(sum[3]), .carry(carry));
endmodule
