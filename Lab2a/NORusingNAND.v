// Part A - NORusingNAND.v
// 2-input NOR gate using only NAND gates

module NANDgate (A,B,Q); 
    input A, B; // 2-input NAND gate
    output Q; // 1-output
    assign Q = !(A & B); // NAND operation
endmodule

// 2-input NOR gate using only NAND gates
module NORusingNAND (A,B,Q);
    input A, B; // 2-input NOR gate
    output Q; // 1-output

    wire C, D, E, F; // intermediate wires
    NANDgate u1(A, A, C); // NOT A
    NANDgate u2(B ,B, D); // NOT B
    NANDgate u3(C, D, E); // A + B
    NANDgate u4(E, E, F); // NOT (A + B)

    assign Q=F; // final output
endmodule
