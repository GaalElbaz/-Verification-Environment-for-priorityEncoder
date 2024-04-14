`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Inteface Name: ha_if
//////////////////////////////////////////////////////////////////////////////////
// Define an interface for the half adder module
interface pe_if;
    logic [7:0] in;
    logic [2:0] out;
    logic valid;
    
    // Define the ports
    modport DUT (
        input in,
        output out,valid
        );
endinterface