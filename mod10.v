`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2023 08:26:54
// Design Name: 
// Module Name: mod10
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


module mod10(
    input clk,
    input rst,
    output reg [3:0] count
    );
    always @(posedge clk or posedge rst)
    if(rst)
    count<=4'b0000;
    else
    count<=(count+1)%10;
endmodule
