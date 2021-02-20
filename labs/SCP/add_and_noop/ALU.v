module ALU(A, B, op, out, eq);
    input [63:0] A; 
    input [63:0] B; 
    input op; //opcode 
    output reg [63:0] out; // output 
    output [63:0] outAND;
    output [63:0] outRA;
    output eq; // equality bit 

    wire C64;
    
    // if opcode is 0 then out = A + B if opcode is 1 then out = A AND B if A==B then eq is 1 if A!=B then eq is 0
    equals equal(A, B, eq);
    ANDcircuit AC(.A(A), .B(B), .O(outAND));
    rippleAdder ra(.A(A), .B(B), .C0(op), .S(outRA), .C64(C64));
    always @*
    begin
        if(op == 0)
        begin
            out <= outRA;
        end
        else 
        begin
            out <= outAND;
        end
    end

endmodule
