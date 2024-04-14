`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: pe_tb
//////////////////////////////////////////////////////////////////////////////////


module pe_tb;
    pe_if peif();
    priority_encoder dut(peif.DUT);
    
    environment env;
    
    initial begin
        env = new(peif);
        env.gen.num_of_tests = 10;
        env.run();
    end

endmodule