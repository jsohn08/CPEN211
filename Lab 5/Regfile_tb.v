// ================= MUX2 TEST ================= //
module Mux2_tb();
  reg [1:0] sim_a0, sim_a1;
  reg select;
  wire [1:0] sim_b;

  // device under test
  Mux2 #(2) DUT(sim_a0, sim_a1, select, sim_b);

  // test
  initial begin
    // initial state
    sim_a0 = 2'b11;
    sim_a1 = 2'b01;
    select = 0;

    // select change
    #5; select = 1;
    #5; select = 0;

    // input data change
    sim_a0 = 2'b10;
    sim_a1 = 2'b00;
    #5; select = 1;
    #5; select = 0;
  end
endmodule

// ================= MUX 8 TEST ================= //
module Mux8_tb();
  reg [2:0] sim_a0, sim_a1, sim_a2, sim_a3, sim_a4, sim_a5, sim_a6, sim_a7;
  reg [7:0] sim_select;
  wire [2:0] sim_b;

  // device under test
  Mux8 #(3) DUT(sim_a0, sim_a1, sim_a2, sim_a3, sim_a4, sim_a5, sim_a6, sim_a7,
    sim_select, sim_b);

  // test
  initial begin
    // initial state
    sim_a0 = 3'd0;
    sim_a1 = 3'd1;
    sim_a2 = 3'd2;
    sim_a3 = 3'd3;
    sim_a4 = 3'd4;
    sim_a5 = 3'd5;
    sim_a6 = 3'd6;
    sim_a7 = 3'd7;
    sim_select = 8'b0000_0001;

    // select test
    repeat(8) begin
      #5; sim_select = sim_select << 1;
    end
  end
endmodule

// ================= DECODER TEST ================= //
module Decoder_tb();
  reg [2:0] sim_in;
  wire [7:0] sim_out;

  // 3:8 decoder module
  Decoder #(3, 8) DUT(sim_in, sim_out);

  initial begin
    sim_in = 3'b000;
    #5; sim_in = 3'b001;
    #5; sim_in = 3'b010;
    #5; sim_in = 3'b011;
    #5; sim_in = 3'b100;
    #5; sim_in = 3'b101;
    #5; sim_in = 3'b110;
    #5; sim_in = 3'b111;
    #5;
  end
endmodule

// ================= DFF TEST ================= //
module DFF_tb();
  reg [3:0] sim_in;
  reg sim_clk;
  wire [3:0] sim_out;

  // module with 4 bit wide input and output
  DFF #(4) DUT(sim_in, sim_out, sim_clk);

  // clock
  initial begin
    sim_clk = 0;
    forever begin
      #5; sim_clk = 1;
      #5; sim_clk = 0;
    end
  end

  // rest of simulation
  initial begin
    sim_in = 4'b0000;
    #20; sim_in = 4'b1111;
    #15; sim_in = 4'b1001;
    #5; sim_in = 4'b1100;
    #10; sim_in = 4'b0011;
    #10;

    // stop sim
    $stop;
  end
endmodule


// ================= Register TEST ================= //
module Register_tb();
  reg [3:0] sim_in;
  reg sim_clk, sim_load;
  wire [3:0] sim_out;

  // register that holds 4 bits
  Register #(4) DUT(sim_in, sim_out, sim_load, sim_clk);

  // clock
  initial begin
    sim_clk = 0;
    forever begin
      #5; sim_clk = 1;
      #5; sim_clk = 0;
    end
  end

  // rest of simulation
  initial begin
    // allow register to store 0
    sim_in = 4'b0000;
    sim_load = 1;
    #10; sim_load = 0;

    // register holds its value when load is 0
    sim_in = 4'b0001;
    #10; sim_in = 4'b0010;
    #10; sim_in = 4'b1111;

    // register changes to new value when load is on
    sim_load = 1;
    #10;

    // register copies input when load is on
    sim_in = 4'b1000;
    #10; sim_in = 4'b0110;
    #10; sim_load = 0;

    // stop sim
    $stop;
  end
endmodule

// ================= Register File TEST ================= //
module Regfile_tb();
  reg [15:0] sim_data_in;
  reg [2:0] sim_writenum, sim_readnum;
  reg sim_write, sim_clk;
  wire [15:0] sim_data_out;

  // module
  Regfile #(16) DUT(sim_data_in, sim_data_out, sim_readnum, sim_writenum, sim_write, sim_clk);

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
