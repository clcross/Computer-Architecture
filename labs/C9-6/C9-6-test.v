module SR_latch_test();

reg S, R;
wire Q, notQ;

SR_latch DUT(S, R, Q, notQ);

initial
begin
    $display("SR-latch");

    S <= 0;
    R <= 0;
    #7
    $display("S = %d, R = %d, Q = %d, notQ = %d", S, R, Q, notQ);

    S <= 0;
    R <= 1;
    #7
    $display("S = %d, R = %d, Q = %d, notQ = %d", S, R, Q, notQ);

    S <= 1;
    R <= 0;
    #7
    $display("S = %d, R = %d, Q = %d, notQ = %d", S, R, Q, notQ);

    // S <= 1;
    // R <= 1;
    // #7
    // $display("S = %d, R = %d, Q = %d, notQ = %d", S, R, Q, notQ);
    
end

endmodule
