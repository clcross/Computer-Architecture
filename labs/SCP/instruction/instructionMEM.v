module instruction(clk, rst, addr, instruct); 
    input clk, rst; 
    input [31:0] addr; 
    output reg [31:0] instruct; 
    reg [31:0] mem [0:65535];

    initial
        $readmemh("prg.bin", mem);

    always @ (posedge clk, posedge rst) 
    begin
        if (rst == 0)
        begin
            instruct <= mem[addr];
        end
        else
        begin
            instruct <= 0;
        end
    end

endmodule
