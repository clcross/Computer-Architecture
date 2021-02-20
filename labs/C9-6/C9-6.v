module SR_latch (S, R, Q, notQ);
  input S, R;
  output Q, notQ;

  nor #1 g1(Q, notQ, R);
  nor #1 g2(notQ, Q, S);
endmodule