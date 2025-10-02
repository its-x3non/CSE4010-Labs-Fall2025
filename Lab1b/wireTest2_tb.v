// wireTest2_tb.v - Part B

`timescale 1ns / 1ns
`include "wireTest2.v"

module wireTest2_tb;

reg W;
reg X;
wire Y;
wire Z;

// Create instance whrere W and X are inputs, Y and Z are outputs
wireTest2 uut (W,X,Y,Z);

initial begin
    $dumpfile("wireTest2.vcd");
    $dumpvars(0, wireTest2_tb);

    // Test all combinations of W and X
    // Assign W = 0, X = 0 and Wait 20 nanoseconds
    W = 0; X = 0; 
    #20;

    // Assign W = 0, X = 1 and Wait 20 nanoseconds
    W = 0; X = 1; 
    #20;

    // Assign W = 1, X = 0 and Wait 20 nanoseconds
    W = 1; X = 0; 
    #20;

    // Assign W = 1, X = 1 and Wait 20 nanoseconds
    W = 1; X = 1; 
    #20;

    $display("Wire Test Complete!");
end

endmodule