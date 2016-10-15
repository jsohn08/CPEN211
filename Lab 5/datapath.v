module datapath (
  // Clock for all
  clk,

  // Register file
  readnum,
  writenum,
  write,

  // ALU
  ALUop,

  // Pipeline registers (3)(4)(5)
  loada, loadb, loadc,

  // Mux for ALU (6)(7)
  asel, bsel,

  // Shifter (8)
  shift,

  // Data MUX (9)
  datapath_in,
  vsel,

  // Status register (10)
  loads,

  // output
  datapath_out,
  status
  );
