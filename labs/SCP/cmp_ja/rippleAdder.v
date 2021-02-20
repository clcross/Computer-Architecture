module rippleAdder(A, B, S);
  input [63:0] A, B;
  output [63:0] S;
  output [63:0] C;

  genvar i;
  rippleAdder_base f(A[0], B[0], 1'b0, S[0], C[0]);
  generate
    for(i = 1; i <= 63; i = i+1)
     begin : adders
      rippleAdder_base f(A[i], B[i], C[i-1], S[i], C[i]);
    end
  endgenerate

endmodule