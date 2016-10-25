// INSTRUCTION DECODER
module indec(in, opcode, op, ALUop, sximm5, sximm8,
  shift, readnum, writenum, nsel);

  input [15:0] in;
  input [1:0] nsel;
  output [15:0] sximm5, sximm8;
  output [2:0] opcode, readnum, writenum;
  output [1:0] op, ALUop, shift;

  wire [4:0] imm5 = in[4:0];
  wire [7:0] imm8 = in[7:0];

  wire [2:0] Rn = in[10:8], Rd = in[7:5], Rm = in[2:0];
  wire [2:0] mux_out;

  assign ALUop = in[12:11];

  // sign extenders for imm5 and imm8
  sxtend #(5, 16) SX0(imm5, sximm5);
  sxtend #(8, 16) SX1(imm8, sximm8);

  assign shift = in[4:3];

  // Rn Rd Rm Mux with selector being nsel
  MUX3 #(3) RMUX(Rn, Rd, Rm, nsel, mux_out);
  assign {readnum, writenum} = {mux_out, mux_out};

  assign {op, opcode} = {in[12:11], in[15:13]};

endmodule
