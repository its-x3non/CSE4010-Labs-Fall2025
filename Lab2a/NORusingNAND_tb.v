// Part A - NORusingNAND_tb.v
// Testbench for 2-input NOR gate using only NAND gates

`timescale 1ns/1ns
`include "NORusingNAND.v"

module NORusingNAND_tb;

reg A, B; // inputs
wire Q; // output

// Instantiate the NORusingNAND module
NORusingNAND uut(A, B, Q);

initial begin
    // Test all input combinations
    $dumpfile("NORusingNAND_tb.vcd");
    $dumpvars(0, NORusingNAND_tb);
    A = 0; B = 0; #20; // Expected Q=1
    A = 0; B = 1; #20; // Expected Q=0
    A = 1; B = 0; #20; // Expected Q=0
    A = 1; B = 1; #20; // Expected Q=0
    $display("Complete!");
end

endmodule
