module D_FlipFlop_test();

reg C, D;
wire Q, notQ;

D_FlipFlop DUT(C, D, Q, notQ);

initial
begin
    $display("D-Flip-Flop");

    C <= 0;
    D <= 0;
    #7
    $display("C = %d, D = %d, Q = %d, notQ = %d", C, D, Q, notQ);

    C <= 0;
    D <= 1;
    #7
    $display("C = %d, D = %d, Q = %d, notQ = %d", C, D, Q, notQ);

    C <= 1;
    D <= 0;
    #7
    $display("C = %d, D = %d, Q = %d, notQ = %d", C, D, Q, notQ);

    C <= 1;
    D <= 1;
    #7
    $display("C = %d, D = %d, Q = %d, notQ = %d", C, D, Q, notQ);
    
end

endmodule
