module Gated_SR_latch_test();

reg C, S, R;
wire Q, notQ;

Gated_SR_latch DUT(C, S, R, Q, notQ);

initial
begin
    $display("Gated-SR-latch");

    C <= 0;
    S <= 0;
    R <= 0;
    #7
    $display("C = %d, S = %d, R = %d, Q = %d, notQ = %d", C, S, R, Q, notQ);

    C <= 0;
    S <= 0;
    R <= 1;
    #7
    $display("C = %d, S = %d, R = %d, Q = %d, notQ = %d", C, S, R, Q, notQ);

    C <= 0;
    S <= 1;
    R <= 0;
    #7
    $display("C = %d, S = %d, R = %d, Q = %d, notQ = %d", C, S, R, Q, notQ);

    C <= 0;
    S <= 1;
    R <= 1;
    #7
    $display("C = %d, S = %d, R = %d, Q = %d, notQ = %d", C, S, R, Q, notQ);

    C <= 1;
    S <= 0;
    R <= 0;
    #7
    $display("C = %d, S = %d, R = %d, Q = %d, notQ = %d", C, S, R, Q, notQ);

    C <= 1;
    S <= 0;
    R <= 1;
    #14
    $display("C = %d, S = %d, R = %d, Q = %d, notQ = %d", C, S, R, Q, notQ);

    C <= 1;
    S <= 1;
    R <= 0;
    #14
    $display("C = %d, S = %d, R = %d, Q = %d, notQ = %d", C, S, R, Q, notQ);

    // C <= 1;
    // S <= 1;
    // R <= 1;
    // #7
    // $display("C = %d, S = %d, R = %d, Q = %d, notQ = %d", C, S, R, Q, notQ);
    
end

endmodule
