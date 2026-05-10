`timescale 1ns / 1ps

module adder_8bit(
input logic [3:0] a1,
input logic [3:0] b1,
input logic [3:0] a2,
input logic [3:0] b2,
input logic ci,
output logic [3:0] sl,
output logic [3:0] sh,
output logic cout
    );
    
    logic w;
    
    adder adderl(
    .a(a2),
    .b(b2),
    .ci(ci),
    .cout(w),
    .s(sl)
    );
    
    adder adderh(
    .a(a1),
    .b(b1),
    .ci(w),
    .cout(cout),
    .s(sh)
    );
    
    
    
endmodule
