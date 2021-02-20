module ProCount(clk, rst, count); 
    input clk, rst; 
    output reg [7:0] count;

    always @ (posedge clk) 
    begin
        if (rst == 0)
        begin
            count <= count + 1;
        end
        else
        begin
            count <= 0;
        end
    end

endmodule
