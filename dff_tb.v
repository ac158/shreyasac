`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2023 14:43:17
// Design Name: 
// Module Name: dff_tb
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


module dff_tb();
reg a,b;
wire sum,carry;
reg clk,rst;
d_ff d1 (.a(a),.b(b),.clk(clk),.rst(rst),.sum(sum),.carry(carry));
initial
begin
clk=1'b0;
forever #5 clk =~clk;
end
initial
begin
rst=1;
#50 rst=0;
#500 $finish;
end
initial
 begin
   a = 1'b0;
   b = 1'b0;
#500 $finish;
end
always
begin
#10 a=~a;
end
always
begin
#20 b=~b;
end
endmodule
