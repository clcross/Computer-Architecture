module fullAdder_test();

reg A,B,Cin;
wire S,Cout;

fullAdder DUT(A,B,Cin,S,Cout);

initial
begin
    $display("Full Adder");

    A <= 0;
    B <= 0;
    Cin <= 0;
    #7
    $display("A = %d, B = %d, Cin = %d, S = %d, Cout = %d", A, B, Cin, S, Cout);

    A <= 0;
    B <= 0;
    Cin <= 1;
    #7
    $display("A = %d, B = %d, Cin = %d, S = %d, Cout = %d", A, B, Cin, S, Cout);

    A <= 0;
    B <= 1;
    Cin <= 0;
    #7
    $display("A = %d, B = %d, Cin = %d, S = %d, Cout = %d", A, B, Cin, S, Cout);

    A <= 0;
    B <= 1;
    Cin <= 1;
    #7
    $display("A = %d, B = %d, Cin = %d, S = %d, Cout = %d", A, B, Cin, S, Cout);

    A <= 1;
    B <= 0;
    Cin <= 0;
    #7
    $display("A = %d, B = %d, Cin = %d, S = %d, Cout = %d", A, B, Cin, S, Cout);

    A <= 1;
    B <= 0;
    Cin <= 1;
    #14
    $display("A = %d, B = %d, Cin = %d, S = %d, Cout = %d", A, B, Cin, S, Cout);

    A <= 1;
    B <= 1;
    Cin <= 0;
    #14
    $display("A = %d, B = %d, Cin = %d, S = %d, Cout = %d", A, B, Cin, S, Cout);

    A <= 1;
    B <= 1;
    Cin <= 1;
    #7
    $display("A = %d, B = %d, Cin = %d, S = %d, Cout = %d", A, B, Cin, S, Cout);

end

endmodule