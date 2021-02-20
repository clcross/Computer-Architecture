module instruction(clk, rst, addr, instruct); 
    input clk, rst; 
    input [31:0] addr; 
    output reg [31:0] instruct; 
    reg [31:0] mem [0:65535];

    // always @ (posedge clk, posedge rst) 
    // begin
    //     if (rst == 1)
    //     begin
    //         $readmemh("mov_movl_lw.mc", mem);
    //         // instruct <= mem[addr];
    //         // $display("mem in instructuon = %h", mem[addr]);
    //     end
    //     else if (rst == 0)
    //     begin
    //         instruct = mem[addr];
    //         // $display("addr in instructuon = %b", addr);
    //     end
    // end

    always @(posedge clk, posedge rst) begin
        if (rst == 1) begin
	    instruct <= 32'h00000000; //noop
            $readmemh ("cmp_ja.mc", mem);
	end 
    end
    
    always @(addr, negedge rst) begin
        if (rst == 0) begin
            #20 instruct <= mem[addr];
            $display("Moving instruct to: %h, %h", instruct, mem[addr]);
        end
    end

endmodule
