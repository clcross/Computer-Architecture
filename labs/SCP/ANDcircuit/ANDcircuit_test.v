module ANDcircuit_test();

reg [63:0]A;
reg [63:0]B;

wire [63:0]O;
integer i;

ANDcircuit DUT(A,B,O);

initial
begin
    $display("AND Circuit");
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

    #128
    $display("A = %b", A);
    $display("B = %b", B); 
    $display("O = %b", O);


    $display(" ");
    $display("Test 2");

    
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

    #128
    $display("A = %b", A);
    $display("B = %b", B); 
    $display("O = %b", O);

    $display(" ");
    $display("Test 3");

    
    for(i = 0; i <= 63; i = i+1)
    begin
        A[i] = 1;
        B[i] = 1;
    end
    
    #128
    $display("A = %b", A);
    $display("B = %b", B); 
    $display("O = %b", O);


    $display(" ");
    $display("Test 4");

    
    for(i = 0; i <= 7; i = i+1)
    begin
        A[i] = 1;
        B[i] = 1;
    end
    for(i = 8; i <= 15; i = i+1)
    begin
        A[i] = 0;
        B[i] = 0;
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
    
    #128
    $display("A = %b", A);
    $display("B = %b", B); 
    $display("O = %b", O);
end

endmodule