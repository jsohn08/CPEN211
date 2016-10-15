module Regfile(data_in, data_out, readnum, writenum, write, clk);
  parameter k = 16;

  input [k - 1:0] data_in;
  input [2:0] writenum, readnum;
  input write;
  input clk;
  output [k - 1:0] data_out;

  wire [7:0] preload, load, read_select;
  wire [k - 1:0] rout0, rout1, rout2, rout3, rout4, rout5, rout6, rout7;

  // modules
  Decoder  #(3, 8) DEC0(writenum, preload);
  Decoder  #(3, 8) DEC1(readnum, read_select);
  Mux8     #(k)   M0(rout0, rout1, rout2, rout3, rout4, rout5, rout6, rout7, read_select, data_out);
  Register #(k)   R0(data_in, rout0, load[0], clk);
  Register #(k)   R1(data_in, rout1, load[1], clk);
  Register #(k)   R2(data_in, rout2, load[2], clk);
  Register #(k)   R3(data_in, rout3, load[3], clk);
  Register #(k)   R4(data_in, rout4, load[4], clk);
  Register #(k)   R5(data_in, rout5, load[5], clk);
  Register #(k)   R6(data_in, rout6, load[6], clk);
  Register #(k)   R7(data_in, rout7, load[7], clk);

  assign load = preload & {8{write}};
endmodule

// n - bit width of data/I/O
module Register(in, out, load, clk);
  parameter k = 8;

  input [k - 1:0] in;
  input load;
  input clk;
  output [k - 1:0] out;

  wire [k - 1:0] D, Q;

  Mux2 #(k) U0(out, in, load, D);
  DFF #(k) U1(D, out, clk);
endmodule

// d flip flop
// n - bit width of the IO
module DFF(in, out, clk);
  parameter k = 4;

  input [k - 1:0] in;
  input clk;
  output reg [k - 1:0] out;

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

// using one-hot for select
// k - width of IO
module Mux2OH(a0, a1, select, b);
parameter k = 1;

input [k - 1:0] a0, a1;
input [1:0] select;
output [k - 1:0] b;

assign b = ({k{select[0]}} & a0) | ({k{select[1]}} & a1);
endmodule

// binary select
// k - width of IO
module Mux2(a0, a1, select, b);
  parameter k = 1;

  input [k - 1:0] a0, a1;
  input select;
  output [k - 1:0] b;

  assign b = ({k{~select}} & a0) | ({k{select}} & a1);

endmodule

// k - width of IO
module Mux8(
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
