module C9_4_long (A, B, C, F);
  input wire A,B,C;
  output wire F;

  wire notA_1, notB_1, notB_2, notC_2, notB_3, notC_4, notAnotBandC, AandnotBnotC, AnotBandC, AandBnotC, AandBandC;

  not #1 g1_1(notA_1,A);
  not #1 g1_2(notB_1,B);
  not #1 g1_2(notB_2,B);
  not #1 g1_3(notC_2,C);
  not #1 g1_2(notB_3,B);
  not #1 g1_3(notC_4,C);

  and #3 g2_1(notAnotBandC,notA_1,notB_1,C);
  and #3 g2_2(AandnotBnotC,A,notB_2,notC_2);
  and #3 g2_3(AnotBandC,A,notB_3,C);
  and #3 g2_4(AandBnotC,A,B,notC_4);
  and #3 g2_5(AandBandC,A,B,C);

  or  #5 g3(F,notAnotBandC,AandnotBnotC,AnotBandC,AandBnotC,AandBandC);

endmodule