module C9_5_short (A, B, C, F);
  input wire A,B,C;
  output wire F;

  wire notB, notBandC;

  not #1 g2(notB,B);
  and #2 g1(notBandC,notB,C);
  or  #2 g3(F,A,notBandC);

endmodule