`timescale 1ns / 1ps

module substr_xor(
input logic [7:0] b,
input logic [2:0] sel,
output logic cout,
output logic [7:0] bsub
    );
    always_comb
    begin
    
    if(sel[2:0] == 3'b111)
    begin
       bsub = ~b;
       cout = 1;
    end else if(sel[2:0] == 3'b101) begin 
    bsub = b;
    cout = 0;
    end
    else begin
    bsub = b;
    cout = 0;
    end
    end
endmodule
