`timescale 1ns / 1ps


module ROM(
input logic [2:0] in,
output logic [7:0] opcode
    );
    always_comb begin
        case(in)
            3'b000: opcode= 8'b1011_0000;
            3'b001: opcode= 8'b1111_0000;
            3'b010: opcode= 8'b0000_0010;
            3'b011: opcode= 8'b0000_0011;
            3'b100: opcode= 8'b0000_0100;
            3'b101: opcode= 8'b0000_0101;
            3'b110: opcode= 8'b0000_0110;
            3'b111: opcode= 8'b0000_0111;
            default: opcode = 8'b0;
        endcase
        end
    
    
endmodule
