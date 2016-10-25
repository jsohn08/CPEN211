// datapath controller
module cpu(
  // data input
  opcode, op,

  // logic input
  reset, clk,

  // output
  loadir, loadpc, msel, mwrite, nsel,

  // TBD output
  vsel, write, asel, bsel, loada, loadb, loadc, loads
  );

  input [2:0] opcode;
  input [1:0] op;
  input reset, clk;

  output reg [1:0] nsel;
  output reg loadir, loadpc, msel, mwrite;

  output reg [1:0] vsel;
  output reg write, asel, bsel, loada, loadb, loadc, loads;

  reg [4:0] state = 4'd0;

  always @(posedge clk) begin
    {loadir, loadpc, msel, mwrite, nsel} = 7'b0;
    {vsel, write, asel, bsel, loada, loadb, loadc, loads} = 9'b0;

    casex({reset, opcode, op, state})
      // reset
      10'b1_xxx_xx_xxxx: state = 4'b0000;

      // loadir (home) state (0)
      10'b0_xxx_xx_0000: begin state <= 4'b0001; loadir = 1; end

      // update pc (1)
      10'b0_xxx_xx_0001: begin state = 4'b0010; loadpc = 1; end

      // decode and first read (2)
      10'b0_110_10_0010: begin // MOV1
        // write data in for datapath to rn
        nsel = 2'b00;
        vsel = 2'b01;
        write = 1;
        state = 4'b0001; end
      10'b0_110_00_0010, 10'b0_101_11_0010: begin // MOV2, MVN
        // read rm to rb
        nsel = 2'b10;
        loadb = 1;
        state = 4'b0100; end
      10'b0_101_x0_0010, 10'b0_101_01_0010: begin // ADD, AND, CMP
        // read rn to ra
        nsel = 2'b00;
        loada = 1;
        state = 4'b0011; end
      10'b0_011_00_0010, 10'b0_100_00_0010: begin // LDR, STR
        // read rn to ra
        nsel = 2'b00;
        loada = 1;
        state = 4'b0100; end

      // second read (3)
      10'b0_101_x0_0011, 10'b0_101_01_0011: begin // ADD, AND, CMP
        // read rm to rb
        nsel = 2'b10;
        loadb = 1;
        state = 4'b0100; end

      // ALU (4)
      10'b0_101_01_0100: begin // CMP
        // load to status register
        loads = 1;
        state = 4'b0001; end
      10'b0_101_1x_0100, 10'b0_101_00_0100: begin // ADD, AND, MVN
        // write alu results into rc
        loadc = 1;
        state = 4'b0101; end
      10'b0_110_00_0100: begin // MOV2
        asel = 1;
        loadc = 1;
        state = 4'b0101; end
      10'b0_011_00_0100, 10'b0_100_00_0100: begin // LDR, STR
        // write alu into rc
        bsel = 1;
        loadc = 1;
        state = 4'b0110; end

      // writeback (5)
      10'b0_1xx_xx_0101: begin // ADD, AND, CMP, MOV2
        nsel = 2'b01;
        vsel = 2'b11;
        write = 1;
        state = 4'b0001; end
      10'b0_011_00_0101: begin // LDR
        nsel = 2'b01;
        vsel = 2'b00;
        write = 1;
        state = 4'b0001; end

      // store to ram (6)
      10'b0_011_00_0110: begin // LDR
        msel = 1;
        mwrite = 1;
        state = 4'b0101; end
      10'b0_100_00_0110: begin // STR
        msel = 1;
        mwrite = 1;
        state = 4'b0111; end

      // store in register (7)
      10'b0_100_00_0111: begin // STR
        nsel = 2'b01;
        loadb = 1;
        state = 4'b1000; end
      10'b0_100_00_1000: begin // STR
        mwrite = 1;
        state = 4'b0001; end
      default: state = 4'b0000;
      endcase
  end

  // always @(*) begin
  //   loadir = (state == 4'b0001) ? 1 : 0;
  //   loadpc = (state == 4'b0010) ? 1 : 0;
  // end

endmodule;
