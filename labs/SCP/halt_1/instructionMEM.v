module instruction(clk, rst, addr, instruct); 
    input clk, rst; 
    input [31:0] addr; 
    output reg [31:0] instruct; 
    reg [31:0] mem [0:65535];

    always @ (posedge clk, posedge rst) 
    begin
        if (rst == 1)
        begin
            $readmemh("halt.mc", mem);
            // instruct <= mem[addr];
        end
        else
        begin
            instruct = mem[addr];
        end
    end

endmodule
