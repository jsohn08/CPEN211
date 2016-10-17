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
              A_in, B_in,
              ALU_out, ALU_status;

  // modules
  MUX2 #(16) M0(datapath_out, datapath_in, vsel, data_in);

  regfile #(16) RF(data_in, data_out, readnum, writenum, write, clk);

  register #(16) RA(data_out, RA_out, loada, clk);
  register #(16) RB(data_out, RB_out, loadb, clk);

  shifter #(16) S0(RB_out, shifter_out, shift);

  MUX2 #(16) MA(RA_out, 16'b0, asel, A_in);
  MUX2 #(16) MB(shifter_out, {11'b0, datapath_in[4:0]}, bsel, B_in);

  alu #(16) ALU(A_in, B_in, ALUop, ALU_out, ALU_status);

  register #(16) RC(ALU_out, datapath_out, loadc, clk);
  register #(1) RS(ALU_status, status, loads, clk);
endmodule
