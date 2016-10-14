module Regfile(data_in, writenum, readnum, write, clk, data_out);
  input [15:0] data_in;
  input [2:0] writenum;
  input [2:0] readnum;
  input write;
  input clk;
  output [15:0] data_out;

endmodule

module Register(in, load, clk, out);
  input [15:0] in;
  input load;
  input clk;
  input out;
endmodule

// d flip flop
// n - bit width of the IO
module DFF(in, out, clk);
  parameter n = 4;

  input [n - 1:0] in;
  input clk;
  output reg [n - 1:0] out;

  always @(posedge clk) out = in;
endmodule

// based on lecture slides 7
// a - n wide binary input
// b - m wide one hot output
module Decoder(a, b);
  parameter n = 3;
  parameter m = 8;

  input [n - 1:0] a;
  output [m - 1:0] b;

  // shift 1 to the left 'a' times
  wire [m - 1:0] b = 1 << a;
endmodule

// k - width of IO
module Mux2(a0, a1, select, b);
  parameter k = 1;

  input [k - 1:0] a0, a1;
  input select;
  output [k - 1:0] b;

  assign b = (!{k{select}} & a0) | ({k{select}} & a1);
endmodule

// alternate mux2 using one-hot
// k - width of IO
module Mux2OH(a0, a1, select, b);
  parameter k = 1;

  input [k - 1:0] a0, a1;
  input [1:0] select;
  output [k - 1:0] b;

  assign b = ({k{select[0]}} & a0) | ({k{select[1]} & a1);
endmodule
