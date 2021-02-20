module D_latch (C, D, Q, notQ);
  input C, D;
  output Q, notQ;

  wire notD;

  nand #2 g1_1(CnandD,C,D);
  not #1 g1_2(notD,D);
  nand #2 g1_3(CnandnotD,C,notD);

  // nand SR-Latch
  not #1 g2_1(notS,CnandD);
  not #1 g2_2(notR,CnandnotD);

  nand #2 g3_1(Q,notQ,notR);
  nand #2 g3_2(notQ,Q,notS);

endmodule