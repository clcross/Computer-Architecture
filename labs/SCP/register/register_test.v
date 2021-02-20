// found
module registerfile_test();
  
  reg writeenable, clk, rst;
  reg [4:0] read1; 
  reg [4:0] read2; 
  reg [4:0] writeto;
  reg [63:0] writedat;
  output [63:0] out1, out2;

  wire [63:0] A, B;
  
  registerfile DUT(clk, rst, read1, read2, writeto, writedat, writeenable, out1, out2);
  
  initial 
  begin
    clk <= 0;
  end

  always #5 clk <= ~clk;
  
  initial
  begin
    $display("Register File");
    $display(" ");
    $display("Test 1 writeto = 00000");

    rst <= 1;
    writeenable <= 1;
    writeto <= 5'b00000;
    writedat = 64'b0000000000000000000000000000000000011000000000110011111110000000;
    #100


    $display(" ");
    $display("Test 2 writeto = 11111");

    rst <= 0;
    writeenable <= 1;
    writeto <= 5'b11111;
    writedat = 64'b0000000000000000000000011000000100001110000000111111111110000000;
    #100


    $display(" ");
    $display("Test 3 read1 = 00000, read2 = 11111");
    read1 <= 5'b00000;
    read2 <= 5'b11111;
    
    writeenable <= 0;
    #100
    $display("out1 = %b", out1);
    $display("out2 = %b", out2);

    $finish();
  end
  
endmodule
  

