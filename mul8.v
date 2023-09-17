`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module mul8(
    input [7:0] num1, // 8-bit input number 1
    input [7:0] num2, // 8-bit input number 2
    output reg  [15:0]result // 16-bit result (to avoid overflow)
);

    reg [7:0] multiplier;
    reg [15:0] temp_result;
    integer i;

    always @(*) begin
        temp_result = 8'b0;
        multiplier =8'b0;
        multiplier = num2;

        for (i = 0; i < 8; i = i + 1) begin
            if (multiplier[0] == 1'b1) begin
                temp_result = temp_result + (num1 << i);
            end
            multiplier = multiplier >> 1;
        end

        result = temp_result;
    end

endmodule


