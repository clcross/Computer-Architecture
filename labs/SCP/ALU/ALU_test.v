module ALU_test();

reg [63:0]A;
reg [63:0]B;

reg op;

wire [63:0]out;
wire eq;

integer i;

ALU DUT(A,B,op,out,eq);

initial
begin
    $display("ALU");
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

    op = 0;

    #128
    $display("opcode = %b", op); 
    $display("A = %b", A);
    $display("B = %b", B); 
    $display("equals? = %b", eq);
    $display("O = %b", out);


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
        B[i] = 0;
    end
    for(i = 16; i <= 47; i = i+1)
    begin
        A[i] = 0;
        B[i] = 1;
    end
    for(i = 48; i <= 63; i = i+1)
    begin
        A[i] = 0;
        B[i] = 0;
    end

    op = 1;

    #128
    $display("opcode = %b", op); 
    $display("A = %b", A);
    $display("B = %b", B); 
    $display("equals? = %b", eq);
    $display("O = %b", out);

    $display(" ");
    $display("Test 3");

    
    for(i = 0; i <= 63; i = i+1)
    begin
        A[i] = 1;
        B[i] = 1;
    end
    
    op = 1;

    #128
    $display("opcode = %b", op); 
    $display("A = %b", A);
    $display("B = %b", B); 
    $display("equals? = %b", eq);
    $display("O = %b", out);


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
    
    op = 1;

    #128
    $display("opcode = %b", op); 
    $display("A = %b", A);
    $display("B = %b", B); 
    $display("equals? = %b", eq);
    $display("O = %b", out);
end

endmodule