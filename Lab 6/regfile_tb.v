// ================= register File TEST ================= //
module regfile_tb();
  reg [15:0] sim_data_in;
  reg [2:0] sim_writenum, sim_readnum;
  reg sim_write, sim_clk;
  wire [15:0] sim_data_out;

  // module
  regfile #(16) DUT(sim_data_in, sim_data_out, sim_readnum, sim_writenum, sim_write, sim_clk);

  // clock
  initial begin
    sim_clk = 0;
    forever begin
      #5; sim_clk = 1;
      #5; sim_clk = 0;
    end
  end

  // other tests
  initial begin
    // initial states
    sim_writenum = 3'd0;
    sim_readnum = 3'd0;
    sim_write = 0;
    #5;

    // store 20 in R0
    sim_write = 1;
    sim_data_in = 16'd20;
    sim_writenum = 3'd0;
    #10;

    // store 42 in R7
    sim_data_in = 16'd42;
    sim_writenum = 3'd7;
    #10;

    // store 3 in R1
    sim_data_in = 16'd3;
    sim_writenum = 3'd1;
    #10;

    // read from R0 (should not depend on clock)
    sim_write = 0;
    sim_readnum = 3'd0;

    // read from R1
    #5; sim_readnum = 3'd1;

    // read from R7
    #5; sim_readnum = 3'd7;
    #5;

    // stop simulation
    $stop;
  end
endmodule
