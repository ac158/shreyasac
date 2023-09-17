`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2023 14:19:28
// Design Name: 
// Module Name: d_ff
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


module d_ff(
    input a,
    input b,
    input clk,
    input rst,
    output reg sum,
    output reg carry
    );
    wire S_f,cout_f;
    reg A_r,B_r;
    half h1(.a(A_r),.b(B_r),.sum(S_f),.carry(cout_f));
    
    always @(posedge clk,posedge rst)
     begin
     if(rst)
        begin
          A_r <= 1'b0;
          B_r <= 1'b0;
          sum<=0;
         carry<=0;
        end 
      else
        begin
          A_r <= a;
          B_r <= b;
          sum<=S_f;
          carry<=cout_f;
         end
      end      
endmodule
