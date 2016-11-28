/* Based off of Lab 11 instructions */
/* Written by: Muchen He */
/* Matrix multiplication - measure performance */
        .include "matrix_n.s"
        .text
        .global _start

_start:
        BL CONFIG_VIRTUAL_MEMORY

        @ Step 1-3: configure PMNx to count cycles
        /* CPU cycle counter */
        MOV   R0, #0                  @ Write 0 into R0 then PMSELR
        MCR   P15, 0, R0, C9, C12, 5  @ Write 0 into PMSELR selects PMN0
        MOV   R1, #0x11               @ Event 0x11 is CPU cycles
        MCR   P15, 0, R1, C9, C13, 1  @ Write 0x11 into PMXEVTYPER (PMN0 measure CPU cycles)

        /* L1 cache miss counter */
        MOV   R0, #1
        MCR   P15, 0, R0, C9, C12, 5  @ Write 1 into PMSEL selects PMN1
        MOV   R1, #0x3                @ Event 0x3 is for L1 cache misses
        MCR   P15, 0, R1, C9, C13, 1  @ PWN1 measures L1 cache misses

        /* Load instructions executed counter */
        MOV   R0, #2
        MCR   P15, 0, R0, C9, C12, 5  @ Write 2 into PMSEL selects PMN2
        MOV   R1, #0x6                @ Event 0x6 is for counting load instructions
        MCR   P15, 0, R1, C9, C13, 1  @ PMN2 measures load instructions executed

        @ Step 4: enable PMN0 to PMN2
        MOV   R0, #0b111              @ PMN0-2 are bits 0-2 of PMCNTENSET
        MCR   P15, 0, R0, C9, C12, 1  @ Setting bit 0 of PMCNTENSET enables PMN0

        @ Step 5: clear all counters and start counters
        MOV   R0, #3                  @ bits 0 (start counters) and 1 (reset counters)
        MCR   P15, 0, R0, C9, C12, 0  @ Setting PMCR to 3

        @ Step 6: code we wish to profile using hardware counters
        LDR   R0, =matN            @ define N
        @ LDR   R1, =mat_N3_a        @ [editable] base address for matrix A
        @ LDR   R2, =mat_N3_b        @ [editable] base address for matrix B
        @ LDR   R3, =mat_N3_c        @ [editable] base address for matrix C
        LDR   R1, =matA               @ base address for matrix A
        LDR   R2, =matB               @ base address for matrix B
        LDR   R3, =matC               @ base address for matrix C
        LDR   R7, =zero
        MOV   R4, #0                  @ setting i to 0
ILOOP:  CMP   R4, R0                  @ check if i < N
        BGE   EXIT
        MOV   R5, #0                  @ setting j to 0
JLOOP:  CMP   R5, R0                  @ check if j < N
        ADDGE R4, R4, #1              @ i++
        BGE   ILOOP
        MOV   R6, #0                  @ setting k to 0
        @ FLDD  D3, [R7]
        @ 1110_1101_0001_0111_0011_1011_0000_0000
        .word 0xED973B00              @ set D3 (sum) to 0
KLOOP:  CMP   R6, R0                  @ check if k < N
        BGE   KEND
        MUL   R8, R0, R4              @ i * n
        ADD   R8, R8, R6              @ (i * n) + k
        ADD   R8, R1, R8, LSL #3      @ R8 = addr of A[i][k] (LSL 3 for multiplying 8 for double)
        @ FLDD D0, [R8]               @ D0 = A[i][k]
        @ 1110_1101_0001_1000_0000_1011_0000_0000
        .word 0xED980B00
        MUL   R8, R0, R6              @ k * n
        ADD   R8, R8, R5              @ (k * n) + j
        ADD   R8, R2, R8, LSL #3      @ R8 = addr of B[k][j] (LSL 3 for multiplying 8 for double)
        @ FLDD D1, [R8]               @ D1 = B[k][j]
        @ 1110_1101_0001_1000_0001_1011_0000_0000
        .word 0xED981B00
        @ FMULD D2, D0, D1
        @ 1110_1110_0010_0000_0010_1011_0000_0001
        .word 0xEE202B01              @ D2 = D0 * D1
        @ FADDD D3, D3, D2
        @ 1110_1110_0011_0011_0011_1011_0000_0010
        .word 0xEE333B02              @ D3 (sum) += D2
        ADD   R6, R6, #1              @ k++
        B     KLOOP
KEND:   MUL   R8, R0, R4              @ i * n
        ADD   R8, R8, R5              @ (i * n) + j
        ADD   R8, R3, R8, LSL #3      @ R8 = addr of C[i][j]
        @ FSTD D3, [R8]
        @ 1110_1101_0001_1000_0011_1011_0000_0000
        .word 0xED883B00              @ C[i][j] = sum
        ADD   R5, R5, #1              @ j++
        B     JLOOP
EXIT:
        @ Step 7: stop counters
        MOV   R0, #0
        MCR   P15, 0, R0, C9, C12, 0  @ Write 0 to PMCR to stop counters

        @ Step 8-10:
        /* Select PMN0 and read out result into R3 */
        MOV   R0, #0                  @ PMN0
        MCR   P15, 0, R0, C9, C12, 5  @ Write 0 to PMSELR
        MRC   P15, 0, R3, C9, C13, 2  @ Read PMXEVCNTR into R3

        /* PMN1 into R4 */
        MOV   R0, #1                  @ PMN 1
        MCR   P15, 0, R0, C9, C12, 5  @ write 1 to PMSELR
        MRC   P15, 0, R4, C9, C13, 2  @ read PMXEVCNTR into R4

        /* PMN2 into R5 */
        MOV   R0, #2                  @ PMN 2
        MCR   P15, 0, R0, C9, C12, 5  @ write 2 to PMSELR
        MRC   P15, 0, R5, C9, C13, 2  @ read PMXEVCNTR into R5
END:    B     END

/* Matrices */
        @ sizes
        .equ small_matN, 2

        @ zero value
zero:   .double   0.0

        @ arrays
small_matA:
        .double   1.2               @ Will make the matrix    @ 0x3FF3333333333333
        .double   3.4               @ | 1.2   3.4 |           @ 0x400B333333333333
        .double   0.9               @ | 0.9   9.1 |           @ 0x3FECCCCCCCCCCCCD
        .double   9.1               @                         @ 0x4022333333333333
small_matB:
        .double   4.2               @ Will make the matrix    @ 0x4010CCCCCCCCCCCD
        .double   6.9               @ | 4.2   6.9 |           @ 0x401B99999999999A
        .double   7.1               @ | 7.1   0.5 |           @ 0x401c666666666666
        .double   0.5               @                         @ 0x3fe0000000000000
small_matC:
        .double   0                 @ Should expect
        .double   0                 @ | 29.18    9.98 |
        .double   0                 @ | 68.39   10.76 |
        .double   0                 @
