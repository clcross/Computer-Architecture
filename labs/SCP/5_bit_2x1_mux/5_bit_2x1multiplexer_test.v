module two_one_multi_test();

reg S,A0,B0,A1,B1,A2,B2,A3,B3,A4,B4;
wire C0,C1,C2,C3,C4;

two_one_multi DUT(S, A0, B0, C0, A1, B1, C1, A2, B2, C2, A3, B3, C3, A4, B4, C4);

initial
begin
    $display("5-bit 2x1 Multiplexer");
    $display("test 1");
    S <= 0;
    A0 <= 0;
    B0 <= 0;
    A1 <= 0;
    B1 <= 0;
    A2 <= 0;
    B2 <= 0;
    A3 <= 0;
    B3 <= 0;
    A4 <= 0;
    B4 <= 0;
    #7
    $display("S = %d, A0 = %d, B0 = %d, C0 = %d", S, A0, B0, C0);
    $display("S = %d, A1 = %d, B1 = %d, C1 = %d", S, A1, B1, C1);
    $display("S = %d, A2 = %d, B2 = %d, C2 = %d", S, A2, B2, C1);
    $display("S = %d, A3 = %d, B3 = %d, C3 = %d", S, A3, B3, C1);
    $display("S = %d, A4 = %d, B4 = %d, C4 = %d", S, A4, B4, C1);

    $display("test 2");
    S <= 1;
    A0 <= 0;
    B0 <= 0;
    A1 <= 0;
    B1 <= 0;
    A2 <= 0;
    B2 <= 0;
    A3 <= 0;
    B3 <= 0;
    A4 <= 0;
    B4 <= 0;
    #7
    $display("S = %d, A0 = %d, B0 = %d, C0 = %d", S, A0, B0, C0);
    $display("S = %d, A1 = %d, B1 = %d, C1 = %d", S, A1, B1, C1);
    $display("S = %d, A2 = %d, B2 = %d, C2 = %d", S, A2, B2, C1);
    $display("S = %d, A3 = %d, B3 = %d, C3 = %d", S, A3, B3, C1);
    $display("S = %d, A4 = %d, B4 = %d, C4 = %d", S, A4, B4, C1);

    $display("test 3");
    S <= 0;
    A0 <= 1;
    B0 <= 0;
    A1 <= 0;
    B1 <= 1;
    A2 <= 0;
    B2 <= 0;
    A3 <= 1;
    B3 <= 0;
    A4 <= 1;
    B4 <= 0;
    #7
    $display("S = %d, A0 = %d, B0 = %d, C0 = %d", S, A0, B0, C0);
    $display("S = %d, A1 = %d, B1 = %d, C1 = %d", S, A1, B1, C1);
    $display("S = %d, A2 = %d, B2 = %d, C2 = %d", S, A2, B2, C1);
    $display("S = %d, A3 = %d, B3 = %d, C3 = %d", S, A3, B3, C1);
    $display("S = %d, A4 = %d, B4 = %d, C4 = %d", S, A4, B4, C1);

    $display("test 4");
    S <= 1;
    A0 <= 1;
    B0 <= 0;
    A1 <= 0;
    B1 <= 1;
    A2 <= 0;
    B2 <= 0;
    A3 <= 1;
    B3 <= 0;
    A4 <= 1;
    B4 <= 0;
    #7
    $display("S = %d, A0 = %d, B0 = %d, C0 = %d", S, A0, B0, C0);
    $display("S = %d, A1 = %d, B1 = %d, C1 = %d", S, A1, B1, C1);
    $display("S = %d, A2 = %d, B2 = %d, C2 = %d", S, A2, B2, C1);
    $display("S = %d, A3 = %d, B3 = %d, C3 = %d", S, A3, B3, C1);
    $display("S = %d, A4 = %d, B4 = %d, C4 = %d", S, A4, B4, C1);

    $display("test 5");
    S <= 1;
    A0 <= 0;
    B0 <= 1;
    A1 <= 1;
    B1 <= 0;
    A2 <= 1;
    B2 <= 1;
    A3 <= 0;
    B3 <= 1;
    A4 <= 0;
    B4 <= 1;
    #7
    $display("S = %d, A0 = %d, B0 = %d, C0 = %d", S, A0, B0, C0);
    $display("S = %d, A1 = %d, B1 = %d, C1 = %d", S, A1, B1, C1);
    $display("S = %d, A2 = %d, B2 = %d, C2 = %d", S, A2, B2, C1);
    $display("S = %d, A3 = %d, B3 = %d, C3 = %d", S, A3, B3, C1);
    $display("S = %d, A4 = %d, B4 = %d, C4 = %d", S, A4, B4, C1);

end

endmodule
