module simple_test();

reg in1, in2, in3;
wire X, Y;

simple DUT(in1, in2, in3, X, Y);

initial
begin
    in1 <= 0;
    in2 <= 0;
    in3 <= 0;
    #7
    $display("X = %d, Y = %d", X, Y);

    in1 <= 1;
    in2 <= 1;
    in3 <= 1;
    #7
    $display("X = %d, Y = %d", X, Y);
end

endmodule

