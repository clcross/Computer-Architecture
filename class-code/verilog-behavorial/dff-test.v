module dff_test();

reg clk, rst, d;
output wire q;

dff DUT (clk,rst,d,q);

initial      clk = 0;
always #1000 clk = ~clk;

initial begin
    rst <= 1;
    d <= 0;
    #10000 // wait 10 clock to ensure everything is zero, also clk should now be 0.
    rst <= 0;
    #10000 // wait for global reset to clear.
    $display ("q = %d [clk = %d]\n", q, clk);
    d <= 1;
    #500
    $display ("q = %d [clk = %d]\n", q, clk);
    #500
    $display ("q = %d [clk = %d]\n", q, clk);
    #1
    $display ("q = %d [clk = %d]\n", q, clk);

    // VERY IMPORTANT, otherwise the simulation will NOT terminate!
    $finish();
end

endmodule
