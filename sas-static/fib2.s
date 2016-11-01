.org 0
        MOV R0,#11
        MOV R6,#127
        BL  FIB
        HALT

FIB:    STR R1,[R6]
        STR R2,[R6,#-1]
        STR R7,[R6,#-2]
        MOV R1,#-3
        ADD R6,R6,R1
        MOV R1,#0
        CMP R0,R1
        BNE FIB_L1

        MOV R0,#0
        MOV R1,#3
        ADD R6,R6,R1
        LDR R7,[R6,#-2]
        LDR R2,[R6,#-1]
        LDR R1,[R6]
        BX  R7        // x=0, return 0

FIB_L1: MOV R1,#1
        CMP R0,R1
        BNE FIB_L2

        MOV R0,#1
        MOV R1,#3
        ADD R6,R6,R1
        LDR R7,[R6,#-2]
        LDR R2,[R6,#-1]
        LDR R1,[R6]
        BX  R7        // x=1, return 1

FIB_L2: MOV R2,R0     // R2=n
        MOV R1,#-1
        ADD R0,R0,R1  // R1 = n-1
        BL  FIB       // R0 = fib(n-1)
        MOV R1,R0     // R1 = fib(n-1)
        MOV R0,R2     // R2=n
        MOV R2,#-2
        ADD R0,R0,R2  // R2 = n-2
        BL  FIB       // R0 = fib(n-2)
        ADD R0,R0,R1  // R0 = fib(n-2) + fib(n-1)
        MOV R1,#3
        ADD R6,R6,R1
        LDR R7,[R6,#-2]
        LDR R2,[R6,#-1]
        LDR R1,[R6]
        BX  R7
