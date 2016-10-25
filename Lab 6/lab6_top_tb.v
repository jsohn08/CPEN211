module lab6_top_tb();
  reg reset, clk;

  lab6_top DUT(reset, clk);

  initial begin
    repeat (20) begin
      clk = 1; #5;
      clk = 0; #5;
    end
  end

  initial begin
    reset = 1;
    #6;
    reset = 0;
  end
endmodule
