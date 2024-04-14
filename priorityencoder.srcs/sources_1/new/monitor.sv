`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Class Name: monitor
//////////////////////////////////////////////////////////////////////////////////


class monitor;
    transaction data;
    mailbox #(transaction) mbx; // monitor to scoreboard
    virtual pe_if peif;
    
    event dut_ready;
        
    // custome constructor 
    function new (mailbox #(transaction) mbx);
        this.mbx = mbx;
    endfunction
    
    task run();
        data = new();
        forever begin
            #30;
            data.in = peif.in;
            data.out= peif.out;
            data.valid = peif.valid;
            mbx.put(data);          
            data.display("MON");         
        end
    endtask;
    
endclass