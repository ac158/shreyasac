`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2023 15:27:32
// Design Name: 
// Module Name: addertb
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


module addertb();
reg [3:0]a;
reg [3:0]b;
reg cin;
wire [3:0] sum;
wire [3:0] carry;
pipefull p1(.a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));
initial begin
        $monitor("a=%b, b=%b, cin=%cin, sum=%b, carry_out=%b", a, b, cin, sum, carry_out);
        assign a=4'b1100;
        assign b=4'b1010;
        end
endmodule
