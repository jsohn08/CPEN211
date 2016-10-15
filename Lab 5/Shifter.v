module shifter(in, out, shift);
  parameter k = 16;

  input [k - 1:0] in;
  input [1:0] shift;
  output reg [k - 1:0] out;

  always @(*) begin
    case (shift)
      2'b00: out = in;
      2'b01: out = in << 1;
      2'b10: out = in >> 1;
      2'b11: out = {in[k - 1], in[k - 1:1]};
    endcase
  end
endmodule
