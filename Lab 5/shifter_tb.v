module shifter_tb();
  reg [7:0] sim_in;
  reg [1:0] sim_shift;
  wire [7:0] sim_out;

  shifter #(8) DUT(sim_in, sim_out, sim_shift);

  initial begin
    sim_shift = 2'b00;
    sim_in = 8'b00001111;
    #5;

    // shift left
    sim_shift = 2'b01;
    #5;

    // shift right with 0 being MSB
    sim_shift = 2'b10;
    #5;

    // shift right with in[15] being MSB
    sim_in = 8'b10000000;
    sim_shift = 2'b11;
    #5;

    sim_in = 8'b01000000;
    sim_shift = 2'b11;
    #5;
  end
endmodule
