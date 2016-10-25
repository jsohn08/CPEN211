module lab6_top(reset, clk);
  // TODO: wire these as switches
  //input reset, clk;
  input reset, clk;

  wire [15:0] instructions_in, sximm5, sximm8;
  wire [2:0] opcode, readnum, writenum;
  wire [1:0] op, ALUop, shift, nsel;

  wire [1:0] vsel;

  wire write, asel, bsel, loada, loadb, laodc, loads;
  wire loadpc, loadir, mwrite, msel;

  wire [2:0] status;
  wire [15:0] datapath_out;

  // instruction decoder module
  indec ID(instructions_in, opcode, op, ALUop, sximm5, sximm8,
    shift, readnum, writenum, nsel);

  // TODO: CONTINUE IMPLEMENTING FSM AND CPU.V FROM HERE
  datapath DP(clk, readnum, vsel, loada, loadb, shift, asel, bsel,
  ALUop, loadc, loads, writenum, write, status, datapath_out,
  loadpc, loadir, reset, mwrite, msel, instructions_in, sximm5, sximm8);

  cpu CTRL(opcode, op, reset, clk,
    loadir, loadpc, msel, mwrite, nsel,
    vsel, write, asel, bsel, loada, loadb, loadc, loads);

endmodule
