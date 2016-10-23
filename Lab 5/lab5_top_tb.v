module lab5_top_tb;
  reg [3:0] KEY;
  reg [9:0] SW;
  wire [9:0] LEDR;
  wire [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
  reg CLOCK_50;
  reg [2:0] debug;

  lab5_top DUT(
    KEY,SW,LEDR,HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,CLOCK_50);

  initial forever begin
    CLOCK_50 = 0; KEY = 0; #5;
    CLOCK_50 = 1; KEY = 1; #5;
  end

  initial begin
    SW = 0;
    // store 7 in R0
    SW[9] = 1;
    SW[7:0] = 8'b00000111;
    #10; SW[9] = 0;

    SW = 0;
    SW[0] = 1;
    SW[4] = 1;
    SW[3:1] = 3'b000;
    #100;

    // store 7 in R1
    SW = 0;
    SW[0] = 1;
    SW[4] = 1;
    SW[3:1] = 3'b001;
    #100;
    SW[0] = 0;

    // fetch R0 to RB (for shifting)
    SW = 0;
    SW[3:1] = 3'b000;
    SW[5] = 0;
    SW[6] = 1;
    #100;

    // fetch R1 to RA
    SW = 0;
    SW[3:1] = 3'b001;
    SW[5] = 1;
    SW[6] = 0;
    #100;
    SW[5] = 0;

    // shift RB by 1 and add
    SW = 0;
    SW[2:1] = 2'b01;
    SW[6:5] = 2'b00;
    SW[3] = 0;
    SW[4] = 0;
    SW[7] = 1;
    SW[8] = 1;
    #100;
    SW[7] = 0;
    SW[8] = 0;

    // store RC to R2
    SW = 0;
    SW[0] = 1;
    SW[4] = 0;
    SW[3:1] = 3'b010;
    #100;

    // stop sim
    $stop;
  end
endmodule
