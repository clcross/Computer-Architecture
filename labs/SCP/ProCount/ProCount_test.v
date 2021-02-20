module ProCount_test();

reg clk, rst;
wire [7:0] count;

ProCount DUT(clk, rst, count); 

initial
begin
    clk <= 0;
end

always #1000 clk <= ~clk;

initial
begin
    $display("count test");
    $display(" ");

    rst <= 1;
    #1000
    rst <= 0;
    #30000

    $display("Halt? this should not be happening!!!");
    $finish();
end

endmodule
