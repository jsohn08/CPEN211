module gameplay_tb;

// initiate wires
reg [8:0] xin, oin;
wire [8:0] xout, oout;

// instantiate modules
TicTacToe dut(xin, oin, xout) ;
TicTacToe opponent(oin, xin, oout) ;

initial begin

// testing ddiag
xin = 9'b000_010_000;
oin = 9'b100_000_001;
#5;
$display("X: %b, O: %b\t\t Xout: %b, Oout: %b", xin, oin, xout, oout);

// testing udiag
xin = 9'b000_010_000;
oin = 9'b001_000_100;
#5;
$display("X: %b, O: %b\t\t Xout: %b, Oout: %b", xin, oin, xout, oout);

// no diag
xin = 9'b000_010_000;
oin = 9'b100_000_100;
#5;
$display("X: %b, O: %b\t\t Xout: %b, Oout: %b", xin, oin, xout, oout);

end
endmodule
