module dataMEM(clk, rst, A, B, E, RW, O); 
    input clk;
    input rst;
    input [63:0] A;
    input [63:0] B;
    input E;
    input RW;

    reg [31:0] mem[0:65535];

    output [31:0] O;

    assign #20 O = (!rst && E) ? mem[A] : 32'hzzzzzzzz;

    always @(posedge clk, posedge rst)
    begin
        if (rst == 1)
        begin
            $readmemh ("mov_movs_sw.mc", mem);
	    end 
        if (RW && E)
        begin
            #20 mem[A] <= B;
            $display("dataOut from file = %b", B);
        end
    end

endmodule

