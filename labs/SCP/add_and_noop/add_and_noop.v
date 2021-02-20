// pc=pc+1 done
// instruction done
// register done
// sign extend done
// 5 bit mux done
// 64 bit mux done
// 64 bit mux done
// ALU done
// Data Mem done 
// decoderv done
// Control Rom done
module add_and_noop(clk, rst);
    // all
    input clk, rst;

    // instruction mem
    reg [31:0] addr;
    wire [31:0] instruct;

    // counter
    wire [63:0] PC;

    // Control Rom
    wire [6:0] conOut; 

    // decoder
    wire [63:0] deOut;

    // sign extender1
    wire [63:0] signOut;

    // sign extender2
    wire [63:0] signDataOut;

    // 5 bit mux
    wire [4:0] muxOut5;

    // 64 bit mux
    wire [63:0] muxOut64;

    // 64 bit mux 2
    wire [63:0] muxOut64two;

    // registers
    wire [63:0] out1;
    wire [63:0] out2;

    // ALU
    wire eq;
    wire [63:0] ALUout;

    // data mem
    wire [31:0] dataOut;

    initial
    begin
        addr = 32'b00000000000000000000000000000000;
    end

    ProCount ProCounter(clk, rst, PC);
    instruction instructionMEM(clk, rst, addr, instruct);

    decoder decode(instruct[31:26], deOut);
    ControlRom CR(deOut, conOut);

    sign_extender16to64 SE(instruct[15:0], signOut);

    two_one_multi mux5(conOut[6], instruct[25:21], instruct[20:16], muxOut5);

    sixfour_two_one_multi mux64(conOut[5], signDataOut, ALUout, muxOut64);

    registerfile registerF(clk, rst, instruct[25:21], instruct[20:16], muxOut5, muxOut64, conOut[4], out1, out2);

    sixfour_two_one_multi mux64two(conOut[3], signOut, out2, muxOut64two);

    ALU ALU(out1, muxOut64two, conOut[2], ALUout, eq);

    dataMEM DM(clk, rst, ALUout, out2, conOut[1], conOut[0], dataOut);

    sign_extender16to64 SE2(dataOut[31:16], signDataOut);


    always @ (posedge clk, posedge rst) 
    begin
        if (rst == 0)
        begin
            // $display("PC = %b", PC);
            // $display("addr11111 = %b", addr);
            $display("register1 = %b", out1);
            $display("register2 = %b", out2);
            $display("read1 = %b", instruct[25:21]);
            $display("read2 = %b", instruct[20:16]);
            $display("writeto = %b", muxOut5);
            $display("write data = %b", muxOut64);
            $display("conOut = %b", conOut[4]);

            addr = PC[31:0];
        end
    end

    always @ (instruct) 
    begin
        if (instruct == 32'h2C200005)
        begin
           // $display("PC = %b", PC);
            // $display("addrmovl = %b", addr);
            // $display("register1 = %b", out1);
            // $display("register2 = %b", out2);
            // $display("deIN = %b", instruct[31:26]);
            // $display("deOut = %b", deOut);
            // $display("conOut = %b", conOut);
            // $display("register1 = %b", out1);
            // $display("register2 = %b", out2);
            // $display("read1 = %b", instruct[25:21]);
            // $display("read2 = %b", instruct[20:16]);
            // $display("writeto = %b", muxOut5);
            // $display("write data = %b", muxOut64);
            // $display("regEnable = %b", conOut[4]);

            // $display("muxEnable = %b", conOut[5]);
            // $display("muxsignDataOut = %b", signDataOut);
            // $display("DataOut = %b", dataOut);
            // $display("ALUout = %b", ALUout);
            // $display("regEnable = %b", conOut[4]);
            
            // $display("muxEnable = %b, signOut = %b, out2 = %b, muxOut = %b", conOut[3], instruct[15:0], out2, muxOut64two);

            // addr = PC[31:0];
            $display("mov/movl/lw, instruct = %h", instruct[31:0]);
            $display(" ");
            $display(" ");
            $display(" ");
        end
        if (instruct == 32'h10220000)
        begin
            // $display("PC = %b", PC);
            // $display("addradd = %b", addr);
            // $display("register1 = %b", out1);
            // $display("register2 = %b", out2);
            // $display("deIN = %b", instruct[31:26]);
            // $display("deOut = %b", deOut);
            // $display("conOut = %b", conOut);
            // $display("register1 = %b", out1);
            // $display("register2 = %b", out2);
            // $display("read1 = %b", instruct[25:21]);
            // $display("read2 = %b", instruct[20:16]);
            // $display("writeto = %b", muxOut5);
            // $display("write data = %b", muxOut64);
            // $display("regEnable = %b", conOut[4]);

            // $display("muxEnable = %b", conOut[5]);
            // $display("muxsignDataOut = %b", signDataOut);
            // $display("DataOut = %b", dataOut);
            // $display("ALUout = %b", ALUout);
            // $display("regEnable = %b", conOut[4]);

            // $display("muxEnable = %b, signOut = %b, out2 = %b, muxOut = %b", conOut[3], instruct[15:0], out2, muxOut64two);

            // addr = PC[31:0];
            $display("add, instruct = %h", instruct[31:0]);
            $display(" ");
            $display(" ");
            $display(" ");
        end
        if (instruct == 32'h90620000)
        begin
            // $display("PC = %b", PC);
            // $display("addrand = %b", addr);
            // $display("register1 = %b", out1);
            // $display("register2 = %b", out2);
            // $display("deIN = %b", instruct[31:26]);
            // $display("deOut = %b", deOut);
            // $display("conOut = %b", conOut);
            // $display("register1 = %b", out1);
            // $display("register2 = %b", out2);
            // $display("read1 = %b", instruct[25:21]);
            // $display("read2 = %b", instruct[20:16]);
            // $display("writeto = %b", muxOut5);
            // $display("write data = %b", muxOut64);
            // $display("regEnable = %b", conOut[4]);

            // $display("muxEnable = %b", conOut[5]);
            // $display("muxsignDataOut = %b", signDataOut);
            // $display("DataOut = %b", dataOut);
            // $display("ALUout = %b", ALUout);
            // $display("regEnable = %b", conOut[4]);

            // $display("muxEnable = %b, signOut = %b, out2 = %b, muxOut = %b", conOut[3], instruct[15:0], out2, muxOut64two);

            // addr = PC[31:0];
            $display("and, instruct = %h", instruct[31:0]);
            $display(" ");
            $display(" ");
            $display(" ");
        end
        if (instruct == 32'h00000000)
        begin
            // $display("PC = %b", PC);
            // $display("addrnoop = %b", addr);
            // $display("register1 = %b", out1);
            // $display("register2 = %b", out2);
            // $display("deIN = %b", instruct[31:26]);
            // $display("deOut = %b", deOut);
            // $display("conOut = %b", conOut);
            // $display("register1 = %b", out1);
            // $display("register2 = %b", out2);
            // $display("read1 = %b", instruct[25:21]);
            // $display("read2 = %b", instruct[20:16]);
            // $display("writeto = %b", muxOut5);
            // $display("write data = %b", muxOut64);
            // $display("regEnable = %b", conOut[4]);

            // $display("muxEnable = %b", conOut[5]);
            // $display("muxsignDataOut = %b", signDataOut);
            // $display("DataOut = %b", dataOut);
            // $display("ALUout = %b", ALUout);
            // $display("regEnable = %b", conOut[4]);

            // $display("muxEnable = %b, signOut = %b, out2 = %b, muxOut = %b", conOut[3], instruct[15:0], out2, muxOut64two);

            // addr = PC[31:0];
            $display("noop, instruct = %h", instruct[31:0]);
            $display(" ");
            $display(" ");
            $display(" ");
        end
        if (instruct == 32'hFC000000)
        begin
            // $display("PC = %b", PC);
            // $display("addrhalt = %b", addr);
            // $display("register1 = %b", out1);
            // $display("register2 = %b", out2);
            // $display("deIN = %b", instruct[31:26]);
            // $display("deOut = %b", deOut);
            // $display("conOut = %b", conOut);
            // $display("register1 = %b", out1);
            // $display("register2 = %b", out2);
            // $display("read1 = %b", instruct[25:21]);
            // $display("read2 = %b", instruct[20:16]);
            // $display("writeto = %b", muxOut5);
            // $display("write data = %b", muxOut64);
            // $display("regEnable = %b", conOut[4]);

            // $display("muxEnable = %b", conOut[5]);
            // $display("muxsignDataOut = %b", signDataOut);
            // $display("DataOut = %b", dataOut);
            // $display("ALUout = %b", ALUout);
            // $display("regEnable = %b", conOut[4]);

            // $display("muxEnable = %b, signOut = %b, out2 = %b, muxOut = %b", conOut[3], instruct[15:0], out2, muxOut64two);

            $display("halt, instruct = %h", instruct[31:0]);
            $display(" ");
            $display(" ");
            $display(" ");
            $finish();
        end
    end

endmodule
