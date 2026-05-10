`timescale 1ns / 1ps



module mux7(
input logic [7:0] in1,
input logic [7:0] in2,
input logic [7:0] in3,
input logic [7:0] in4,
input logic [7:0] in5,
input logic [7:0] in6,
input logic [7:0] in7,
input logic [2:0] sel,
output logic [7:0] out
    );
    
    always_comb begin
        case(sel[2:0])
            3'b000: out = in1;
            3'b010: out = in2;
            3'b011: out = in3;
            3'b100: out = in4;
            3'b101: out = in5;
            3'b110: out = in6;
            3'b111: out = in7;
            default: out = in1;
        endcase
        end
    
endmodule
