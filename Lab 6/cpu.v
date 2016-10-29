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

  reg [3:0] next_state;
  wire [3:0] state;

  // using register for states
  vDFF #(4) RS(clk, next_state, state);

  always @(posedge clk) begin
    {loadir, loadpc, msel, mwrite, nsel} = 7'b0;
    {vsel, write, asel, bsel, loada, loadb, loadc, loads} = 9'b0;

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

    // reset if key0 is pressed
    if (reset) next_state = `REST;
    else begin
      case(state)
        // [0] reset state, pc = 0
        `REST: next_state = `LDIR;

        // [1] load IR
        `LDIR: begin
          loadir = 1;
          next_state = 4'b0010;
          end

        // [2] loadpc
        `LDPC: begin
          loadpc = 1;
          if ({opcode, op} == 5'b110_10)
            next_state = `WRRN; // to state 5 (write rn)
          else if (({opcode, op} == 5'b110_00) || ({opcode, op} == 5'b101_11))
            next_state = `RDRM; // to state 4 (read rm)
          else
            next_state = `RDRN; // to state 3 (read rn)
          end

        // [3] read rn
        `RDRN: begin
          loada = 1;
          if (opcode == 3'b101)
            next_state = `RDRM; // to state 4 (read rm)
          else
            next_state = `CALC; // to state 6 (ALU)
          end

        // [4] read rm
        `RDRM: begin
          loadb = 1;
          next_state = `CALC;
          end

        // [5] write rn
        `WRRN: begin
          nsel  = 2'b00;
          vsel  = 2'b01;
          write = 1;
          next_state = `LDIR;
          end

        // [6] ALU
        `CALC: begin
          loadc = 1;
          if ({opcode, op} == 5'b101_01) // CMP
            next_state = `STAT; // to state 7 (status register)
          else if (opcode == 3'b011) begin // LDR
            bsel = 1;
            next_state = `WMEM; // to state 8 (write to memory)
            end
          else if (opcode == 3'b100) begin // STR
            bsel = 1;
            next_state = `RDRD; // to state 10 (read rd)
            end
          else if (opcode == 3'b110) begin // MOV2
            asel = 1;
            next_state = `WRRD;
            end
          else // ADD AND MVN
            next_state = `WRRD;
          end

        // [7] Status Reg
        `STAT: begin
          loads = 1;
          next_state = `LDIR;
          end

        // [8] Memory
        `WMEM: begin
          msel   = 1;
          mwrite = 1;
          if (opcode == 3'b011) // LDR
            next_state = `WRRD;
          else  // STR
            next_state = `LDIR;
          end

        // [9] Write to Rd
        `WRRD: begin
          nsel  = 1;
          write = 1;
          if (opcode == 3'b011) // LDR
            vsel = 2'b00;
          else // ADD AND CMP MOV2
            vsel = 2'b11;
          next_state = `LDIR;
          end

        // [10] read rd
        `RDRD: begin
          loadb = 1;
          next_state = `WMEM;
        end
        default: next_state = `REST;
      endcase
    end
  end
endmodule
