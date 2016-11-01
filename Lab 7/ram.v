// based off of the code provided on lecture slide set #8, page 24
module ram(clk, read_address, write_address, write, din, dout);
  parameter data_width = 32;
  parameter addr_width = 4;
  parameter filename = "data.txt";

  input [addr_width-1:0] read_address, write_address;
  input [data_width-1:0] din;
  input clk, write;

  output reg [data_width-1:0] dout;

  reg [data_width-1:0] memory [2**addr_width-1:0]; // 2^(address width)

  // initialize memory to contents of text file
  initial $readmemb(filename, memory);

  always @ (posedge clk) begin
    // writes input data to memory on rising edge of clk
    if (write)
      memory[write_address] <= din;

    // read data after 1 cycle delay due to non-blocking assignment
    dout = memory[read_address];
  end
endmodule
