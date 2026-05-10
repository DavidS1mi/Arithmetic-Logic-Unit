`timescale 1ns / 1ps



module adder(
    input logic [3:0] a,
    input logic [3:0] b,
    input logic ci,
    output logic cout,
    output logic [3:0] s
    );
    
    always_comb 
    begin
    {cout, s} = a + b + ci;
    end
endmodule
