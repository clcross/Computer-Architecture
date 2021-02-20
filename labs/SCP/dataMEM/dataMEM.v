module dataMEM (clk, rst, A, B, E, RW, O); 
    input clk, rst, E, RW; 
    input [63:0] A; 
    input [63:0] B;

    reg [31:0] mem [0:65535];

    output reg [31:0] O;

    always @ (posedge clk, posedge rst) 
    begin
        if (rst == 1)
        begin
            $readmemh("prg.bin", mem);
            O <= 0;
        end
        if (E == 1)
        begin
            if (RW == 1)
            begin
                mem[A] = B[31:0];
                O <= 0;
            end
            else
            begin
                O <= mem[A[31:0]];
            end
        end
        else
        begin
            O <= 0;
        end
    end

endmodule

