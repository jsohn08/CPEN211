module stage1(B, C, loadpc, loadir, mwrite, msel, IRout, reset, clk);
  parameter addr_width = 8;
  parameter data_width = 16;

  input [addr_width-1:0] B, C;
  input loadpc, reset, msel, mwrite, loadir, clk;

  output IRout;

  wire [addr_width-1:0] pc_in, pc_out, addr;
  wire [data_width-1:0] mdata, ir_out;

  // modules
  // increment program count
  MUX2 #(addr_width) M_loadpc(pc_out, pc_out + 1, loadpc, loadpc_out);

  // reset program count
  MUX2 #(addr_width) M_reset(8'b0, loadpc_out, reset, pc_in);

  // holds current count
  vDFF #(addr_width) PC(clk, pc_in, pc_out);

  // choose from PC or lower 8 bits of C
  MUX2 #(addr_width) M_msel(pc_out, C[7:0], msel, addr);

  // RAM module
  RAM #(data_width, addr_width, "data.txt") RAMY(clk, addr, addr, mwrite, B, mdata);

  // instructions register, IR only gets mdata when loadir is HIGH
  vDFF #(data_width) IR(clk, loadir ? mdata : ir_out, ir_out);
endmodule
