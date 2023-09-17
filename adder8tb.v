`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2023 15:32:18
// Design Name: 
// Module Name: adder8tb
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


module adder8tb();

    reg [7:0] a;
    reg [7:0] b;
    reg cin;
    wire [7:0] sum;
    wire [7:0] carry;

    adder8 a1 (.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));

    initial begin
        $display("Testing 8-Bit Full Adder");
        $monitor("a = %b, b = %b, cin = %b, sum = %b, carry = %b", a, b, cin, sum, carry);

        a = 8'b00000000; b = 8'b00000000; cin = 0; #10;
        a = 8'b11111111; b = 8'b00000001; cin = 0; #10;
        a = 8'b11001100; b = 8'b00110011; cin = 1; #10;
        a = 8'b00001100; b = 8'b11110000; cin = 1; #10;
        a = 8'b11001111; b = 8'b00111001; cin = 0; #10;
        a = 8'b11011100; b = 8'b00110111; cin = 1; #10;
        

        $finish;
    end
    
endmodule
