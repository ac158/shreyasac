`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2023 08:23:40
// Design Name: 
// Module Name: gating_tb
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


module gating_tb();
reg en;
reg rst;
reg clk;
reg data;
wire q1;
wire q2;
clk_gating uut(.en(en), .rst(rst), .clk(clk), .data(data), .q1(q1), .q2(q2), .clkg(clkg));
always begin
#5 clk <= ~clk;
#500 $finish;
end
always begin
#10 en <= ~en;
#500 $finish;
end
always begin 
#10 data <= ~data;
#500 $finish;
end
initial begin
rst <= 1'b1;
clk <= 1'b0;
en <= 1'b0;
data <= 1'b0;
#20
rst <= 1'b0;
#500 $finish;
end
always begin
#9 clk <= ~clk;
end
always begin
#10 en <= ~en;
end
always begin 
#10 data <= ~data;
end
endmodule
