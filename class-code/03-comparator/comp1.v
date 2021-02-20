module Compare1 (A, B, Equal, Alarger, Blarger);
    input      A, B;
    output     Equal, Alarger, Blarger;
    wire       notB, notA, AandB, NotAandB;
    not    #1  n1(notA, A);
    not    #1  n1(notB, B);
    and    #2  g1(AandB, A, B);
    and    #2  g2(NotAandB, notA, notB);
    or     #2  g3(Equal, AandB, NotAandB);
    and    #2  g4(Alarger, A, notB);
    and    #2  g5(Blarger, notA, B);
endmodule
