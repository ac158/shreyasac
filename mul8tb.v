`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2023 08:29:46
// Design Name: 
// Module Name: mul8tb
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

module mul8tb;
   reg [7:0] a;
   reg clk ,rst;
   reg [7:0] b;
   wire [15:0] p ;
   
   mul81  m1 (.a(a), .b(b), .clk(clk), .rst(rst), .p(p));
  
   initial
    begin
     clk = 0;
     rst = 1;
    end
    
    always
    begin
    #10 clk = ~clk;
    #50 rst = 0;
    end
    

  // Test stimulus
  initial begin
    

    // Test case 1
    #10 a = 8'b00000000;
    #10 b = 8'b00000000;
    //$display("a = %b, b = %b, p = %b", a, b, p);

    // Test case 2
    #60 a = 8'b00000001;
    #60 b = 8'b00000001;
    //$display("a = %b, b = %b, p = %b", a, b, p);
    
    // Test case 3
    #80 a = 8'b00011001;
    #80 b = 8'b00000101;
    //$display("a = %b, b = %b, p = %b", a, b, p);

    // Finish simulation
    #300 $finish;
  end

  
endmodule
