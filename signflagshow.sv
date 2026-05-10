`timescale 1ns / 1ps


module signflagshow(
input logic [7:0] in,
input logic sel,
output logic SF
    );
    
     assign SF = (sel == 1)? in[7]: 0;  
    
endmodule
