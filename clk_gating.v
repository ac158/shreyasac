`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2023 08:06:58
// Design Name: 
// Module Name: clk_gating
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


module clk_gating(input en, input rst, input clk, input data,
output reg clkg, output reg q1, output reg q2);

always @ (*) begin
clkg = q1 & clk;
end
always @(posedge clk or posedge rst)begin
if(rst) begin
q1<=1'b0;
end
else begin
q1 <= en;
end 
end
always @(posedge clkg or posedge rst)begin
if(rst)begin
q2 <= 1'b0;
end
else begin
q2 <= data;
end
end
endmodule
