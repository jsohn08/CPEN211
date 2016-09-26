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
		output reg [7:0] win_line );
	reg [1:0] winners;
	reg [7:0] win_line_a, win_line_b;

// CPEN 211 LAB 3, PART 1: your implementation goes here
//  always @* begin
//    case (ain)
//      9'b111000000: win_line = 8'b1;
//      9'b111000: win_line = 8'b10;
//      9'b111: win_line = 8'b100;
//      9'b100100100: win_line = 8'b1000;
//      9'b010010010: win_line = 8'b10000;
//      9'b001001001: win_line = 8'b100000;
//      9'b100010001: win_line = 8'b1000000;
//      9'b1010100: win_line = 8'b10000000

// *********** NEW IMPLEMENTATIONS **********
assign win_line_a[0] = &ain[8:6];
assign win_line_a[1] = &ain[5:3];
assign win_line_a[2] = &ain[2:0];
assign win_line_a[3] = ain[8] & ain[5] & ain[2];
assign win_line_a[4] = ain[7] & ain[4] & ain[1];
assign win_line_a[5] = ain[6] & ain[3] & ain[0];
assign win_line_a[6] = ain[8] & ain[4] & ain[0];
assign win_line_a[7] = ain[6] & ain[4] & ain[2];
// default to none
//      default: win_line = 8'b0;
//    endcase

// test for if b wins
case (bin)
	9'b111000000: win_line = 8'b1;
	9'b111000: win_line = 8'b10;
	9'b111: win_line = 8'b100;
	9'b100100100: win_line = 8'b1000;
	9'b010010010: win_line = 8'b10000;
	9'b001001001: win_line = 8'b100000;
	9'b100010001: win_line = 8'b1000000;
	9'b1010100: win_line = 8'b10000000;

	// default to none
	// *************TODO: CURRENTLY THIS CASE RIGHT HERE IS OVERRIDING WHATEVER CASE IS BEFORE - USE COMB LOGIC TO FIX!!!!
	default: win_line = 8'b0;
	endcase
	end
	endmodule

	// test bench
	module detectwinner_tb();
	reg [8:0] sim_ain;
	reg [8:0] sim_bin;
	wire [7:0] sim_win_line;

	DetectWinner DUT (
			.ain(sim_ain),
			.bin(sim_bin),
			.win_line(sim_win_line)
			);

	initial begin
	// reset all signals
	sim_ain = 9'b000_000_000;
	sim_bin = 9'b000_000_000;

	// test ain top row
	sim_ain = 9'b111_000_000;
	$display("%b\tExpected %b", sim_win_line, 8'b1);
#5;

	// test ain middle row
	sim_ain = 9'b000_111_000;
	$display("%b\tExpected %b", sim_win_line, 8'b10);
#5;

	// test ain bottom row
	sim_ain = 9'b000_000_111;
	$display("%b\tExpected %b", sim_win_line, 8'b100);
#5;

	// test ain left col
	sim_ain = 9'b100_100_100;
	$display("%b\tExpected %b", sim_win_line, 8'b1000);
#5;

	// test ain diagonal 1
	sim_ain = 9'b100_010_001;
	$display("%b\tExpected %b", sim_win_line, 8'b1000000);
#5;  

	// test bin middle row
	sim_bin = 9'b000_111_000;
	$display("%b\tExpected %b", sim_win_line, 8'b10);
#5;

	// test bin middle col
	sim_bin = 9'b010_010_010;
	$display("%b\tExpected %b", sim_win_line, 8'b10000);
#5;

	// test bin right col
	sim_bin = 9'b001_001_001;
	$display("%b\tExpected %b", sim_win_line, 8'b100000);
#5;

	// test bin diagonal 2
	sim_bin = 9'b001_010_100;
	$display("%b\tExpected %b", sim_win_line, 8'b10000000);
#5;
	end
	endmodule
