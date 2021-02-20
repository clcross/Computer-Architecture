module two_one_multi_test();

reg S, A, B;
wire C;

two_one_multi DUT(S, A, B, C);

initial
begin
    $display("2x1 Multiplexer");

    S <= 0;
    A <= 0;
    B <= 0;
    #7
    $display("S = %d, A = %d, B = %d, C = %d", S, A, B, C);

    S <= 0;
    A <= 0;
    B <= 1;
    #7
    $display("S = %d, A = %d, B = %d, C = %d", S, A, B, C);

    S <= 0;
    A <= 1;
    B <= 0;
    #7
    $display("S = %d, A = %d, B = %d, C = %d", S, A, B, C);

    S <= 0;
    A <= 1;
    B <= 1;
    #7
    $display("S = %d, A = %d, B = %d, C = %d", S, A, B, C);
    
    S <= 1;
    A <= 0;
    B <= 0;
    #7
    $display("S = %d, A = %d, B = %d, C = %d", S, A, B, C);

    S <= 1;
    A <= 0;
    B <= 1;
    #7
    $display("S = %d, A = %d, B = %d, C = %d", S, A, B, C);

    S <= 1;
    A <= 1;
    B <= 0;
    #7
    $display("S = %d, A = %d, B = %d, C = %d", S, A, B, C);

    S <= 1;
    A <= 1;
    B <= 1;
    #7
    $display("S = %d, A = %d, B = %d, C = %d", S, A, B, C);

end

endmodule
