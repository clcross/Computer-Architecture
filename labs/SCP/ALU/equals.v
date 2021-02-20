module equals(A, B, O);
  input [63:0]A;
  input [63:0]B;
  output O;

  xnor #72 g1(O,A,B);

endmodule