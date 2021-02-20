module rippleAdder(A, B, C0, S, C64);
  input [63:0]A;
  input [63:0]B;
  input C0;
  output [63:0]S;
  output C64;

  wire [63:1]C;
  
  rippleAdder_base ra0(A[0],B[0],C0,S[0],C[1]);
  rippleAdder_base ra1(A[1],B[1],C[1],S[1],C[2]);
  rippleAdder_base ra2(A[2],B[2],C[2],S[2],C[3]);
  rippleAdder_base ra3(A[3],B[3],C[3],S[3],C[4]);
  rippleAdder_base ra4(A[4],B[4],C[4],S[4],C[5]);
  rippleAdder_base ra5(A[5],B[5],C[5],S[5],C[6]);
  rippleAdder_base ra6(A[6],B[6],C[6],S[6],C[7]);
  rippleAdder_base ra7(A[7],B[7],C[7],S[7],C[8]);
  rippleAdder_base ra8(A[8],B[8],C[8],S[8],C[9]);
  rippleAdder_base ra9(A[9],B[9],C[9],S[9],C[10]);
  rippleAdder_base ra10(A[10],B[10],C[10],S[10],C[11]);
  rippleAdder_base ra11(A[11],B[11],C[11],S[11],C[12]);
  rippleAdder_base ra12(A[12],B[12],C[12],S[12],C[13]);
  rippleAdder_base ra13(A[13],B[13],C[13],S[13],C[14]);
  rippleAdder_base ra14(A[14],B[14],C[14],S[14],C[15]);
  rippleAdder_base ra15(A[15],B[15],C[15],S[15],C[16]);
  rippleAdder_base ra16(A[16],B[16],C[16],S[16],C[17]);
  rippleAdder_base ra17(A[17],B[17],C[17],S[17],C[18]);
  rippleAdder_base ra18(A[18],B[18],C[18],S[18],C[19]);
  rippleAdder_base ra19(A[19],B[19],C[19],S[19],C[20]);
  rippleAdder_base ra20(A[20],B[20],C[20],S[20],C[21]);
  rippleAdder_base ra21(A[21],B[21],C[21],S[21],C[22]);
  rippleAdder_base ra22(A[22],B[22],C[22],S[22],C[23]);
  rippleAdder_base ra23(A[23],B[23],C[23],S[23],C[24]);
  rippleAdder_base ra24(A[24],B[24],C[24],S[24],C[25]);
  rippleAdder_base ra25(A[25],B[25],C[25],S[25],C[26]);
  rippleAdder_base ra26(A[26],B[26],C[26],S[26],C[27]);
  rippleAdder_base ra27(A[27],B[27],C[27],S[27],C[28]);
  rippleAdder_base ra28(A[28],B[28],C[28],S[28],C[29]);
  rippleAdder_base ra29(A[29],B[29],C[29],S[29],C[30]);
  rippleAdder_base ra30(A[30],B[30],C[30],S[30],C[31]);
  rippleAdder_base ra31(A[31],B[31],C[31],S[31],C[32]);
  rippleAdder_base ra32(A[32],B[32],C[32],S[32],C[33]);
  rippleAdder_base ra33(A[33],B[33],C[33],S[33],C[34]);
  rippleAdder_base ra34(A[34],B[34],C[34],S[34],C[35]);
  rippleAdder_base ra35(A[35],B[35],C[35],S[35],C[36]);
  rippleAdder_base ra36(A[36],B[36],C[36],S[36],C[37]);
  rippleAdder_base ra37(A[37],B[37],C[37],S[37],C[38]);
  rippleAdder_base ra38(A[38],B[38],C[38],S[38],C[39]);
  rippleAdder_base ra39(A[39],B[39],C[39],S[39],C[40]);
  rippleAdder_base ra40(A[40],B[40],C[40],S[40],C[41]);
  rippleAdder_base ra41(A[41],B[41],C[41],S[41],C[42]);
  rippleAdder_base ra42(A[42],B[42],C[42],S[42],C[43]);
  rippleAdder_base ra43(A[43],B[43],C[43],S[43],C[44]);
  rippleAdder_base ra44(A[44],B[44],C[44],S[44],C[45]);
  rippleAdder_base ra45(A[45],B[45],C[45],S[45],C[46]);
  rippleAdder_base ra46(A[46],B[46],C[46],S[46],C[47]);
  rippleAdder_base ra47(A[47],B[47],C[47],S[47],C[48]);
  rippleAdder_base ra48(A[48],B[48],C[48],S[48],C[49]);
  rippleAdder_base ra49(A[49],B[49],C[49],S[49],C[50]);
  rippleAdder_base ra50(A[50],B[50],C[50],S[50],C[51]);
  rippleAdder_base ra51(A[51],B[51],C[51],S[51],C[52]);
  rippleAdder_base ra52(A[52],B[52],C[52],S[52],C[53]);
  rippleAdder_base ra53(A[53],B[53],C[53],S[53],C[54]);
  rippleAdder_base ra54(A[54],B[54],C[54],S[54],C[55]);
  rippleAdder_base ra55(A[55],B[55],C[55],S[55],C[56]);
  rippleAdder_base ra56(A[56],B[56],C[56],S[56],C[57]);
  rippleAdder_base ra57(A[57],B[57],C[57],S[57],C[58]);
  rippleAdder_base ra58(A[58],B[58],C[58],S[58],C[59]);
  rippleAdder_base ra59(A[59],B[59],C[59],S[59],C[60]);
  rippleAdder_base ra60(A[60],B[60],C[60],S[60],C[61]);
  rippleAdder_base ra61(A[61],B[61],C[61],S[61],C[62]);
  rippleAdder_base ra62(A[62],B[62],C[62],S[62],C[63]);
  rippleAdder_base ra63(A[63],B[63],C[63],S[63],C64);


  // for(i = 0; i <= 63; i = i+1)
  //   begin
  //       rippleAdder_base rai(A[i],B[i],Ci,S[i],C[i+1]);
  //   end



endmodule

