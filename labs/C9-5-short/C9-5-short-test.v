module C9_5_short_test();

reg in1, in2, in3;
wire F;

C9_5_short DUT(in1, in2, in3, F);

initial
begin
    $display("circuit-short");

    in1 <= 0;
    in2 <= 0;
    in3 <= 0;
    #7
    $display("in1 = %d, in2 = %d, in3 = %d, F = %d", in1, in2, in3, F);

    in1 <= 0;
    in2 <= 0;
    in3 <= 1;
    #7
    $display("in1 = %d, in2 = %d, in3 = %d, F = %d", in1, in2, in3, F);

    in1 <= 0;
    in2 <= 1;
    in3 <= 0;
    #7
    $display("in1 = %d, in2 = %d, in3 = %d, F = %d", in1, in2, in3, F);

    in1 <= 0;
    in2 <= 1;
    in3 <= 1;
    #7
    $display("in1 = %d, in2 = %d, in3 = %d, F = %d", in1, in2, in3, F);
    
    in1 <= 1;
    in2 <= 0;
    in3 <= 0;
    #7
    $display("in1 = %d, in2 = %d, in3 = %d, F = %d", in1, in2, in3, F);

    in1 <= 1;
    in2 <= 0;
    in3 <= 1;
    #7
    $display("in1 = %d, in2 = %d, in3 = %d, F = %d", in1, in2, in3, F);

    in1 <= 1;
    in2 <= 1;
    in3 <= 0;
    #7
    $display("in1 = %d, in2 = %d, in3 = %d, F = %d", in1, in2, in3, F);

    in1 <= 1;
    in2 <= 1;
    in3 <= 1;
    #7
    $display("in1 = %d, in2 = %d, in3 = %d, F = %d", in1, in2, in3, F);

end

endmodule
