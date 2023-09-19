`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2023 08:37:32
// Design Name: 
// Module Name: state
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


module state(input clk, input rst, input x, input  [1:0] ps, output reg  [1:0] ns, output reg y);
always @ (posedge clk or posedge rst) begin
if (rst) begin
y<= 1'b0;
ns<= 2'b00;
end
else begin
case (ps)
2'b00 : ns<= (x == 0) ? 2'b00 : 2'b01;
2'b01 : ns<= (x == 0) ? 2'b11 : 2'b01;
2'b10 : ns<= (x == 0) ? 2'b01 : 2'b00;
2'b11 : ns<= (x == 0) ? 2'b10 : 2'b11;
endcase
end
end
always @(*) begin
 case(ns)
 2'b00:y<=1'b1;
 2'b01:y<=1'b1;
 2'b10:y<=1'b0;
 2'b11:y<=1'b0;
 endcase
 end
endmodule
