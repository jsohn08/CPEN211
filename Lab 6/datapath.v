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
                datapath_in,
                status,
                datapath_out,

                // lab 6 stage 1 addons
                loadpc, loadir, reset, mwrite, msel);

  // clock input
  input clk;

  // fetch stage input
  input [2:0] readnum;
  input vsel, loada, loadb;

  // computation input
  input [1:0] shift, ALUop;
  input asel, bsel, loadc, loads;

  // writing back input
  input [15:0] datapath_in;
  input [2:0] writenum;
  input write;

  // PC + Mem control input
  input loadpc, loadir, mwrite, msel, reset;
  // output

  output [15:0] datapath_out;
  output status;

  // wires
  wire [15:0]
              // === DATAPATH WIRES (From lab 5) ===
              data_in, data_out,  // data in and out of the regfile
              RA_out, RB_out,     // output of register A and B
              shifter_out,        // output of shifter
              ain, bin,           // inputs to the ALU
              ALU_out,            // output of the ALU
              RC_out,             // output of register C

              // === MEMORY (lab 6 stage 1) ===
              mdata,              // data out from memory
              ir_out;             // output of the instruction register

  wire [7:0] loadpc_out, pc_in, pc_out, addr;

  wire ALU_status;

  // modules
  MUX2 #(16) M0(.a0(RC_out), .a1(datapath_in), .select(vsel), .b(data_in));

  regfile #(16) RF(data_in, data_out, readnum, writenum, write, clk);

  register #(16) RA(.in(data_out), .out(RA_out), .load(loada), .clk(clk));
  register #(16) RB(.in(data_out), .out(RB_out), .load(loadb), .clk(clk));

  shifter #(16) S0(.in(RB_out), .out(shifter_out), .shift(shift));

  MUX2 #(16) MA(.a0(RA_out), .a1(16'b0), .select(asel), .b(ain));
  MUX2 #(16) MB(.a0(shifter_out), .a1({11'b0, datapath_in[4:0]}), .select(bsel), .b(bin));

  alu #(16) ALU(ain, bin, ALUop, ALU_out, ALU_status);

  register #(16) RC(.in(ALU_out), .out(RC_out), .load(loadc), .clk(clk));
  register #(1) RS(.in(ALU_status), .out(status), .load(loads), .clk(clk));

  // ****** memory ******
  // increment program count by 1 if loadpc is HIGH
  assign loadpc_out = loadpc ? pc_out + 1 : pc_out;

  // reset program count
  assign pc_in = reset ? 8'b0 : loadpc_out;

  // vDDF for holding the current PC count
  vDFF #(8) PC(clk, pc_in, pc_out);

  // choose from PC or lower 8 bits of C
  assign addr = msel ? RC_out[7:0] : pc_out;

  // RAM module (addr for both read and write address)
  ram #(16, 8, "data.txt") MEM(clk, addr, addr, mwrite, RB_out, mdata);

  // instruction register
  vDFF #(16) IR(clk, loadir ? mdata : ir_out, ir_out);

  // assign data out
  assign datapath_out = RC_out;
endmodule
