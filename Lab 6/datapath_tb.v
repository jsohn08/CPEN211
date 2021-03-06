module datapath_tb();

  // clock
  reg clk;

  // fetch
  reg [2:0] readnum;
  reg [1:0] vsel;
  reg loada, loadb;

  // excute
  reg [1:0] shift, ALUop;
  reg asel, bsel, loadc, loads;

  // writeback
  reg [15:0] datapath_in;
  reg [2:0] writenum;
  reg write;

  // stage 1
  reg loadpc, loadir, reset, mwrite, msel;

  // output
  wire [15:0] datapath_out;
  wire [2:0] status;
  wire [15:0] ir_out;

  // sign extended
  wire [15:0] sximm5;
  wire [15:0] sximm8;

  // datapath module
  datapath DUT( clk,
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
                sximm5, sximm8);

  initial begin
    forever begin
      clk = 0; #5;
      clk = 1; #5;
    end
  end
  initial begin
    // setting contorl inputs to 0
    msel = 0;
    mwrite = 0;
    loadpc = 0;
    loadir = 0;

    // quick reset
    reset = 1; #6;
    reset = 0;

    // clock cycle i-1
    #10;

    repeat (2) begin
      // clock cycle i
      #5;
      loadir = 1;
      #5;

      // clock cycle i+1
      #5;
      loadir = 0;
      loadpc = 1;
      #5;

      // clock cycle i+2
      #5;
      loadpc = 0;
      #5;
    end

    // testing writing to memory
    // clock cycle i
    msel = 1;
    mwrite = 1;
    loadpc= 0;
    loadir = 0;
    #10

    // clock cycle i+1
    mwrite = 0; #10;

    // clock cycle i+2
    #10;

    // testing writing to memory
    // clock cycle i
    msel = 1;
    mwrite = 1;
    loadpc= 0;
    loadir = 0;
    #10

    // clock cycle i+1
    mwrite = 0; #10;

    // clock cycle i+2
    #10;

    // stop sim
    $stop;
  end
endmodule
