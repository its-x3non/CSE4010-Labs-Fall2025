// wireTest_tb.v

`timescale 1ns / 1ns
`include "wireTest.v"

module wireTest_tb;

reg A;
wire B;
wire C;

wireTest uut (A, B, C); // Instantiate the Unit Under Test (UUT)

initial begin
    $dumpfile("wireTest_tb.vcd"); // VCD file name
    $dumpvars(0, wireTest_tb); // Dump all variables

    A = 0; // Initial value
    #20 // Wait 20 time units

    A = 1; // Set A to 1
    #20 //  Wait 20 time units

    A = 0; // Set A to 0
    #20 //  Wait 20 time units 

    A = 1; // Set A to 1
    #20 // Wait 20 time units

    $display("Wire test complete!");
end

endmodule
