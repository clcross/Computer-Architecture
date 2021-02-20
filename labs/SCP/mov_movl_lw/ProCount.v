module ProCount(clk, rst, count); 
    input clk, rst; 
    output reg [7:0] count;

    always @ (posedge clk) 
    begin
        if (rst == 0)
        begin
            count = count + 1;
            $display("count = %b", count);
        end
        else if (rst == 1)
        begin
            count = 0;
            $display("count reset count = %b", count);
        end
    end

endmodule
