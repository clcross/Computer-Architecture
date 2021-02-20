module mov_movs_sw_test();

reg clk, rst;

mov_movs_sw DUT(clk, rst); 

// initial
// begin
//     clk <= 1;
// end

// always #2000 clk <= ~clk;

initial
begin
    $display("mov_movs_sw test");
    $display(" ");

    // rst <= 1;
    // #2000
    // rst <= 0;
    // #20000
    // rst <= 1;
    // #2000

    rst <= 1;
    #2000
    clk <= 1;
    #2000
    clk <= 0;
    #2000
    rst <= 0;
    #2000
    clk <= 1;
    #2000
    clk <= 0;
    #2000
    clk <= 1;
    #2000
    clk <= 0;
    #2000
    clk <= 1;
    #2000
    clk <= 0;
    #2000
    clk <= 1;
    #2000
    clk <= 0;
    #2000
    clk <= 1;
    #2000

    $display("this should not be happening!!!");
    $finish();
end

endmodule
