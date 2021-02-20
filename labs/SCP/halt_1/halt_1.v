module halt_1(clk, rst); 
    input clk, rst; 
    reg [31:0] addr; 
    wire [7:0] PC; 
    wire [31:0] instruct;

    initial
    begin
        addr = 32'b00000000000000000000000000000000;
    end

    ProCount ProCounter(clk, rst, PC);
    instruction instructionMEM(clk, rst, addr, instruct);

    always @ (posedge clk, posedge rst) 
    begin
        if (instruct == 32'hFC000000)
        begin
            $display("halt, instruct = %h", instruct[31:0]);
            $finish();
        end
    end

endmodule
