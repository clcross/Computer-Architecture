module two_one_multi (S, A, B, C);
  input wire S;
  input [4:0] A, B;
  output [4:0] C;

  wire notS, notSandA0, SandB0, notSandA1, SandB1, notSandA2, SandB2, notSandA3, SandB3, notSandA4, SandB4;

  not #1 g1(notS,S);

  and #2 g2_1(notSandA0,notS,A[0]);
  and #2 g2_2(SandB0,S,B[0]);
  or  #2 g3_1(C[0],notSandA0,SandB0); //output 1

  and #2 g2_3(notSandA1,notS,A[1]);
  and #2 g2_4(SandB1,S,B[1]);
  or  #2 g3_2(C[1],notSandA1,SandB1); //output 2

  and #2 g2_5(notSandA2,notS,A[2]);
  and #2 g2_6(SandB2,S,B[2]);
  or  #2 g3_3(C[2],notSandA2,SandB2); //output 3

  and #2 g2_7(notSandA3,notS,A[3]);
  and #2 g2_8(SandB3,S,B[3]);
  or  #2 g3_4(C[3],notSandA3,SandB3); //output 4

  and #2 g2_9(notSandA4,notS,A[4]);
  and #2 g2_10(SandB4,S,B[4]);
  or  #2 g3_5(C[4],notSandA4,SandB4); //output 5

endmodule