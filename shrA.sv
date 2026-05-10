`timescale 1ns / 1ps

module shrA(
input logic [7:0] a,
input logic [7:0] b,
output logic [7:0] out
    );
    
    assign out = a>>b[2:0];
endmodule
