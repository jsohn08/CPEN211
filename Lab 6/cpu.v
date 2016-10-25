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

  output reg [2:0] nsel;
  output reg loadir, loadpc, msel, mwrite;

  output reg vsel, write, asel, bsel, loada, loadb, loadc, loads;

  wire [6:0] state = 5'd0;

  always @(posedge clk) begin
    {loadir, loadpc, msel, mwrite, nsel} = 7'b0;
    {vsel, write, asel, bsel, loada, loadb, loadc, loads} = 8'b0;
    case (state)
      5'd0: state = 5'd1; // reset -> loadir
      5'd1: state = 5'd2; // loadir -> update
      5'd2: state = 5'd3; // update -> decode
      5'd3: state = ({opcode, op} == 5'b11010) ? 5'd6 : 5'd4;
      5'd4: state = 5'd5;
      5'd5: state = (op == 2'b01) ? 5'd1 : 5'd6;
      5'd6: state = 5'd1;
      default: state = 5'd0;
    endcase

    if (state == 5'd3) begin
      case ({opcode, op})
        5'b110_10: nsel = 2'b00;
        5'b110_00: 
    end
  end
endmodule;
