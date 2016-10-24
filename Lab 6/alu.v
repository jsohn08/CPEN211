module alu(ain, bin, op, out, status);
  parameter k = 16;

  input [k - 1:0] ain, bin;
  input [1:0] op;
  output reg [k - 1:0] out;
  output [2:0] status;

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

  // three bits for status:
  // [0] - HIGH if the result is 0
  // [1] - HIGH if the result is negative (last bit is 1)
  // [2] - HIGH if there is overflow (lab 7)
  assign status = {1'b1, out[k-1], !out};
endmodule
