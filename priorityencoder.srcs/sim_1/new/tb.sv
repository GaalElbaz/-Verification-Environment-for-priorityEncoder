`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////


module tb();

    logic [7:0] in;
    logic [2:0] out;
    logic valid;
    
    priority_encoder dut(.in(in), .valid(valid), .out(out));
    initial begin
        in = 8'b01101101;
        #100;
        in = 8'b01100000;
        #100;
        in = 8'b10000000;
        #100
        in = 8'b00000000;
    end
endmodule
