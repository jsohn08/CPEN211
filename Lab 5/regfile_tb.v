//<--EVERYTHING BELOW ARE TEST BENCHES-->
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

module Decoder_tb();
  reg [2:0] sim_in;
  wire [7:0] sim_out;

  // module
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
