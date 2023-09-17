`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2023 12:06:16
// Design Name: 
// Module Name: mul81
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

module mul81(
    input [7:0] a,
    input [7:0] b,
    input clk,
    input rst,
    output reg [15:0]p
    );
    reg [7:0]ar, br;
    wire [15:0]pr;
    mul8 mu(.num1(ar), .num2(br), .result(pr));   
    always @ (posedge clk or posedge rst)
    begin
            if(rst)
            begin
            ar <= 8'b00000000;
            br <= 8'b00000000;
            p <= 15'b0;
            end
            
         else
         
            begin
            ar <=a;
            br <=b;
            p <=pr;
            end
     end
endmodule
