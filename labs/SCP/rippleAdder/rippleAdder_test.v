module rippleAdder_test();

reg [63:0]A;
reg [63:0]B;
reg C0;
wire [63:0]S;
wire C64;
integer i;

rippleAdder DUT(A,B,C0,S,C64);

initial
begin
    $display("Ripple Adder");
    $display(" ");
    $display("Test 1");

    for(i = 0; i <= 7; i = i+1)
    begin
        A[i] = 1;
        B[i] = 0;
    end
    for(i = 8; i <= 15; i = i+1)
    begin
        A[i] = 0;
        B[i] = 1;
    end
    for(i = 16; i <= 47; i = i+1)
    begin
        A[i] = 1;
        B[i] = 1;
    end
    for(i = 48; i <= 63; i = i+1)
    begin
        A[i] = 0;
        B[i] = 0;
    end
    C0 = 1;
    #384
    $display("A = %b", A);
    $display("B = %b", B); 
    $display("C0 = %b", C0);
    $display("S = %b", S);
    $display("C64 = %b", C64);


    $display(" ");
    $display("Test 2");

    for(i = 1; i <= 62; i = i+1)
    begin
        A[i] = 0;
        B[i] = 0;
    end

    A[0] = 1;
    B[0] = 1;
    
    C0 = 0;
    #384
    $display("A = %b", A);
    $display("B = %b", B); 
    $display("C0 = %b", C0);
    $display("S = %b", S);
    $display("C64 = %b", C64);


    $display(" ");
    $display("Test 3");

    for(i = 0; i <= 62; i = i+1)
    begin
        A[i] = 1;
        B[i] = 1;
    end

    A[63] = 0;
    B[63] = 0;
    
    C0 = 1;
    #384
    $display("A = %b", A);
    $display("B = %b", B); 
    $display("C0 = %b", C0);
    $display("S = %b", S);
    $display("C64 = %b", C64);


    $display(" ");
    $display("Test 4");

    for(i = 0; i <= 32; i = i+1)
    begin
        A[i] = 0;
        B[i] = 0;
    end
    for(i = 33; i <= 63; i = i+1)
    begin
        A[i] = 1;
        B[i] = 1;
    end
    
    C0 = 0;
    #384
    $display("A = %b", A);
    $display("B = %b", B); 
    $display("C0 = %b", C0);
    $display("S = %b", S);
    $display("C64 = %b", C64);
end

endmodule