// k - bit width of the data to store
module regfile(data_in, data_out, readnum, writenum, write, clk);
  parameter k = 16;

  input [k - 1:0] data_in;
  input [2:0] writenum, readnum;
  input write;
  input clk;
  output [k - 1:0] data_out;

  wire [7:0] preload, load, read_select;
  wire [k - 1:0] rout0, rout1, rout2, rout3, rout4, rout5, rout6, rout7;

  // modules
  decoder  #(3, 8) DEC0(writenum, preload);
  decoder  #(3, 8) DEC1(readnum, read_select);
  MUX8     #(k)   M0(rout0, rout1, rout2, rout3, rout4, rout5, rout6, rout7, read_select, data_out);
  register #(k)   R0(data_in, rout0, load[0], clk);
  register #(k)   R1(data_in, rout1, load[1], clk);
  register #(k)   R2(data_in, rout2, load[2], clk);
  register #(k)   R3(data_in, rout3, load[3], clk);
  register #(k)   R4(data_in, rout4, load[4], clk);
  register #(k)   R5(data_in, rout5, load[5], clk);
  register #(k)   R6(data_in, rout6, load[6], clk);
  register #(k)   R7(data_in, rout7, load[7], clk);

  assign load = preload & {8{write}};
endmodule

module register(in, out, load, clk);
  parameter k = 1;

  input [k-1:0] in;
  input load, clk;
  output reg [k-1:0] out;

  always @(posedge clk) begin
    out = load ? in : out;
  end
endmodule
