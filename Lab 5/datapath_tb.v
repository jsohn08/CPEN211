module datapath_tb()

  // clock
  reg clk;

  // fetch
  reg [2:0] readnum;
  reg vsel, loada, loadb;

  // excute
  reg [1:0] shift, ALUop;
  reg asel, bsel, loadc, loads;

  // writeback
  reg [15:0] datapath_in;
  reg [2:0] writenum;
  reg write;

  // output
  wire [15:0] datapath_out;
  wire status;

  // datapath module
  datapath DUT(clk, readnum, writenum, write, ALUop, loada, loadb, loadc, asel, bsel,
    shift, datapath_in, vsel, loads, datapath_out, status);

  initial begin
    forever begin
      clk = 1; #5;
      clk = 0; #5;
    end
  end

  initial begin
    // store 7 in R0
    datapath_in = 16'd7;
    writenum = 3'd0;
    write = 1;
    
  end
