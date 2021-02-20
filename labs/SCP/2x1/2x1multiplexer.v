module two_one_multi (S, A, B, C);
  input wire S,A,B;
  output wire C;

  wire notS, notSandA, SandB;

  not #1 g1(notS,S);
  and #2 g2_1(notSandA,notS,A);
  and #2 g2_2(SandB,S,B);
  or  #2 g3(C,notSandA,SandB);

endmodule