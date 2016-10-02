// DetectWinner test bench
// Detects whether either ain or bin has three in a row

// detect win and type or win
module detectwin_tb();
	reg [8:0] sim_ain;
	reg [8:0] sim_bin;
	wire [7:0] sim_win_line;

	// device under test
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
	  sim_bin = 9'b000_000_000;
		$display("%b\tExpected %b", sim_win_line, 8'b1);
		#5;

		// test ain middle row
		sim_ain = 9'b000_111_000;
	  sim_bin = 9'b000_000_000;
		$display("%b\tExpected %b", sim_win_line, 8'b10);
		#5;

		// test ain bottom row
		sim_ain = 9'b000_000_111;
	  sim_bin = 9'b000_000_000;
		$display("%b\tExpected %b", sim_win_line, 8'b100);
		#5;

		// test ain left col
		sim_ain = 9'b100_100_100;
	  sim_bin = 9'b000_000_000;
		$display("%b\tExpected %b", sim_win_line, 8'b1000);
		#5;

		// test ain diagonal 1
		sim_ain = 9'b100_010_001;
	  sim_bin = 9'b000_000_000;
		$display("%b\tExpected %b", sim_win_line, 8'b1000000);
		#5;

		// test bin middle row
	  sim_ain = 9'b000_000_000;
		sim_bin = 9'b000_111_000;
		$display("%b\tExpected %b", sim_win_line, 8'b10);
		#5;

		// test bin middle col
	  sim_ain = 9'b000_000_000;
		sim_bin = 9'b010_010_010;
		$display("%b\tExpected %b", sim_win_line, 8'b10000);
		#5;

		// test bin right col
	  sim_ain = 9'b000_000_000;
		sim_bin = 9'b001_001_001;
		$display("%b\tExpected %b", sim_win_line, 8'b100000);
		#5;

		// test bin diagonal 2
	  sim_ain = 9'b000_000_000;
		sim_bin = 9'b001_010_100;
		$display("%b\tExpected %b", sim_win_line, 8'b10000000);
		#5;

		// test no winner 1
		sim_ain = 9'b011_100_011;
		sim_bin = ~sim_ain;
		$display("%b\tExpected Tie", sim_win_line);
		#5;

		// test no winner 2
		sim_ain = 9'b101_100_011;
		sim_bin = ~sim_ain;
	  $display("%b\tExpected Tie", sim_win_line);
		#5;

		// test no winner 3
		sim_ain = 9'b010_100_101;
		sim_bin = ~sim_ain;
		#5;
		$display("%b\tExpected Tie", sim_win_line);

		// test no winner 4
		sim_ain = 9'b101_011_010;
		sim_bin = ~sim_ain;
	  $display("%b\tExpected Tie", sim_win_line);
		#5;

		// test no winner 5
		sim_ain = 9'b110_001_101;
		sim_bin = ~sim_ain;
	  $display("%b\tExpected Tie", sim_win_line);
		#5;
	end
endmodule
