// Data memory
// NOTICE: data memory reads from prg.bin!
module datamem(clk, rst, Ina, Inb, enable, readwrite, dataOut);

    input clk;
    input rst;
    input [63:0] Ina;
    input [63:0] Inb;
    input [0:0] enable;
    input [0:0] readwrite;

    reg [31:0] memory[0:65535];

    output [31:0] dataOut;

//TODO: Finish datamem

    always @(posedge clk, posedge rst) begin
        if (rst == 1) begin
            $readmemh ("prg.bin", memory);
	end 
    end

endmodule
