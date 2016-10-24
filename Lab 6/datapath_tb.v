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

  // stage 1
  reg loadpc, loadir, reset, mwrite, msel;

  // output
  wire [15:0] datapath_out;
  wire status;

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
                datapath_in,
                status,
                datapath_out,

                // lab 6 stage 1
                loadpc, loadir, reset, mwrite, msel);

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
    reset = 1; #5;
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

    // stop sim
    $stop;
  end
endmodule
