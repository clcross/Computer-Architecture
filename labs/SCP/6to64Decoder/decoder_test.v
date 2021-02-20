module decoder_test();

reg [5:0]A;
wire [63:0]O;

decoder DUT(A,O);

initial
begin
    $display("6 to 64 decoder");

    A[0] = 1;   // 1
    A[1] = 0;   // 2
    A[2] = 0;   // 4
    A[3] = 0;   // 8
    A[4] = 0;   // 16
    A[5] = 0;   // 32

    #10
    $display("6 bit = %b", A);
    
    $display("64 bit = %b", O);
end

endmodule