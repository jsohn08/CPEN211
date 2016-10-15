module alu(ain, bin, op, out, status);
  parameter k = 16;

  input [k - 1:0] ain, bin;
  input [1:0] op;
  output reg [k - 1:0] out;
  output status;

  // using logic gates
  // assign out =
  // ({k{!op}} & (ain + bin)) |
  // ({k{~op[1] & op[0]}} & (ain - bin)) |
  // ({k{op[1] & ~op[0]}} & (ain & bin)) |
  // ({k{&op}} & ain);

  // using case statements
  always @(*) begin
    case (op)
      2'b00: out = ain + bin;
      2'b01: out = ain - bin;
      2'b10: out = ain & bin;
      2'b11: out = ain;
      default: out = ain;
    endcase
  end

  assign status = !out;
endmodule
