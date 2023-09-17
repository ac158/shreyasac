`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2023 01:09:07
// Design Name: 
// Module Name: look
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


module look;
reg clk;
reg rst;
reg [31:0] A;
reg [31:0] B;
reg Cin;
wire [31:0] Sum;
wire Cout;

lookreg l2(.clk(clk), .rst(rst), .a(A), .b(B), .cin(Cin), .sum(Sum), .cout(Cout));
initial begin
    clk <= 1'b0;
    forever #10 clk = ~clk;
    end
    initial begin
    rst = 1'b1;
    #30 rst = 1'b0;
    #1000 $finish;
    end
    initial begin
    A = 32'h0;
    B = 32'h0;
    Cin = 1'b0;
     #1000 $finish;
    end
    always 
    begin
    #40 A = ~A;
    end
    always
    begin
    #20 B = ~B;
    end
    always
    begin
    #10
    Cin = ~Cin;
end

endmodule
