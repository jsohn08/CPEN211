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
`define FORWARD SW[0]

// states
`define STATE_1 5'b00001
`define STATE_2 5'b00010
`define STATE_3 5'b00100
`define STATE_4 5'b01000
`define STATE_5 5'b10000

// numbers
`define ONE   7'b0000110
`define TWO   7'b1011011
`define THREE 7'b1001111
`define FOUR  7'b1100110
`define FIVE  7'b1101101
`define SIX   7'b1111101
`define SEVEN 7'b0000111
`define EIGHT 7'b1111111
`define NINE  7'b1101111

// continue to the next state
always @(posedge `CLK) begin
    // reset when rising clock of CLK is pressed
    if (`RST) begin
        state = 5'b00001;
    end

    // shift forward
    if (`FORWARD) begin
        if (|`STATE_5) begin
            state = `STATE_1;
        end else begin
            state = state << 1;
        end
    end else begin
        if (|`STATE_1) begin
            state = `STATE_5;
        end else begin
            state = state >> 1;
        end
    end
end

// "draw" digits onto the screen, currently assigned as 3-1-4-5-8
always @(*) begin
    case (state)
        `STATE_1: HEX0 = `THREE;
        `STATE_2: HEX0 = `ONE;
        `STATE_3: HEX0 = `FOUR;
        `STATE_4: HEX0 = `FIVE;
        `STATE_5: HEX0 = `EIGHT;
    endcase
end
endmodule
