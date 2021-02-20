module cmp_ja_test();

reg clk, rst;

cmp_ja DUT(clk, rst); 

// initial
// begin
//     clk <= 1;
// end

// always #2000 clk <= ~clk;

initial
begin
    $display("cmp_ja test");
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
