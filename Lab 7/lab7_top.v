module lab7_top(KEY, SW, LEDR, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, CLOCK_50);
  input [3:0] KEY;
  input [9:0] SW;
  input CLOCK_50;
  output [9:0] LEDR;
  output [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;

  // inverted keys
  wire reset = ~KEY[1];
  // wire clk = ~KEY[0];
  wire clk = CLOCK_50;

  wire [15:0] instructions_in, sximm5, sximm8;
  wire [2:0] opcode, readnum, writenum;
  wire [1:0] op, ALUop, shift, nsel;

  wire [1:0] vsel;

  wire write, asel, bsel, loada, loadb, laodc, loads;
  wire loadir, mwrite, msel;

  wire [2:0] status;
  // wire [15:0] datapath_out;
  wire [15:0] R0_out;

  wire [4:0] state;
  wire [7:0] pc;

  // lab 7
  wire [2:0] cond;
  wire tsel, incp, execb;

  // instruction decoder module
  indec ID(instructions_in, opcode, op, ALUop, sximm5, sximm8,
    shift, readnum, writenum, nsel, cond);

  datapath DP(clk, readnum, vsel, loada, loadb, shift, asel, bsel,
  ALUop, loadc, loads, writenum, write, status, R0_out,
  loadir, reset, mwrite, msel, instructions_in,
  sximm5, sximm8, tsel, incp, execb, cond, pc);

  cpu CPU(opcode, op, reset, clk,
    loadir, msel, mwrite, nsel,
    vsel, write, asel, bsel, loada, loadb, loadc, loads,
    tsel, incp, execb, state);

  // seven segment modules (from lab5)
  // sseg H0(datapath_out[3:0],   HEX0);
  // sseg H1(datapath_out[7:4],   HEX1);
  // sseg H2(datapath_out[11:8],  HEX2);
  // sseg H3(datapath_out[15:12], HEX3);
  sseg H0(R0_out[3:0],   HEX0);
  sseg H1(R0_out[7:4],   HEX1);
  sseg H2(R0_out[11:8],  HEX2);
  sseg H3(R0_out[15:12], HEX3);


  // for pc
  sseg H4(pc[3:0], HEX4);
  sseg H5(pc[7:4], HEX5);

  // [9:7] LEDs are for status
  assign LEDR[9:7] = status;

  // [3:0] are for states
  assign LEDR[4:0] = state;
endmodule

// seven segment modules (from lab5)
module sseg(in,segs);
  input [3:0] in;
  output reg [6:0] segs;

  // easier for the seven segment things
  // numbers
  `define ZERO  7'b1000000
  `define ONE   7'b1111001
  `define TWO   7'b0100100
  `define THREE 7'b0110000
  `define FOUR  7'b0011001
  `define FIVE  7'b0010010
  `define SIX   7'b0000010
  `define SEVEN 7'b1111000
  `define EIGHT 7'b0000000
  `define NINE  7'b0010000

  // letters
  `define A     7'b0001000
  `define B     7'b0000011
  `define C     7'b1000110
  `define D     7'b0100001
  `define E     7'b0000110
  `define F     7'b0001110

  always @(*) begin
    case (in)
      4'b0000: segs = `ZERO;
      4'b0001: segs = `ONE;
      4'b0010: segs = `TWO;
      4'b0011: segs = `THREE;
      4'b0100: segs = `FOUR;
      4'b0101: segs = `FIVE;
      4'b0110: segs = `SIX;
      4'b0111: segs = `SEVEN;
      4'b1000: segs = `EIGHT;
      4'b1001: segs = `NINE;
      4'b1010: segs = `A;
      4'b1011: segs = `B;
      4'b1100: segs = `C;
      4'b1101: segs = `D;
      4'b1110: segs = `E;
      4'b1111: segs = `F;
    endcase
  end
endmodule
