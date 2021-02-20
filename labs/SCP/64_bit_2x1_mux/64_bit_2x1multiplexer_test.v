module sixfour_two_one_multi_test();

reg [63:0] A;
reg [63:0] B;
reg S;
wire [63:0] C;

sixfour_two_one_multi DUT(S, A, B, C);

initial
begin

    $display("64-bit 2x1 Multiplexer");
    S <= 1;
    A <= 0100000111100001111000001111111111111111111111100101000010101010;
    B <= 1111111111001010100011000101000100110110101010111111100011100010;
    #7
    $display("C = %b", C);

end

endmodule
