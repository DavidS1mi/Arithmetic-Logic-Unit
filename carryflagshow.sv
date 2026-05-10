`timescale 1ns / 1ps

module carryflagshow(
input logic cin,
input logic sel,
output logic CF
    );
    assign CF = (sel == 1)? cin: 0;
endmodule
