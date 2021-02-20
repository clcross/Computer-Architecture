module equals(A, B, O);
  input [63:0]A;
  input [63:0]B;
  output O;

  wire [63:0]temp;

  // xnor #72 g1(O,A,B);

  genvar i;
  generate
  for(i = 0; i <= 63; i = i+1)
  begin: for_loop
    xnor #7 (temp[i],A[i],B[i]);
  end
  endgenerate

  and #4(O,temp);

endmodule