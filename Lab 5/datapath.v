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
                datapath_out);

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

  // output
  output [15:0] datapath_out;
  output status;

  // wires
  wire [15:0] data_in, data_out,
              RA_out, RB_out,
              shifter_out,
              ain, bin,
              ALU_out, ALU_status;

  // modules
  MUX2 #(16) M0(.a0(datapath_out), .a1(datapath_in), .select(vsel), .b(data_in));

  regfile #(16) RF(data_in, data_out, readnum, writenum, write, clk);

  register #(16) RA(.in(data_out), .out(RA_out), .load(loada), .clk(clk));
  register #(16) RB(.in(data_out), .out(RB_out), .load(loadb), .clk(clk));

  shifter #(16) S0(.in(RB_out), .out(shifter_out), .shift(shift));

  MUX2 #(16) MA(.a0(RA_out), .a1(16'b0), .select(asel), .b(ain));
  MUX2 #(16) MB(.a0(shifter_out), .a1({11'b0, datapath_in[4:0]}), .select(bsel), .b(bin));

  alu #(16) ALU(ain, bin, ALUop, ALU_out, ALU_status);

  register #(16) RC(.in(ALU_out), .out(datapath_out), .load(loadc), .clk(clk));
  register #(1) RS(.in(ALU_status), .out(status), .load(loads), .clk(clk));
endmodule
