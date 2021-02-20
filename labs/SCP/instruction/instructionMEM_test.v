module instruction_test();

reg clk, rst; 
reg [31:0] addr; 
output [31:0] instruct; 
reg [31:0] mem [0:65535];

instruction DUT(clk, rst, addr, instruct); 

initial
begin
    $display("Instruction Memory");
    $display(" ");
    $display("Test 1");
    clk <= 0;
    clk <= 1;

    rst <= 0;
    addr = 32'b00000000000000000000000000000001;
    #21
    $display("instruction = %b", instruct);


    $display(" ");
    $display("Test 3");
    clk <= 0;
    clk <= 1;

    rst <= 0;
    addr = 32'b00000000000000000000000000000011;
    #21
    $display("instruction = %b", instruct);


    $display(" ");
    $display("Test 4");
    clk <= 0;
    clk <= 1;
    
    rst <= 1;
    addr = 32'b00000000000000000000000010010000;
    #21
    $display("instruction = %b", instruct);

end

endmodule
