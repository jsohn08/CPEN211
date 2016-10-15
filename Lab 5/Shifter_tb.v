module Shifter_tb();
  reg [7:0] sim_in;
  reg [1:0] sim_shift;
  wire [7:0] sim_out;

  Shifter #(8) DUT(sim_in, sim_out, sim_shift);

  
