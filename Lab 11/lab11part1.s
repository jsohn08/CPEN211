/* Based off of Lab 11 instructions */

        .text
        .global _start

_start:
        BL CONFIG_VIRTUAL_MEMORY

        @ Step 1-3: configure PMNx to count cycles
        /* CPU cycle counter */
        MOV R0, #0                  @ Write 0 into R0 then PMSELR
        MCR P15, 0, R0, C9, C12, 5  @ Write 0 into PMSELR selects PMN0
        MOV R1, #0x11               @ Event 0x11 is CPU cycles
        MCR P15, 0, R1, C9, C13, 1  @ Write 0x11 into PMXEVTYPER (PMN0 measure CPU cycles)

        /* L1 cache miss counter */
        MOV R0, #1
        MCR P15, 0, R0, C9, C12, 5  @ Write 1 into PMSEL selects PMN1
        MOV R1, #0x3                @ Event 0x3 is for L1 cache misses
        MCR P15, 0, R1, C9, C13, 1  @ PWN1 measures L1 cache misses

        /* Load instructions executed counter */
        MOV R0, #2
        MCR P15, 0, R0, C9, C12, 5  @ Write 2 into PMSEL selects PMN2
        MOV R1, #0x6                @ Event 0x6 is for counting load instructions
        MCR P15, 0, R1, C9, C13, 1  @ PMN2 measures load instructions executed

        @ Step 4: enable PMN0 to PMN2
        MOV R0, #0b111              @ PMN0-2 are bits 0-2 of PMCNTENSET
        MCR P15, 0, R0, C9, C12, 1  @ Setting bit 0 of PMCNTENSET enables PMN0

        @ Step 5: clear all counters and start counters
        MOV R0, #3                  @ bits 0 (start counters) and 1 (reset counters)
        MCR P15, 0, R0, C9, C12, 0  @ Setting PMCR to 3

        @ Step 6: code we wish to profile using hardware counters
        MOV R1, #0x00100000         @ base of array
        MOV R2, #0x100              @ iterations of inner loop
        MOV R3, #2                  @ iterations of outer loop
        MOV R4, #0                  @ i=0 (outer loop counter)
L_outer_loop:
        MOV R5, #0                  @ j=0 (inner loop counter)
L_inner_loop:
        LDR R6, [R1, R5, LSL #2]    @ read data from memory
        ADD R5, R5, #1              @ j=j+1
        CMP R5, R2                  @ compare j with 256
        BLT L_inner_loop            @ branch if less than
        ADD R4, R4, #1              @ i=i+1
        CMP R4, R3                  @ compare i with 2
        BLT L_outer_loop            @ branch if less than

        @ Step 7: stop counters
        MOV R0, #0
        MCR P15, 0, R0, C9, C12, 0  @ Write 0 to PMCR to stop counters

        @ Step 8-10:
        /* Select PMN0 and read out result into R3 */
        MOV R0, #0                  @ PMN0
        MCR P15, 0, R0, C9, C12, 5  @ Write 0 to PMSELR
        MRC P15, 0, R3, C9, C13, 2  @ Read PMXEVCNTR into R3

        /* PMN1 into R4 */
        MOV R0, #1                  @ PMN 1
        MCR P15, 0, R0, C9, C12, 5  @ write 1 to PMSELR
        MRC P15, 0, R4, C9, C13, 2  @ read PMXEVCNTR into R4

        /* PMN2 into R5 */
        MOV R0, #2                  @ PMN 2
        MCR P15, 0, R0, C9, C12, 5  @ write 2 to PMSELR
        MRC P15, 0, R5, C9, C13, 2  @ read PMXEVCNTR into R5
END:    B END
