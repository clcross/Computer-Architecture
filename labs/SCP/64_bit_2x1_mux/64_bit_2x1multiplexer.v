module sixfour_two_one_multi (S, A, B, C);
  input wire [63:0] A;
  input wire [63:0] B;
  input wire S;
  output wire [63:0] C;

  wire notS;
  wire [63:0] notSandA;
  wire [63:0] SandB;

  assign notSandA = {64{~S}} & A;
  assign SandB = {64{S}} & B;
  assign C = notSandA | SandB;

endmodule