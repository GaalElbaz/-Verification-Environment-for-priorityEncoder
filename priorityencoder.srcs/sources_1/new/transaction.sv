`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: transaction
//////////////////////////////////////////////////////////////////////////////////


class transaction;
    // declaring data and control signals   
    rand bit [7:0] in;
    bit [2:0] out;
    bit valid;

    function transaction copy();
        copy = new();
        copy.in = this.in;
        copy.out = this.out;
        copy.valid = this.valid;
    endfunction
    
    function void display(string name);
                $display("[%s] in : %b out : %b valid : %b ", name, in, out, valid);  
    endfunction
endclass
