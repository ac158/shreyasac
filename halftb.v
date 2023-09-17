`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2023 17:06:52
// Design Name: 
// Module Name: halftb
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


module halftb( );
reg a;
reg b;
wire sum;
wire carry;
half h1(.a(a), .b(b), .sum(sum), .carry(carry));
initial begin
        $monitor("a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry);
        #10;
assign a=1'b0;
assign b=1'b0;
#20;
assign a=1'b0;
assign b=1'b1;
#30;
assign a=1'b1;
assign b=1'b0;
#40;
assign a=1'b1;
assign b=1'b1;

end
endmodule
