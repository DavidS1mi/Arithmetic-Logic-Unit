`timescale 1ns / 1ps


module not8bit(
input logic [7:0] in,
output logic [7:0] out
    );
    
    assign out = ~in;
endmodule
