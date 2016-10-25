// datapath controller
module cpu(
  // data input
  opcode, op,

  // logic input
  reset, clk,

  // output
  loadir, loadpc, msel, mwrite, nsel

  // TBD output
  );

  input [2:0] opcode;
  input [1:0] op;
  input reset, clk;
  output [2:0] nsel;

  wire [6:0] state = 5'd0;

  always @(posedge clk) begin
    {loadir, loadpc, msel, mwrite, nsel} = 7'b0;
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

    case (state)
      5'd1: loadir = 1;
      5'd2: loadpc = 1;
      5'd3: nsel = 2'b00;
      5'd4: nsel = 2'b10;
      5'd5:

  end

endmodule;
