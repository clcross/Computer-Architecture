module sign_extender16to64_test();

reg [15:0] IN;
wire [63:0] OUT;
integer i;
sign_extender16to64 DUT(IN, OUT);

initial
begin

    $display("16 to 64bit sign extender");
    for(i = 0; i <= 7; i = i+1)
    begin
        IN[i] = 1;
    end
    for(i = 8; i <= 15; i = i+1)
    begin
        IN[i] = 0;
    end
    #7
    $display("16 = %b", IN);
    $display("64 = %b", OUT);

end

endmodule