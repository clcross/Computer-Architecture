module C9_3_OR (C, D, Y);
  input wire C, D;
  output wire Y;

  wire G, H;

  nand  #1 g3(G,C);
  nand  #1 g4(H,D);
  nand  #2 g5(Y,G,H);

endmodule
