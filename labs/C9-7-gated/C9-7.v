module Gated_SR_latch (C, S, R, Q, notQ);
  input C, S, R;
  output Q, notQ;

  wire CnandS, CnandR, notS, notR;

  nand #2 g1_1(CnandS,C,S);
  nand #2 g1_2(CnandR,C,R);

  not #1 g2_1(notS,CnandS);
  not #1 g2_2(notR,CnandR);

  nand #2 g3_1(Q,notQ,notR);
  nand #2 g3_2(notQ,Q,notS);

endmodule