module fullAdder(A, B, Cin, S, Cout);
  input wire A,B,Cin;
  output wire S,Cout;

  wire AxorB, AandB, BandCin, AandCin;

  xor #3 g1_1(AxorB,A,B);
  and #2 g1_2(AandB,A,B);
  and #2 g1_3(BandCin,B,Cin);
  and #2 g1_4(AandCin,A,Cin);

  xor #3 g2_1(S,AxorB,Cin);
  or  #4 g2_2(Cout,AandB,BandCin,AandCin);

endmodule

