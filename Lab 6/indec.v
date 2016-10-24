// INSTRUCTION DECODER
module indec(
  in,
  opcode, op, ALUop,
  sximm5, sximm8,
  shift, readnum, writenum,
  nsel;
  );

  input [15:0] in;
  input [2:0] nsel;
  output [15:0] sximm5, sximm8;
  output [2:0] op, readnum, writenum;
  output [1:0] opcode, ALUop, shift;

  // shifter modules for sign extension
  shifter #(8)

  assign ALUop = in[12:11];
