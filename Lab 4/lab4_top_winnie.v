module lab4_top(SW,KEY,HEX0);
input [9:0] SW;
input [3:0] KEY;
output [6:0] HEX0;
reg [6:0] HEX0;
//starts from first digit
reg [4:0] states= 5'b00001;
//key0 acts as the clock, when key0 is pressed (turns 0),shift the digit
always @ (posedge KEY[0])
begin
    //if key1 (the reset button) is pressed, return to first digit
        if (KEY[1]==0)
        begin
            states=00001;
        end
        else
        begin
            //if switch is up, digit shifts forward
                if(SW[0]==1)
                begin
                    if(states[4]==1)
                    begin
                        states=00001;
                    end
                    else
                    begin
                        states = states<<1;
                    end
                end
                else
                begin
                    if(states[0]==1)
                    begin
                        states=10000;
                    end
                    else
                    begin
                        states=states>>1;
                    end
                end
            end
        end
        //assigns all digits, i'm using 31458, you can modify it if you want to
            always @ *
                case (states)
                    5'b00001:
                        HEX0=7'b1001111;
                    5'b00010:
                        HEX0=7'b0000110;
                    5'b00100:
                        HEX0=7'b1100110;
                    5'b01000:
                        HEX0=7'b1101101;
                    5'b10000:
                        HEX0=7'b1111111;
                endcase




                endmodule





                module testbench ;
                reg [9:0] switch;
                reg [3:0] key;
                wire [6:0] hex;

                lab4_top dut(switch, key, hex) ;
                initial begin
                    //testing with swith up and digits going forward
                    switch = 0 ; key = 4'b 1111 ;
                    #100    
                    switch = 0 ; key = 4'b 1110 ;
                    #100   
                    switch = 0 ; key = 4'b 1111 ;
                    #100    
                    switch = 0 ; key = 4'b 1110 ;
                    #100 
                    switch = 0 ; key = 4'b 1111 ;
                    #100    
                    switch = 0 ; key = 4'b 1110 ;
                    #100      
                    switch = 0 ; key = 4'b 1111 ;
                    #100    
                    switch = 0 ; key = 4'b 1110 ;
                    #100       
                    switch = 0 ; key = 4'b 1111 ;
                    #100    
                    switch = 0 ; key = 4'b 1110 ;
                    #100       
                    switch = 0 ; key = 4'b 1111 ;
                    #100    
                    switch = 0 ; key = 4'b 1110 ;
                    #100       
                    switch = 0 ; key = 4'b 1111 ;
                    #100    
                    switch = 0 ; key = 4'b 1110 ;
                    #100     
                    switch = 0 ; key = 4'b 1111 ;
                    #100    
                    switch = 0 ; key = 4'b 1110 ;
                    #100    
                    switch = 0 ; key = 4'b 1111 ;
                    #100    
                    switch = 0 ; key = 4'b 1110 ;
                    #100   
                    //testing with swith down and digits going backwards
                    switch = 1 ; key = 4'b 1111 ;
                    #100
                    switch = 1 ; key = 4'b 1110  ;
                    #100
                    switch = 1 ; key = 4'b 1111 ;
                    #100
                    switch = 1 ; key = 4'b 1110  ;
                    #100 
                    switch = 1 ; key = 4'b 1111 ;
                    #100
                    switch = 1 ; key = 4'b 1110  ;
                    #100
                    switch = 1 ; key = 4'b 1111 ;
                    #100
                    switch = 1 ; key = 4'b 1110  ;
                    #100
                    switch = 1 ; key = 4'b 1111 ;
                    #100
                    switch = 1 ; key = 4'b 1110  ;
                    #100
                    //testing reset buttons
                    //"Your state machine should reset on the rising edge of clk if KEY1 is pressed."
                        //key1 has to be pressed
                        switch = 0 ; key = 4'b 1101 ;//press down key1
                        #100
                        switch = 0 ; key = 4'b 1100 ;//press down key0
                        #100    
                        switch = 0 ; key = 4'b 1101 ;//let go of key0
                        #100   
                        switch = 0 ; key = 4'b 1111 ;//let go of key1
                        #100    
                        switch = 0 ; key = 4'b 1110 ;
                        #100    
                        switch = 0 ; key = 4'b 1111 ;
                        #100     
                        switch = 0 ; key = 4'b 1110 ;
                        #100    
                        switch = 0 ; key = 4'b 1111 ;
                    end
                    endmodule
