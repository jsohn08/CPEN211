// test bench for lab 4

module lab4_top_tb();

// instantiate sim wires
reg [9:0] sim_switch;
reg [3:0] sim_key;
wire [6:0] sim_hex;

// instantiate lab 4 module
lab4_top dut(sim_switch, sim_key, sim_hex);

// start simulating clock
initial begin
    // setup initial condition
    sim_key = 4'b1111;
    sim_switch = 9'b0;

    // generate infinite clock
    forever begin
        sim_key = 4'b1110;
        #5;
        sim_key = 4'b1111;
        #5;
    end
end

// simulating the module
initial begin
    // continue as normal for the first 7 cycles
    #70

    // go in th other direction for 8 cycles
    sim_switch = 9'b1;
    #80;

    // reset
    sim_key[1] = 1'b1;
    #30;
    sim_key[1] = 1'b0;

    // reset out of phase
    #3;
    sim_key[1] = 1'b1;
    #5;
    sim_key[1] = 1'b0;
    #2;

    // stop sim
    $stop;
end
endmodule

