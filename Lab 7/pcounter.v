module pcounter(
  tsel, incp,   // MUX selectors
  sximm8, A,    // 8 bit input
  execb, status, cond, // branch unit input
  clk, reset,   // FSM
  pc_out);      // output

  input tsel, incp;
  input [7:0] sximm8, A;

  input execb;
  input [2:0] status, cond;

  input clk, reset;
  output pc_out;

  wire [7:0] pc_in, pc_out, pc_next, pctgt, pcrel;
  reg taken;
  wire loadpc;

  // pc assignments
  assign pcrel = sximm8 + pc_out;
  assign pctgt = tsel ? pcrel : A;

  // the guy she told you not to worry about
  assign pc_next = incp ? (pc_out + 1) : pctgt;

  // branching unit
  // combinational logic for taken
  always @(*) begin
    if (execb) begin
      case (cond)
        3'b000, 3'b111:  taken = 1; // for unconditional branch
        3'b001:  taken = status[0];
        3'b010:  taken = ~status[0];
        3'b011:  taken = status[1] ^ status[2];
        3'b100:  taken = (status[1] ^ status[2]) & status[0];
        default: taken = 0;
      endcase
      end
    else taken = 0;
  end

  assign loadpc = taken | incp;

  // reset program count or select pc_next or current pc
  assign pc_in = reset ? 8'b0 : (loadpc ? pc_next : pc_out);

  // vDDF for holding the current PC count
  vDFF #(8) PC(clk, pc_in, pc_out);
endmodule
