module Regfile(data_in, writenum, readnum, write, clk, data_out);
  input [15:0] data_in;
  input [2:0] writenum;
  input [2:0] readnum;
  input write;
  input clk;
  output [15:0] data_out;

  wire [7:0] preload, load;

  // modules
  Decoder #(3, 8) U1(writenum, preload);
  // TODO: CONTINUE FROM HERE
  // PDF 4/12

  assign load = preload & {8{write}};

endmodule

// n - bit width of data/I/O
module Register(in, load, clk, out);
  parameter n = 8;

  input [n - 1:0] in;
  input load;
  input clk;
  output [n - 1:0] out;

  wire [n - 1:0] D, Q;

  Mux2 #(1) U1(in, out, load, D);
  DFF #(16) U2(D, out, clk);
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
