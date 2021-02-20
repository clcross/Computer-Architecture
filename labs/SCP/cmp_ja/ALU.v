module ALU(A, B, op, out, eq);
    input [63:0] A; 
    input [63:0] B; 
    input op; //opcode 
    output [63:0] out; // output
    output eq; // equality bit

    wire [63:0] sum;
    wire [63:0] andOut;
    
    // if opcode is 0 then out = A + B if opcode is 1 then out = A AND B if A==B then eq is 1 if A!=B then eq is 0
    equals equal(A, B, eq);
    rippleAdder Adder(A, B, sum);
    ANDcircuit ACirc(A, B, andOut);

    sixfour_two_one_multi Mux(op, sum, andOut, out);
endmodule
