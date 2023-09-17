`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2023 08:10:18
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb( );
reg clk;
reg rst;
reg  [3:0]a;
reg  [3:0]b;
reg cin;
wire[3:0]sum;
wire carry;
adder_ff a1(.clk(clk), .rst(rst), .a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));
initial begin
clk<=1'b0;
forever #10 clk<=~clk;
end
initial begin
rst<=1'b1;
#50 rst<=1'b0;
#500 $finish;
end
initial
begin
a<=4'b0000;
b<=4'b0000;
cin<=1'b0;
#500 $finish;
end
always
begin
#20 a<=~a;
end
always
begin
#10 b<=~b;
end
always
begin
#5 cin<=~cin;
end
endmodule
