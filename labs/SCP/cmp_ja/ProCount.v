module ProCount(clk, rst, PCinput, count); 
    input clk, rst; 
    input [63:0] PCinput;
    output reg [63:0] count;

    always @ (posedge clk) 
    begin
        if (rst == 0)
        begin
            count = PCinput;
            $display("count = %b", count);
        end
        else if (rst == 1)
        begin
            count = 0;
            // $display("count reset count = %b", count);
        end
    end

endmodule
