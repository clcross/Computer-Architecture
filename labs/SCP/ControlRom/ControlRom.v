module ControlRom(in, out);
    input [63:0] in; 
    output reg [6:0] out; 
    output reg [6:0] out1; 
    output reg [6:0] out2; 
    output reg [6:0] out3; 
    output reg [6:0] out4; 
    output reg [6:0] out5; 
    output reg [6:0] out6; 
    output reg [6:0] out7; 
    output reg [6:0] out8; 
    
    always @*
    begin
        if(in == 64'b0000000000000000000000000000000000000000000000000000000000010000) // 4
        begin
            // out <= 011100x;
            // out1[0] <= x;
            out1[1] <= 0;
            out1[2] <= 0;
            out1[3] <= 1;
            out1[4] <= 1;
            out1[5] <= 1;
            out1[6] <= 0;
            out <= out1;
        end
        else if(in == 64'b0000000000000000000000000000000000000001000000000000000000000000) // 24
        begin
            // out2 <= 011110x;
            // out2[0] <= x;
            out2[1] <= 0;
            out2[2] <= 1;
            out2[3] <= 1;
            out2[4] <= 1;
            out2[5] <= 1;
            out2[6] <= 0;
            out <= out2;
        end
        else if(in == 64'b0000000000000000000000000000000000000000000000000000100000000000) // 11
        begin
            // out3 <= 0010010;
            out3[0] <= 0;
            out3[1] <= 1;
            out3[2] <= 0;
            out3[3] <= 0;
            out3[4] <= 1;
            out3[5] <= 0;
            out3[6] <= 0;
            out <= out3;
        end
        else if(in == 64'b0000000000000000000000000000000000000000000000000001000000000000) // 12
        begin
            // out4 <= xx00011;
            out4[0] <= 1;
            out4[1] <= 1;
            out4[2] <= 0;
            out4[3] <= 0;
            out4[4] <= 0;
            // out4[5] <= x;
            // out4[6] <= x;
            out <= out4;
        end
        else if(in == 64'b0001000000000000000000000000000000000000000000000000000000000000) // 60
        begin
            // out5 <= 0x01x0x;
            // out5[0] <= x;
            out5[1] <= 0;
            // out5[2] <= x;
            out5[3] <= 1;
            out5[4] <= 0;
            // out5[5] <= x;
            out5[6] <= 0;
            out <= out5;
        end
        else if(in == 64'b0000000000000000000000000000000000000000000000001000000000000000) // 15
        begin
            // out6 <= 0x0xx0x;
            // out6[0] <= x;
            out6[1] <= 0;
            // out6[2] <= x;
            // out6[3] <= x;
            out6[4] <= 0;
            // out6[5] <= x;
            out6[6] <= 0;
            out <= out6;
        end
        else if(in == 64'b0000000000000000000000000000000000000000000000000000000000100000) // 5
        begin
            // out7 <= 011xx0x;
            // out7[0] <= x;
            out7[1] <= 0;
            // out7[2] <= x;
            // out7[3] <= x;
            out7[4] <= 1;
            out7[5] <= 1;
            out7[6] <= 0;
            out <= out7;
        end
        else 
        begin
            // out8 <= 0000000;
            out8[0] <= 0;
            out8[1] <= 0;
            out8[2] <= 0;
            out8[3] <= 0;
            out8[4] <= 0;
            out8[5] <= 0;
            out8[6] <= 0;
            out <= out8;
        end
    end

endmodule
