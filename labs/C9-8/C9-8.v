module D_FlipFlop (C, D, Q, notQ);
  input C, D;
  output Q, notQ;

  wire notC, latch_notD, latch_CnandD, latch_CnandnotD, SR_CnandS, SR_CnandR, SR_notS, SR_notR;

  not #1 g1(notC,C);

  // D-Latch
  nand #2 g1_1(latch_CnandD,notC,D);
  not #1 g1_2(latch_notD,D);
  nand #2 g1_3(latch_CnandnotD,notC,latch_notD);

  not #1 g2_1(latch_notS,latch_CnandD);
  not #1 g2_2(latch_notR,latch_CnandnotD);

  nand #2 g3_1(latch_Q,latch_notQ,latch_notR);
  nand #2 g3_2(latch_notQ,latch_Q,latch_notS);


  // gated-SR-Latch
  nand #2 g1_4(SR_CnandS,C,latch_Q);
  nand #2 g1_5(SR_CnandR,C,latch_notQ);

  not #1 g2_3(SR_notS,SR_CnandS);
  not #1 g2_4(SR_notR,SR_CnandR);

  nand #2 g3_3(Q,notQ,SR_notR);
  nand #2 g3_4(notQ,Q,SR_notS);


endmodule

// module D_latch (latch_C, latch_D, latch_Q, latch_notQ);
//   input latch_C, latch_D;
//   output latch_Q, latch_notQ;

//   wire latch_notD, latch_CnandD, latch_CnandnotD;

//   nand #2 g1_1(latch_CnandD,latch_C,latch_D);
//   not #1 g1_2(latch_notD,latch_D);
//   nand #2 g1_3(latch_CnandnotD,latch_C,latch_notD);

//   // nand SR-Latch
//   not #1 g2_1(latch_notS,latch_CnandD);
//   not #1 g2_2(latch_notR,latch_CnandnotD);

//   nand #2 g3_1(latch_Q,latch_notQ,latch_notR);
//   nand #2 g3_2(latch_notQ,latch_Q,latch_notS);

// endmodule


// module Gated_SR_latch (SR_C, SR_S, SR_R, SR_Q, SR_notQ);
//   input SR_C, SR_S, SR_R;
//   output SR_Q, SR_notQ;

//   wire SR_CnandS, SR_CnandR, SR_notS, SR_notR;

//   nand #2 g1_1(SR_CnandS,SR_C,SR_S);
//   nand #2 g1_2(SR_CnandR,SR_C,SR_R);

//   not #1 g2_1(SR_notS,SR_CnandS);
//   not #1 g2_2(SR_notR,SR_CnandR);

//   nand #2 g3_1(SR_Q,SR_notQ,SR_notR);
//   nand #2 g3_2(SR_notQ,SR_Q,SR_notS);

// endmodule