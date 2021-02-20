module C9_3_AND_test();

reg in1, in2;
wire X;

C9_3_AND DUT(in1, in2, X);

initial
begin
    $display("AND made with 2 NANDs");

    in1 <= 0;
    in2 <= 0;
    #7
    $display("in1 = %d, in2 = %d, X = %d", in1, in2, X);

    in1 <= 0;
    in2 <= 1;
    #7
    $display("in1 = %d, in2 = %d, X = %d", in1, in2, X);

    in1 <= 1;
    in2 <= 0;
    #7
    $display("in1 = %d, in2 = %d, X = %d", in1, in2, X);

    in1 <= 1;
    in2 <= 1;
    #7
    $display("in1 = %d, in2 = %d, X = %d", in1, in2, X);

end

endmodule
