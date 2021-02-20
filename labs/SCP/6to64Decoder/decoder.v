module decoder(A, O);

  input [5:0]A;

  output [63:0]O;

  wire notA0, notA1, notA2, notA3, notA4, notA5;

  not #1 g1_0(notA0,A[0]);
  not #1 g1_1(notA1,A[1]);
  not #1 g1_2(notA2,A[2]);
  not #1 g1_3(notA3,A[3]);
  not #1 g1_4(notA4,A[4]);
  not #1 g1_5(notA5,A[5]);

  and #7 g2_0(O[0],notA0, notA1, notA2, notA3, notA4, notA5);
  and #7 g2_1(O[1],A[0], notA1, notA2, notA3, notA4, notA5);
  and #7 g2_2(O[2],notA0, A[1], notA2, notA3, notA4, notA5);
  and #7 g2_3(O[3],A[0], A[1], notA2, notA3, notA4, notA5);
  and #7 g2_4(O[4],notA0, notA1, A[2], notA3, notA4, notA5);
  and #7 g2_5(O[5],A[0], notA1, A[2], notA3, notA4, notA5); 
  and #7 g2_6(O[6],notA0, A[1], A[2], notA3, notA4, notA5);
  and #7 g2_7(O[7],A[0], A[1], A[2], notA3, notA4, notA5); 
  and #7 g2_8(O[8],notA0, notA1, notA2, A[3], notA4, notA5);
  and #7 g2_9(O[9],A[0], notA1, notA2, A[3], notA4, notA5); 
  and #7 g2_10(O[10],notA0, A[1], notA2, A[3], notA4, notA5); 
  and #7 g2_11(O[11],A[0], A[1], notA2, A[3], notA4, notA5); 
  and #7 g2_12(O[12],notA0, notA1, A[2], A[3], notA4, notA5); 
  and #7 g2_13(O[13],A[0], notA1, A[2], A[3], notA4, notA5); 
  and #7 g2_14(O[14],notA0, A[1], A[2], A[3], notA4, notA5); 
  and #7 g2_15(O[15],A[0], A[1], A[2], A[3], notA4, notA5); 
  and #7 g2_16(O[16],notA0, notA1, notA2, notA3, A[4], notA5); 
  and #7 g2_17(O[17],A[0], notA1, notA2, notA3, A[4], notA5);
  and #7 g2_18(O[18],notA0, A[1], notA2, notA3, A[4], notA5); 
  and #7 g2_19(O[19],A[0], A[1], notA2, notA3, A[4], notA5); 
  and #7 g2_20(O[20],notA0, notA1, A[2], notA3, A[4], notA5); 
  and #7 g2_21(O[21],A[0], notA1, A[2], notA3, A[4], notA5); 
  and #7 g2_22(O[22],notA0, A[1], A[2], notA3, A[4], notA5); 
  and #7 g2_23(O[23],A[0], A[1], A[2], notA3, A[4], notA5); 
  and #7 g2_24(O[24],notA0, notA1, notA2, A[3], A[4], notA5); 
  and #7 g2_25(O[25],A[0], notA1, notA2, A[3], A[4], notA5);
  and #7 g2_26(O[26],notA0, A[1], notA2, A[3], A[4], notA5); 
  and #7 g2_27(O[27],A[0], A[1], notA2, A[3], A[4], notA5); 
  and #7 g2_28(O[28],notA0, notA1, A[2], A[3], A[4], notA5); 
  and #7 g2_29(O[29],A[0], notA1, A[2], A[3], A[4], notA5); 
  and #7 g2_30(O[30],notA0, A[1], A[2], A[3], A[4], notA5); 
  and #7 g2_31(O[31],A[0], A[1], A[2], A[3], A[4], notA5); 
  and #7 g2_32(O[32],notA0, notA1, notA2, notA3, notA4, A[5]); 
  and #7 g2_33(O[33],A[0], notA1, notA2, notA3, notA4, A[5]); 
  and #7 g2_34(O[34],notA0, A[1], notA2, notA3, notA4, A[5]); 
  and #7 g2_35(O[35],A[0], A[1], notA2, notA3, notA4, A[5]); 
  and #7 g2_36(O[36],notA0, notA1, A[2], notA3, notA4, A[5]); 
  and #7 g2_37(O[37],A[0], notA1, A[2], notA3, notA4, A[5]); 
  and #7 g2_38(O[38],notA0, A[1], A[2], notA3, notA4, A[5]);
  and #7 g2_39(O[39],A[0], A[1], A[2], notA3, notA4, A[5]); 
  and #7 g2_40(O[40],notA0, notA1, notA2, A[3], notA4, A[5]); 
  and #7 g2_41(O[41],A[0], notA1, notA2, A[3], notA4, A[5]); 
  and #7 g2_42(O[42],notA0, A[1], notA2, A[3], notA4, A[5]); 
  and #7 g2_43(O[43],A[0], A[1], notA2, A[3], notA4, A[5]); 
  and #7 g2_44(O[44],notA0, notA1, A[2], A[3], notA4, A[5]);
  and #7 g2_45(O[45],A[0], notA1, A[2], A[3], notA4, A[5]);
  and #7 g2_46(O[46],notA0, A[1], A[2], A[3], notA4, A[5]); 
  and #7 g2_47(O[47],A[0], A[1], A[2], A[3], notA4, A[5]); 
  and #7 g2_48(O[48],notA0, notA1, notA2, notA3, A[4], A[5]); 
  and #7 g2_49(O[49],A[0], notA1, notA2, notA3, A[4], A[5]); 
  and #7 g2_50(O[50],notA0, A[1], notA2, notA3, A[4], A[5]); 
  and #7 g2_51(O[51],A[0], A[1], notA2, notA3, A[4], A[5]); 
  and #7 g2_52(O[52],notA0, notA1, A[2], notA3, A[4], A[5]); 
  and #7 g2_53(O[53],A[0], notA1, A[2], notA3, A[4], A[5]); 
  and #7 g2_54(O[54],notA0, A[1], A[2], notA3, A[4], A[5]); 
  and #7 g2_55(O[55],A[0], A[1], A[2], notA3, A[4], A[5]); 
  and #7 g2_56(O[56],notA0, notA1, notA2, A[3], A[4], A[5]); 
  and #7 g2_57(O[57],A[0], notA1, notA2, A[3], A[4], A[5]); 
  and #7 g2_58(O[58],notA0, A[1], notA2, A[3], A[4], A[5]); 
  and #7 g2_59(O[59],A[0], A[1], notA2, A[3], A[4], A[5]); 
  and #7 g2_60(O[60],notA0, notA1, A[2], A[3], A[4], A[5]); 
  and #7 g2_61(O[61],A[0], notA1, A[2], A[3], A[4], A[5]); 
  and #7 g2_62(O[62],notA0, A[1], A[2], A[3], A[4], A[5]); 
  and #7 g2_63(O[63],A[0], A[1], A[2], A[3], A[4], A[5]); 
  

  

endmodule

// 000001 000010 000100 001000 010000 100000 
// 000011 000101 000110 001001 001010 001100 010001 010010 010100 011000 100001 100010 100100 101000 110000 
// 000111 001011 001101 001110 010011 010101 010110 011001 011010 011100 100011 100101 100110 101001 101010 101100 110001 110010 110100 111000 
// 001111 010111 011011 011101 011110 100111 101011 101101 101110 110011 110101 110110 111001 111010 111100 
// 011111 101111 110111 111011 111101 111110 
// 111111 