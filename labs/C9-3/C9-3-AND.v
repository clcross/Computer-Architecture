module C9_3_AND (A, B, X);
  input wire A, B;
  output wire X;

  wire E;

  nand #2 g1(E,A,B);
  nand #1 g2(X,E);
  
endmodule