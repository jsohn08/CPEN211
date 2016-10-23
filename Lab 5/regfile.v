// k - bit width of the data to store
module regfile(data_in, data_out, readnum, writenum, write, clk);
  parameter k = 16;

  input [k - 1:0] data_in;
  input [2:0] writenum, readnum;
  input write;
  input clk;
  output [k - 1:0] data_out;

  wire [7:0] preload, load, read_select;
  wire [k - 1:0] rout0, rout1, rout2, rout3, rout4, rout5, rout6, rout7;

  // modules
  decoder  #(3, 8) DEC0(writenum, preload);
  decoder  #(3, 8) DEC1(readnum, read_select);
  MUX8     #(k)   M0(rout0, rout1, rout2, rout3, rout4, rout5, rout6, rout7, read_select, data_out);
  register #(k)   R0(data_in, rout0, load[0], clk);
  register #(k)   R1(data_in, rout1, load[1], clk);
  register #(k)   R2(data_in, rout2, load[2], clk);
  register #(k)   R3(data_in, rout3, load[3], clk);
  register #(k)   R4(data_in, rout4, load[4], clk);
  register #(k)   R5(data_in, rout5, load[5], clk);
  register #(k)   R6(data_in, rout6, load[6], clk);
  register #(k)   R7(data_in, rout7, load[7], clk);

  assign load = preload & {8{write}};
endmodule

// n - bit width of data/I/O
// TODO: FOUND THE ISSUE
module register(in, out, load, clk);
  parameter k = 8;

  input [k - 1:0] in;
  input load;
  input clk;
  output [k - 1:0] out = reg_out;

  wire [k - 1:0] mux_out;
  wire [k - 1:0] reg_out;

  MUX2 #(k) U0(reg_out, in, load, mux_out);
  DFF #(k) U1(mux_out, reg_out, clk);
endmodule

// d flip flop
// n - bit width of the IO
module DFF(D, Q, clk);
  parameter k = 4;

  input [k - 1:0] D;
  input clk;
  output reg [k - 1:0] Q;

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
