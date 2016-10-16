// === DOES NOT WORK ATM ===
module lab5_top_tb;
  reg [3:0] KEY;
  reg [9:0] SW;
  wire [9:0] LEDR;
  wire [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
  reg CLOCK_50;
  reg [2:0] debug;

  lab5_top DUT(KEY,SW,LEDR,HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,CLOCK_50);

  initial forever begin
    CLOCK_50 = 0; #5;
    CLOCK_50 = 1; #5;
  end

  initial begin
    SW = 0;

    // take 7 and store it in R0
    // ===DATAPATH IN===
    SW[9] = 1;
    SW[7:0] = 8'd7;
    #5;
    SW[9] = 0;

    // ===WRITEBACK===
    SW[0] = 1;
    SW[3:1] = 3'd0;
    SW[4] = 1;
    #5;
    SW[0] = 0;

    // take 2 and store it in R1
    // ===DATAPATH IN===
    SW[9] = 1;
    SW[7:0] = 8'd2;
    #5;
    SW[9] = 0;

    // ===WRITEBACK===
    SW[0] = 1;
    SW[3:1] = 3'd1;
    SW[4] = 1;
    #5;
    SW[0] = 0;

    // R2 = R1 + (R0 << 1)
    // ===READ R1===
    SW[3:1] = 3'd1;
    SW[5] = 1;
    #10;

    // ===READ R2===
    SW[3:1] = 3'd0;
    SW[6] = 1;
    #10;

    // ===EXECUTE===
    SW[2:1] = 2'b01;
    SW[3] = 0;
    SW[4] = 0;
    SW[6:5] = 2'b00; // add
    SW[7] = 1;
    SW[8] = 1;
    #10;
    SW[7] = 0;
    SW[8] = 0;

    // ===WRITEBACK===
    SW[0] = 1;
    SW[3:1] = 3'd2;
    SW[4] = 0;
    #10;

    $stop;
  end
endmodule
