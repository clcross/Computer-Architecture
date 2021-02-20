module ANDcircuit(A, B, O);
  input [63:0]A;
  input [63:0]B;
  output [63:0]O;

//   and #72 g1(O,A,B);

  genvar i;
  generate
  for(i = 0; i <= 63; i = i+1)
  begin: for_loop
    and #2 g1(O[i],A[i],B[i]);
  end
  endgenerate
  

endmodule
