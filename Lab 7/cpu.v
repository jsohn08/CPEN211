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

  reg [4:0] next_state = 0;
  output [4:0] state;
  assign state = next_state;

  // state definitions
  `define REST 5'd0
  `define LDIR 5'd1
  `define LDPC 5'd2
  `define RDRN 5'd3
  `define RDRM 5'd4
  `define WRRN 5'd5
  `define CALC 5'd6
  `define STAT 5'd7
  `define WMEM 5'd8
  `define WRRD 5'd9
  `define RDRD 5'd10

  // lab 7 new states
  `define EXBR 5'd11
  `define WAIT 5'd12
  `define HALT 5'd13

  // lab 7 bonus 1 states
  `define BXRD 5'd14
  `define BXPC 5'd15

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
          else if (opcode == 3'b111) next_state = `HALT; // to state 13 (stops the machine)
          else if ({opcode, op} == 5'b01011) next_state = `EXBR;  // to state 11 (branch PC)
          else if ({opcode, op} == 5'b01000) next_state = `BXRD;  // retrieve PC from Rd (R7)
          else if ({opcode, op} == 5'b00000) next_state = `LDIR; // don't go anywhere
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
          else next_state = `WAIT; // STR
          end

        // [9] Write to Rd
        `WRRD: next_state = `LDIR;

        // [10] read rd
        `RDRD: next_state = `WMEM;

        // [11] branch 1
        `EXBR: next_state = `WAIT;

        // [12] branch 2
        `WAIT: next_state = `LDIR;

        // [13] stop
        `HALT: next_state = `HALT;

        // [14] load R7 to RA
        `BXRD: next_state = `BXPC;

        // [15] load RA to PC
        `BXPC: next_state = `WAIT;

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
        loadc = ({opcode, op} == 5'b10101) ? 0 : 1;
        // loadc = 1;
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
        // save PC to register
        if ({opcode, op} == 5'b01011) begin
          nsel = 2'b00;
          vsel = 2'b10;
          write = 1;
          end
        execb = 1;
        tsel = 1;
        incp = 0;
        end
      `WAIT: begin // wait for ram
        incp = 0;
        end
      `BXRD: begin // put R7 to RA
        nsel = 2'b01;
        loada = 1;
        end
      `BXPC: begin // put RA to PC
        tsel = 0;
        incp = 0;
        execb = 1;
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
