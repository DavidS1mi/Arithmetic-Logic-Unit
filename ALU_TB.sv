`timescale 1ns / 1ps

module ALU_TB();

    logic [7:0] a;
    logic [7:0] b;
    logic [2:0] rom;
    logic cf;
    logic sf;
    logic [7:0] result;
    
    
    ALU_TOP dut (
        .a(a),
        .b(b),
        .rom(rom),
        .cf(cf),
        .sf(sf),
        .result(result)
    );

  
    initial begin
        a = 0; 
        b = 0; 
        rom = 3'b000;
        #10;
        //SUB NEGATIVE (10 - 15 = -5)
        rom = 3'b001;
        a = 8'd10; 
        b = 8'd15;
        #10; 
        // ADD (20 + 5 = 25)
        rom = 3'b000;
        a = 8'd20; 
        b = 8'd5;
        #10;
        // SHIFT RIGHT (100 >> 1 = 50)
        rom = 3'b010;
        a = 8'd100; 
        b = 8'd1;  
        #10;
        // NOT A
        rom = 3'b011;
        a = 8'b0000_1111;
        b = 8'd0;
        #10;
        // AND
        rom = 3'b100;
        a = 8'b1111_0000;
        b = 8'b1010_1010;
        #10;
        // SHIFT LEFT (5 << 2 = 20)
        rom = 3'b101;
        a = 8'd5;
        b = 8'd2; 
        #10;
        //XOR
        rom = 3'b110;
        a = 8'b1111_1111;
        b = 8'b1010_1010;
        #10;
        // NOT B
        rom = 3'b111;
        a = 8'd0;
        b = 8'b0101_0101;
        #10;
        // SUB (20 - 5 = 15)
        rom = 3'b001;
        a = 8'd20; 
        b = 8'd5; 
        #10;
        // ADD (243 + 135 = 378)
        rom = 3'b000;
        a = 8'd243; 
        b = 8'd135; 
        #10;
        $stop;
    end

endmodule
