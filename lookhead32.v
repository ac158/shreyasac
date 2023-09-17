`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2023 00:55:08
// Design Name: 
// Module Name: lookhead32
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

module lookhead32 (
    input wire [31:0] A,
    input wire [31:0] B,
    input wire Cin,
    output wire [31:0] Sum,
    output wire Cout
);

wire [31:0] G;
wire [31:0] P;
wire [31:0] C;

assign G = A & B;
assign P = A ^ B;
assign C[0] = Cin;

genvar i;
generate
    for (i = 0; i < 32; i = i + 1) begin 
        if (i > 0) begin
            assign C[i] = G[i-1] | (P[i-1] & C[i-1]);
        end
        assign Sum[i] = A[i] ^ B[i] ^ C[i];
    end
endgenerate

assign Cout = C[31];

endmodule

