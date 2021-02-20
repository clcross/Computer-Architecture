module halt_1_test();

reg clk, rst; 

halt_1 DUT(clk, rst); 

initial
begin
    $display("Halt test");
    $display(" ");

    rst <= 1;
    clk <= 0;
    #3000

    rst <= 0;
    clk <= 1;
    #3000
    $display("Halt? this should not happen");
end

endmodule
