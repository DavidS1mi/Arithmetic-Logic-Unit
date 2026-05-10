`timescale 1ns / 1ps

module ALU_TOP(
input logic [7:0] a,
input logic [7:0] b,
input logic [2:0] rom,
output logic cf,
output logic sf,
output logic [7:0] result
    );
    
    logic [7:0] w1;
    logic [7:0] w2;
    logic [7:0] w3;
    logic [7:0] w4;    
    logic [7:0] w5;
    logic [7:0] w6;
    logic [7:0] w7;
    logic [7:0] w8;
    logic w9;
    
    addertop add_sub(
    .a1(a[7:4]), 
    .a2(a[3:0]), 
    .sel(w1[7:5]),
    .b(b),  
    .op(w2),
    .cout(w9)
    );
    
    not8bit nota(
    .in(a),
    .out(w4)
    );
    
    not8bit notb(
    .in(b),
    .out(w8)
    );
    
    Xor8bit xorab( 
    .a(a),  
    .b(b),  
    .out(w7)
    
    );
    
    shlA shla(
    .a(a),  
    .b(b),  
    .out(w6)
    
    );
    
    shrA shra(
    .a(a),  
    .b(b),  
    .out(w3)
    
    );
    
    LogicAnd andlogic(
    .a(a),
    .b(b),
    .out(w5)
    );
    
    
    mux7 mux7(
    
   .in1(w2),
   .in2(w3),
   .in3(w4),
   .in4(w5),
   .in5(w6),
   .in6(w7),
   .in7(w8),
   .sel(w1[2:0]),
   .out(result)
    
    );
    
    ROM Rom(
    .in(rom),    
    .opcode(w1)
    );
    
    carryflagshow carryf(
    .cin(w9),
    .sel(w1[4]),
    .CF(cf) 
    );
    
    signflagshow signf(
    .in(w2),
    .sel(w1[4]),
    .SF(sf)
    );
    
endmodule
