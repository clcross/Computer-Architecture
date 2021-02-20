module sign_extender16to64(IN, OUT);

input [15:0] IN;
output [63:0] OUT;

assign OUT[63:16] = IN[15];
assign OUT[15:0] = IN[15:0];

endmodule

// OUT(63:0) = SE(IN(15:0))

// OUT(63:16) = IN(15)
// OUT(15:0) = IN(15:0)