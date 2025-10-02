// Part B - NANDusingNOR_tb.v
// Testbench for the NANDusingNOR module

`timescale 1ns/1ns
`include "NANDusingNOR.v"

module NANDusingNOR_tb;

reg A, B; // Testbench inputs
wire Q; // Testbench output

// Instantiate the NANDusingNOR module
NANDusingNOR uut (A, B, Q);

initial begin
    $dumpfile("NANDusingNOR_tb.vcd");
    $dumpvars(0, NANDusingNOR_tb);

    // Test all input combinations
    A = 0; B = 0; #20; // Expect Q = 1
    A = 0; B = 1; #20; // Expect Q = 1
    A = 1; B = 0; #20; // Expect Q = 1
    A = 1; B = 1; #20; // Expect Q = 0

    $display("Complete!");
end

endmodule
