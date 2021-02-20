module simple (A, B, C, X, Y);
  input wire A,B,C;
  output wire X,Y;

  wire E;

  and #2 g1(E,A,B);
  not #1 g2(Y,C);
  or  #2 g3(X,E,Y);

endmodule
