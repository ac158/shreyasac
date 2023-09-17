`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2023 09:45:28
// Design Name: 
// Module Name: lookreg
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


module lookreg(input clk, input rst, input [31:0]a, input [31:0] b,
input cin,output reg [31:0] sum, output reg cout);
reg [31:0] ar;
reg [31:0] br;
reg cnr;
wire [31:0] sr;
wire ctr;
lookhead32 l1(.A(ar), .B(br), .Cin(cnr), .Sum(sr), .Cout(ctr));
always @ (posedge clk or posedge rst) begin
if(rst) begin
ar <= 32'b0;
br <= 32'b0;
cnr <= 1'b0;
end 
else
begin
ar <= a;
br <= b;
cnr <= cin;
sum <= sr;
cout <= ctr;
end
end

endmodule
