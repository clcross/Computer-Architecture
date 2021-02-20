module simple_test();

reg A, B;
wire Equal, Alarger, Blarger;

Compare1 DUT(A, B, Equal, Alarger, Blarger);

initial
begin
    A <= 0;
    B <= 0;
    #7
    $display("Equal = %d, Alarger = %d, Blarger = %d", Equal, Alarger, Blarger);
end

endmodule

