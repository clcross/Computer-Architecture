module mov_movl_lw_test();

reg clk, rst;

mov_movl_lw DUT(clk, rst); 

// initial
// begin
//     clk <= 1;
//     rst <= 1;
// end

// always #2000 clk <= ~clk;

initial
begin
    $display("mov/movl/lw test");
    $display(" ");

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


    $display("this should not be happening!!!");
    $finish();
end

endmodule
