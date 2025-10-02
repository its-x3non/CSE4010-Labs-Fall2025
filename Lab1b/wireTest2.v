// wireTest2.v - Part B

module wireTest2 (W,X,Y,Z);

    input W; // input W
    input X; // input X
    output Y; // output Y
    output Z; // output Z

    assign Y = !X; // Y is the NOT of X
    assign Z = !Y; // Z is the NOT of Y

endmodule