`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: priority_encoder
//////////////////////////////////////////////////////////////////////////////////


module priority_encoder(pe_if.DUT peif);
    
    
    always_comb begin
        peif.out = 0;
        peif.valid = 0;
        for(int i = 0; i < 8; i++) begin
            if(peif.in[i] == 1'b1) begin
                peif.valid = 1;
                peif.out = i;
                break;
            end
        end
    end
endmodule
