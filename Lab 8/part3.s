// before program
        .include "address_map_arm.s"
        .text
        .global _start

// main program
_start:
        LDR R0, =LEDR_BASE      // LED for output
        MOV R1, #0              // counter is set at R1
L1:     ADD R1, R1, #1          // add 1 to R1
        STR R1, [R0]            // apply value of R1 to LEDs
        B   L1                  // loop - branch back to L1
