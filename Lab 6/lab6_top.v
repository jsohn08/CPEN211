module lab6_top();
  // TODO: wire these as switches
  //input reset, clk;
  wire reset, clk;

  wire [15:0] instructions_in, sximm5, sximm8;
  wire [2:0] op, readnum, writenum, nsel;
  wire [1:0] opcode, ALUop, shift;

  wire vsel, write, asel, bsel, loada, loadb, laodc, loads;

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
