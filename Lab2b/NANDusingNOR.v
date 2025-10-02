// Part B - NANDusingNOR.v
// This module implements a NAND gate using only NOR gates.

module NORgate (A, B, Q);
    input A, B; // Inputs
    output Q; // Output
    assign Q = ~(A | B); // NOR operation
endmodule

// NAND gate using NOR gates
module NANDusingNOR (A, B, Q);
    input A, B; // Inputs
    output Q; // Output

    wire C, D, E, F; // Intermediate wires
    NORgate u1(A, A, C); // First NOR gate
    NORgate u2(B, B, D); // Second NOR gate (inverts A)
    NORgate u3(C, D, E); // Third NOR gate (inverts B)
    NORgate u4(E, E, F); // Fourth NOR gate

    assign Q = F; // Final output
endmodule
