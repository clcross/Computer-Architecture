module two_one_multi (S, A0, B0, C0, A1, B1, C1, A2, B2, C2, A3, B3, C3, A4, B4, C4);
  input wire S,A0,B0,A1,B1,A2,B2,A3,B3,A4,B4;
  output wire C0,C1,C2,C3,C4;

  wire notS, notSandA0, SandB0, notSandA1, SandB1, notSandA2, SandB2, notSandA3, SandB3, notSandA4, SandB4;

  not #1 g1(notS,S);

  and #2 g2_1(notSandA0,notS,A0);
  and #2 g2_2(SandB0,S,B0);
  or  #2 g3_1(C0,notSandA0,SandB0); //output 1

  and #2 g2_3(notSandA1,notS,A1);
  and #2 g2_4(SandB1,S,B1);
  or  #2 g3_2(C1,notSandA1,SandB1); //output 2

  and #2 g2_5(notSandA2,notS,A2);
  and #2 g2_6(SandB2,S,B2);
  or  #2 g3_3(C2,notSandA2,SandB2); //output 3

  and #2 g2_7(notSandA3,notS,A3);
  and #2 g2_8(SandB3,S,B3);
  or  #2 g3_4(C3,notSandA3,SandB3); //output 4

  and #2 g2_9(notSandA4,notS,A4);
  and #2 g2_10(SandB4,S,B4);
  or  #2 g3_5(C4,notSandA4,SandB4); //output 5

endmodule