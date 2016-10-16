module datapath_tb();

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
    #1;

    // store 7 in R0
    write = 1;
    vsel = 0;
    datapath_in = 16'd7;
    writenum = 3'd0;
    #10;

    // store 2 in R1
    datapath_in = 16'd2;
    writenum = 3'd1;
    #10;
    write = 0;

    // fetch R0 to RB (for shifting)
    readnum = 3'd0;
    loada = 0;
    loadb = 1;
    #10;
    loadb = 0;

    // fetch R1 to RA
    readnum = 3'd1;
    loada = 1;
    loadb = 0;
    #10;
    loada = 0;

    // shift RB by 1 and add
    shift = 2'd01;
    ALUop = 2'd0;
    asel = 0;
    bsel = 0;
    loadc = 1;
    loads = 1;
    #10;
    loadc = 0;
    loads = 0;

    // store RC to R2
    write = 1;
    vsel = 1;
    writenum = 3'd2;
    #10;

    // stop sim
    $stop;
  end
endmodule
