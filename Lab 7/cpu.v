// datapath controller
module cpu(
  // data input
  opcode, op,

  // logic input
  reset, clk,

  // output
  loadir, msel, mwrite, nsel,

  // TBD output
  vsel, write, asel, bsel, loada, loadb, loadc, loads,

  // lab 7
  tsel, incp, execb,

  // for debugging
  state
  );

  input [2:0] opcode;
  input [1:0] op;
  input reset, clk;

  output reg [1:0] nsel;
  output reg loadir, msel, mwrite;

  output reg [1:0] vsel;
  output reg write, asel, bsel, loada, loadb, loadc, loads;
  output reg tsel, incp, execb;

  reg [3:0] next_state = 0;
  output [3:0] state;

  // using register for states
  // vDFF #(4) RS(clk, next_state, state);
  assign state = next_state;

  // state definitions
  `define REST 4'd0
  `define LDIR 4'd1
  `define LDPC 4'd2
  `define RDRN 4'd3
  `define RDRM 4'd4
  `define WRRN 4'd5
  `define CALC 4'd6
  `define STAT 4'd7
  `define WMEM 4'd8
  `define WRRD 4'd9
  `define RDRD 4'd10

  // lab 7 new states
  `define EXBR 4'd11
  `define EXBM 4'd12

  always @(posedge clk) begin
    // reset if key0 is pressed
    if (reset) next_state = `REST;
    else begin
      case (state)
        // [0] reset state, pc = 0
        `REST: next_state = `LDIR;

        // [1] load IR
        `LDIR: next_state = `LDPC;

        // [2] update pc
        `LDPC: begin
          if ({opcode, op} == 5'b110_10) next_state = `WRRN; // to state 5 (write rn)
          else if (({opcode, op} == 5'b110_00) || ({opcode, op} == 5'b101_11))
            next_state = `RDRM; // to state 4 (read rm)
          else if (opcode == 3'b001) next_state = `EXBR; // to state 11 (branch 1)
          else next_state = `RDRN; // to state 3 (read rn)
          end

        // [3] read rn
        `RDRN: begin
          if (opcode == 3'b101) next_state = `RDRM; // to state 4 (read rm)
          else next_state = `CALC; // to state 6 (ALU)
          end

        // [4] read rm
        `RDRM: next_state = `CALC;

        // [5] write rn
        `WRRN: next_state = `LDIR;

        // [6] ALU
        `CALC: begin
          if ({opcode, op} == 5'b101_01) next_state = `STAT; // CMP to state 7 (status register)
          else if (opcode == 3'b011) next_state = `WMEM; // LDR to state 8 (write to memory)
          else if (opcode == 3'b100) next_state = `RDRD; // STR to state 10 (read rd)
          else if (opcode == 3'b110) next_state = `WRRD; // MOV2
          else next_state = `WRRD; // ADD AND MVN
          end

        // [7] Status Reg
        `STAT:  next_state = `LDIR;

        // [8] Memory
        `WMEM: begin
          if (opcode == 3'b011) next_state = `WRRD; // LDR
          else next_state = `LDIR; // STR
          end

        // [9] Write to Rd
        `WRRD: next_state = `LDIR;

        // [10] read rd
        `RDRD: next_state = `WMEM;

        // [11] branch 1
        `EXBR: next_state = `EXBM;

        // [12] branch 2
        `EXBM: next_state = `LDIR;

        default: next_state = `REST;
      endcase
    end
  end

  always @(*) begin
    // set everything to 0 first
    {loadir, msel, mwrite, nsel} = 6'b0;
    {vsel, write, asel, bsel, loada, loadb, loadc, loads} = 9'b0;
    {tsel, incp, execb} = 3'b000;

    // case for assigning outputs depending on the state
    case (state)
      `LDIR: loadir = 1;
      `LDPC: incp = 1;
      `RDRN: begin
        nsel  = 2'b00;
        loada = 1;
        end
      `RDRM: begin
        nsel  = 2'b10;
        loadb = 1;
        end
      `WRRN: begin
        nsel  = 2'b00;
        vsel  = 2'b01;
        write = 1;
        end
      `CALC: begin
        // loadc = ({opcode, op} == 5'b10101) ? 0 : 1;
        loadc = 1;
        if (opcode == 3'b011 || opcode == 3'b100) // LDR STR
          bsel = 1;
        else if (opcode == 3'b110)
          asel = 1;
        end
      `STAT: loads = 1;
      `WMEM: begin
        msel   = 1;
        mwrite = 1;
        end
      `WRRD: begin
        nsel  = 2'b01;
        write = 1;
        if (opcode == 3'b011) vsel = 2'b00; // LDR
        else vsel = 2'b11;// ADD AND CMP MOV2
        end
      `RDRD: begin
        nsel  = 2'b01;
        loadb = 1;
        end
      `EXBR: begin
        execb = 1;
        tsel = 1;
        incp = 0;
        end
      `EXBM: begin // wait for ram
        tsel = 1;
        incp = 0;
        end
      default: begin
        // set everything to 0 first
        {loadir, msel, mwrite, nsel} = 6'b0;
        {vsel, write, asel, bsel, loada, loadb, loadc, loads} = 9'b0;
        {tsel, incp, execb} = 3'b000;
        end
    endcase
  end
endmodule
