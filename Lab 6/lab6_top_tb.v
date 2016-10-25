module lab6_top_tb();
  reg [3:0] KEY;
  reg [9:0] SW;
  wire [9:0] LEDR;
  wire [3:0] HEX0, HEX1, HEX2, HEX3;

  lab6_top DUT(KEY, SW, LEDR, HEX0, HEX1, HEX2, HEX3);

  initial begin
    repeat (20) begin
      KEY[0] = 1; #5;
      KEY[0] = 0; #5;
    end
  end

  initial begin
    KEY[1] = 1;
    #6;
    KEY[1] = 0;
  end
endmodule
