module lab1_top_tb();
	// no I/O becuase this is a test bench
	reg sim_LEFT_button;
	reg sim_RIGHT_button;
	reg [3:0] sim_A;
	reg [3:0] sim_B;

	wire [3:0] sim_result;

	lab1_top DUT (
		// using .X(Y) to connect i/o X to Y
		.not_LEFT_pushbutton(~sim_LEFT_button),
		.not_RIGHT_pushbutton(~sim_RIGHT_button),
		.A(sim_A),
		.B(sim_B),
		.result(sim_result)
	);

	// only used in simulator
	// kina like setup()
	initial begin
		// intially buttons not pushed (buttons are 1 bit)
		sim_LEFT_button = 1'b0;
		sim_RIGHT_button = 1'b0;
		
		// all inputs are 0s (4 switches each - 4 bits)
		sim_A = 4'b0;
		sim_B = 4'b0;

		// delay 5 sim steps to make above happen
		#5;

		// FIRST TEST: AND
		sim_RIGHT_button = 1'b0;
		sim_LEFT_button = 1'b1;
		sim_A = 4'b1101;
		sim_B = 4'b1010;
		
		// delay
		#5;
		
		// print out to the modelsim console
		$display("output: %b\texpected: %b", sim_result, (4'b1100 & 4'b1010));
		
		// NEXT TEST: ADD
		sim_RIGHT_button = 1'b1;
		sim_LEFT_button = 1'b0;
		sim_A = 4'b1101;
		sim_B = 4'b1010;
		$display("output: %b\texpected: %b", sim_result, (4'b1101 + 4'b1010));
		#5;

		// LAST TEST: Both push buttons on
		sim_RIGHT_button = 1'b1;
		sim_LEFT_button = 1'b1;
		sim_A = 4'b0110;
		sim_B = 4'b1111;

		// since  adding is prioritized when both is on
		$display("output: %b\texpected: %b", sim_result, (4'b0110 + 4'b1111));
		#5; 

		// stops the sim
		$stop;
	end
endmodule
