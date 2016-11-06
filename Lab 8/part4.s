// before program
        .include "address_map_arm.s"
        .text
        .global _start

// main program
_start:
        .equ LARGE_N, 0xFFFFF     // store number in mem

        LDR R3, =LARGE_N          // load it back to register
        LDR R0, =LEDR_BASE        // LED for output
        MOV R1, #0                // counter
L1:     ADD R1, R1, #1            // add 1 to R1
        STR R1, [R0]              // apply to LEDs

        MOV R2, #0                // set secondary counter for delay
L2:     ADD R2, R2, #1            // i = i + 1
        CMP R2, R3                // compare R2 < R3

        BLT L2                    // branch back to nested loop

        B   L1                    // infinite loop
