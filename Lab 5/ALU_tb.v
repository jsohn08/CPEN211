module ALU_tb();
  reg [3:0] sim_ain, sim_bin;
  reg [1:0] sim_op;
  wire [3:0] sim_out;
  wire sim_status;

  ALU #(4) DUT(sim_ain, sim_bin, sim_op, sim_out, sim_status);

  initial begin
    // adding: expecting 0010, 0
    sim_op = 2'b00;
    sim_ain = 4'b0001;
    sim_bin = 4'b0001;
    #5;

    // adding: expecting 0000, 1
    sim_ain = 4'b1111;
    sim_bin = 4'b0001;
    #5;

    // adding: expecting 0001, 0
    sim_bin = 4'b0010;
    #5;

    // subtracting: expecting 0110, 0
    sim_op = 2'b01;
    sim_ain = 4'b0111;
    sim_bin = 4'b0001;
    #5;

    // subtracting: expecting 0000, 1
    sim_bin = 4'b0111;
    #5;

    // subtraction: expecting ????, 0
    sim_bin = 4'b1000;
    #5;

    // anding: expecting 1010, 0
    sim_op = 2'b10;
    sim_ain = 4'b1111;
    sim_bin = 4'b1010;
    #5;

    // anding: expecting 0000, 1
    sim_bin = 4'b0000;
    #5;

    // anding: expecting 0000, 1
    sim_ain = 4'b0101;
    sim_bin = 4'b1010;
    #5;

    // pass on ain: expecting 0110, 0
    sim_op = 2'b11;
    sim_ain = 4'b0110;
    sim_bin = 4'b1001;
    #5;

    // pass on ain: expecting 0000, 1
    sim_ain = 4'b0000;
    #5;
  end
endmodule
