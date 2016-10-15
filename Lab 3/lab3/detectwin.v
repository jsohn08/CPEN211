// DetectWinner
// Detects whether either ain or bin has three in a row
// Inputs:
//   ain, bin - (9-bit) current positions of type a and b
//Out:
//   win_line - (8-bit) if A/B wins, one hot indicates along which row, col or diag
//   win_line(0) = 1 means a win in row 8 7 6 (i.e., either ain or bin has all ones in this row)
//   win_line(1) = 1 means a win in row 5 4 3
//   win_line(2) = 1 means a win in row 2 1 0
//   win_line(3) = 1 means a win in col 8 5 2
//   win_line(4) = 1 means a win in col 7 4 1
//   win_line(5) = 1 means a win in col 6 3 0
//   win_line(6) = 1 means a win along the downward diagonal 8 4 0
//   win_line(7) = 1 means a win along the upward diagonal 2 4 6

module DetectWinner(
		input [8:0] ain, bin,
		output [7:0] win_line );

	// which winner
	wire [1:0] winners;

	// separate winner wires
	wire [7:0] win_line_a, win_line_b;

	// CPEN 211 LAB 3, PART 1: your implementation goes here

	// *********** NEW IMPLEMENTATIONS **********
	assign win_line_a[0] = &ain[8:6];
	assign win_line_a[1] = &ain[5:3];
	assign win_line_a[2] = &ain[2:0];
	assign win_line_a[3] = ain[8] & ain[5] & ain[2];
	assign win_line_a[4] = ain[7] & ain[4] & ain[1];
	assign win_line_a[5] = ain[6] & ain[3] & ain[0];
	assign win_line_a[6] = ain[8] & ain[4] & ain[0];
	assign win_line_a[7] = ain[6] & ain[4] & ain[2];

	assign win_line_b[0] = &bin[8:6];
	assign win_line_b[1] = &bin[5:3];
	assign win_line_b[2] = &bin[2:0];
	assign win_line_b[3] = bin[8] & bin[5] & bin[2];
	assign win_line_b[4] = bin[7] & bin[4] & bin[1];
	assign win_line_b[5] = bin[6] & bin[3] & bin[0];
	assign win_line_b[6] = bin[8] & bin[4] & bin[0];
	assign win_line_b[7] = bin[6] & bin[4] & bin[2];

	// TODO: worry about this later ************
	assign winners = {|win_line_b, |win_line_a};

	// total win line OR'ed together since only one player can win at a time
	assign win_line = win_line_b | win_line_a;

endmodule
