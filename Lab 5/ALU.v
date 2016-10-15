module ALU(ain, bin, op, out, status);
  parameter k = 16;

  input [k - 1:0] ain, bin;
  input [1:0] op;
  output [k - 1:0] out;
  output status;

  assign out =
  ({k{!op}} & (ain + bin)) |
  ({k{~op[1] & op[0]}} & (ain - bin)) |
  ({k{op[1] & ~op[0]}} & (ain & bin)) |
  ({k{&op}} & ain);
  assign status = !out;
endmodule
