module D_latch_test();

reg C, D;
wire Q, notQ;

D_latch DUT(C, D, Q, notQ);

initial
begin
    $display("Gated-SR-latch");

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
    #14
    $display("C = %d, D = %d, Q = %d, notQ = %d", C, D, Q, notQ);

    C <= 1;
    D <= 1;
    #14
    $display("C = %d, D = %d, Q = %d, notQ = %d", C, D, Q, notQ);
    
end

endmodule
