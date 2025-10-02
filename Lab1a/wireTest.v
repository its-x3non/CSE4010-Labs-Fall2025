// wireTest.v

module wireTest (A,B,C);

    input A; // Input is A
    output B; // Output is B
    output C; // Output is C

    assign B = A; // Assigns A to B
    assign C = !A; // Assigns NOT A to C

endmodule