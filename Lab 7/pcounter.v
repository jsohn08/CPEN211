module pcounter(
  tsel, incp,   // MUX selectors
  sximm8, A,    // 8 bit input
  execb, status, cond // branch unit input
  clk, reset,   // FSM
  pc_out);      // output

  input tsel, incp;
  input [7:0] sximm8, A;

  input execb;
  input [2:0] status, cond;

  input clk, reset;
  output pc_out;

  wire [7:0] pc_in, pc_out, pc_next, pctgt, pcrel;
  wire taken, loadpc;

  // pc assignments
  assign pcrel = sximm8 + pc_out;
  assign pctgt = tsel ? pcrel : A;
  assign pc_next = incp ? pc_out + 1: pctgt;

  // branching unit
  assign taken = 0; // TODO HERE
  assign loadpc = taken | incp;

  // reset program count or select pc_next
  assign pc_in = reset ? 8'b0 : loadpc ? : pc_next : pc_out;

  // vDDF for holding the current PC count
  vDFF #(8) PC(clk, pc_in, pc_out);
endmodule
