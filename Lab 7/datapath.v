module datapath (clk,
                readnum,
                vsel,
                loada,
                loadb,
                shift,
                asel,
                bsel,
                ALUop,
                loadc,
                loads,
                writenum,
                write,
                status,
                datapath_out,

                // lab 6 stage 1 addons
                loadpc, loadir, reset, mwrite, msel, ir_out,

                // lab 6 stage 2 addons
                sximm5, sximm8,

                // pccounter
                pcount_out);

  // clock input
  input clk;

  // fetch stage input
  input [2:0] readnum;
  input [1:0] vsel;
  input loada, loadb;

  // computation input
  input [1:0] shift, ALUop;
  input asel, bsel, loadc, loads;

  // writing back input
  input [2:0] writenum;
  input write;

  // PC + Mem control input
  input loadpc, loadir, mwrite, msel, reset;
  // output

  output reg [15:0] datapath_out;
  output [2:0] status;

  // wires
  // === DATAPATH WIRES (From lab 5) ===
  wire [15:0] data_in, data_out,  // data in and out of the regfile
              RA_out, RB_out,     // output of register A and B
              shifter_out,        // output of shifter
              ain, bin,           // inputs to the ALU
              ALU_out,            // output of the ALU
              RC_out;             // output of register C

  // === MEMORY (lab 6 stage 1) ===
  wire [15:0] mdata;              // data out from memory
  output [15:0] ir_out;            // output of the instruction register

  // === MODIFICATIONS (lab 6 stage 2) ===
  input [15:0] sximm5, sximm8;

  wire [7:0] pc_out, addr;
  wire [2:0] ALU_status;

  output [7:0] pcount_out;
  assign pcount_out = pc_out;

  // === STANDARD MODULES ===
  // data in selector MUX
  MUX4 #(16) M0(mdata, sximm8, {8'b0, pc_out}, RC_out, vsel, data_in);

  // register file
  regfile #(16) RF(data_in, data_out, readnum, writenum, write, clk);

  // RA and RB
  register #(16) RA(.in(data_out), .out(RA_out), .load(loada), .clk(clk));
  register #(16) RB(.in(data_out), .out(RB_out), .load(loadb), .clk(clk));

  // shifter on RB
  shifter #(16) S0(.in(RB_out), .out(shifter_out), .shift(shift));

  // Ain and Bin selector MUX
  assign ain = asel ? 16'b0 : RA_out;
  assign bin = bsel ? sximm5 : shifter_out;

  // computation
  alu #(16) ALU(ain, bin, ALUop, ALU_out, ALU_status);

  // register R and S
  register #(16) RC(.in(ALU_out), .out(RC_out), .load(loadc), .clk(clk));
  register #(3) RS(.in(ALU_status), .out(status), .load(loads), .clk(clk));

  // === MEMORY ===
  // program counter
  pcounter PC(loadpc, clk, reset, pc_out);

  // choose from PC or lower 8 bits of C
  assign addr = msel ? RC_out[7:0] : pc_out;

  // RAM module (addr for both read and write address)
  ram #(16, 8, "data.txt") MEM(clk, addr, addr, mwrite, RB_out, mdata);

  // instruction register
  vDFF #(16) IR(clk, loadir ? mdata : ir_out, ir_out);

  // assign data out
  always @(*) begin
    if (~reset) datapath_out = RC_out;
    else datapath_out = 16'b0;
  end

endmodule
