module lab4_top(SW,KEY,HEX0);
input [9:0] SW;
input [3:0] KEY;
output [6:0] HEX0;

// start from first digit (one hot code)
reg [4:0] state = 5'b00001;

// KEY[0] is CLK (reversed)
`define CLK ~KEY[0]

// KEY[1] is reset button (reversed)
`define RST ~KEY[1]

// SW[0] is direction (0 is forward, 1 is backward)
`define DIR SW[0];

// reset when rising clock of CLK is pressed
always @(posedge `RST) begin
    assign state = 5'b1;
end

// continue to the next state
always @(posedge `CLK) begin

end

// put your state machine code here!
endmodule
