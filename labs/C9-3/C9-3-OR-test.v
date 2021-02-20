module C9_3_OR_test();

reg in1, in2;
wire Y;

C9_3_OR DUT(in1, in2, Y);

initial
begin
    $display("OR made with 2 NANDs");

    in1 <= 0;
    in2 <= 0;
    #7
    $display("in1 = %d, in2 = %d, Y = %d", in1, in2, Y);

    in1 <= 0;
    in2 <= 1;
    #7
    $display("in1 = %d, in2 = %d, Y = %d", in1, in2, Y);

    in1 <= 1;
    in2 <= 0;
    #7
    $display("in1 = %d, in2 = %d, Y = %d", in1, in2, Y);

    in1 <= 1;
    in2 <= 1;
    #7
    $display("in1 = %d, in2 = %d, Y = %d", in1, in2, Y);

end

endmodule
