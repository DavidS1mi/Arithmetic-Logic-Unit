`timescale 1ns / 1ps

module addertop(
input logic [3:0] a1,
input logic [3:0] a2,
input logic [2:0] sel,
input logic [7:0] b,
output logic [7:0] op,
output logic cout
    );
   logic [7:0] w1;
   logic [3:0] w2; 
   logic [3:0] w3;
   logic wc; 
   
   substr_xor scadere(
    .b(b),
    .sel(sel),
    .cout(wc),
    .bsub(w1)
    );
    
    adder_8bit rezultat(
    .a1(a1),
    .b1(w1[7:4]),
    .a2(a2),
    .b2(w1[3:0]),
    .sl(w2),
    .sh(w3),
    .ci(wc),
    .cout(cout)
    );
    
    assign op = {w3,w2};
    
endmodule
