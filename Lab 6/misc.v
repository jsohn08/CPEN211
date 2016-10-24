module vDFF(clk,D,Q);
  parameter n=1;
  input clk;
  input [n-1:0] D;
  output [n-1:0] Q;
  reg [n-1:0] Q;

  always @(posedge clk)
    Q <= D;
endmodule

// based on lecture slides 7
// a - n wide binary input
// b - m wide one hot output
module decoder(a, b);
  parameter n = 3;
  parameter m = 8;

  input [n - 1:0] a;
  output [m - 1:0] b;

  // shift 1 to the left 'a' times
  wire [m - 1:0] b = 1 << a;
endmodule

// binary select - select a0 when select is 0
// k - width of IO
module MUX2(a0, a1, select, b);
  parameter k = 1;

  input [k - 1:0] a0, a1;
  input select;
  output [k - 1:0] b;

  assign b = select ? a1 : a0;
endmodule

// k - width of IO
module MUX8(
  a0, a1, a2, a3, a4, a5, a6, a7,
  select, b
  );
  parameter k = 1;

  input[k - 1:0] a0, a1, a2, a3, a4, a5, a6, a7;
  input[7:0] select;
  output[k - 1:0] b;

  assign b =
  ({k{select[0]}} & a0) |
  ({k{select[1]}} & a1) |
  ({k{select[2]}} & a2) |
  ({k{select[3]}} & a3) |
  ({k{select[4]}} & a4) |
  ({k{select[5]}} & a5) |
  ({k{select[6]}} & a6) |
  ({k{select[7]}} & a7);
endmodule

module plusplus(in, out);
  parameter k = 1;
  input [k-1:0] in;
  output reg [k-1:0] out;
  always @(in)
    assign out = in + 1;
endmodule
