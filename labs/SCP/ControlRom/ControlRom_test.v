module ControlRom_test();

reg [63:0]in;
wire [6:0]out;

integer i;

ControlRom DUT(in,out);

initial
begin
    $display("Control Rom");
    $display(" ");
    $display("Test 1");

    
    in <= 64'b0000000000000000000000000000000000000000000000000000000000010000;

    #1000
    $display("in = %b", in); 
    $display("out = %d%d%d%d%d%d%d", out[6], out[5], out[4], out[3], out[2], out[1], out[0]);

    $display(" ");
    $display("Test 2");

    
    
    in <= 64'b0001000000000000000000000000000000000000000000000000000000000000;
    

    #1000
    $display("in = %b", in); 
    $display("out = %d%d%d%d%d%d%d", out[6], out[5], out[4], out[3], out[2], out[1], out[0]);

    $display(" ");
    $display("Test 3");

    in <= 64'b0000000000000000000000000000000000000000000000001000000000000000;
    

    #1000
    $display("in = %b", in); 
    $display("out = %d%d%d%d%d%d%d", out[6], out[5], out[4], out[3], out[2], out[1], out[0]);


    $display(" ");
    $display("Test 4");

    
    
    in <= 64'b0000000000000000000000000000000000000000000000000000000000100000;
    

    #1000
    $display("in = %b", in); 
    $display("out = %d%d%d%d%d%d%d", out[6], out[5], out[4], out[3], out[2], out[1], out[0]);



    $display(" ");
    $display("Test 5");

    
    
    in <= 64'b0000000000000000001000110000000000000000000000000000000000100000;
    

    #1000
    $display("in = %b", in); 
    $display("out = %d%d%d%d%d%d%d", out[6], out[5], out[4], out[3], out[2], out[1], out[0]);
end

endmodule