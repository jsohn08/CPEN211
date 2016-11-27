/* Based off of Lab 11 instructions */

/* C program to implement:
 * #define N 128
 * double A[N][N], B[N][N], C[N][N];
 * void matrix_multiply(void) {
 *   int i, j, k;
 *   for (i=0; i<N; i++) {
 *     for (j=0; j<N; j++) {
 *       double sum=0.0;
 *       for( k=0; k<N; k++ )
 *         sum += A[i][k] * B[k][j];
 *       C[i][j] = sum;
 *     }
 *   }
 * }
 */
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
        LDR   R0, =small_n            @ [editable] define N 2
        LDR   R1, =small_mat_a        @ [editable] base address for matrix A
        LDR   R2, =small_mat_b        @ [editable] base address for matrix B
        LDR   R3, =small_mat_c        @ [editable] base address for matrix C
        MOV   R4, #0                  @ setting i to 0
        MOV   R5, #0                  @ setting j to 0
        MOV   R6, #0                  @ setting k to 0
ILOOP:  CMP   R4, R0                  @ check if i < N
        ADD   R4, #1                  @ i++
        BGE   EXIT
JLOOP:  CMP   R5, R0                  @ check if j < N
        ADD   R5, #1                  @ j++
        BGE   ILOOP
        LDR   R7, =zero@FIXME
        @ FSTD  D3, [R7]
        @ 1110_1101_0001_0111_0011_1011_0000_0000
        .word 0xED173B00              @ set D3 (sum) to 0
KLOOP:  CMP   R6, R0                  @ check if k < N
        MOV   R6, #1                  @ k++
        MUL   R8, R0, R4              @
        ADD   R8, R8, R6              @
        ADD   R8, R8, R1              @ R8 = *(A + (i * n + k))
        @ FLDD D0, [R8]               @ D0 = A[i][k]
        @ 1110_1101_0001_1000_0000_1011_0000_0000
        .word 0xED180B00
        MUL   R8, R0, R6              @
        ADD   R8, R8, R5              @
        ADD   R8, R8, R2              @ R8 = B[k][j]
        @ FLDD D1, [R8]               @ D1 = B[k][j]
        @ 1110_1101_0001_1000_0001_1011_0000_0000
        .word 0xED181B00
        @ FMULD D2, D0, D1
        @ 1110_1110_0010_0000_0010_1011_0000_0001
        .word 0xEE202B01              @ D2 = D0 * D1
        @ FADDD D3, D3, D2
        @ 1110_1110_0011_0011_0011_1011_0000_0010
        .word 0xEE333B02              @ D3 (sum) += D2
        MUL   R8, R0, R4
        ADD   R8, R8, R5
        ADD   R8, R8, R3              @ R8 = addr of C[i][j]
        @ FSTD D3 [R8]
        @ 1110_1101_0001_1000_0011_1011_0000_0000
        .word 0xED183B00              @ C[i][j] = sum

        @ TODO continue here

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
zero:   .double   0.0

        .equ small_n, 2
small_mat_a:
        .double   1.2               @ Will make the matrix
        .double   3.4               @ | 1.2   3.4 |
        .double   0.9               @ | 0.9   9.1 |
        .double   9.1               @
small_mat_b:
        .double   4.2               @ Will make the matrix
        .double   6.9               @ | 4.2   6.9 |
        .double   7.1               @ | 7.1   0.5 |
        .double   0.5               @
small_mat_c:
        .double   0                 @ Should expect
        .double   0                 @ | 29.18   8.98  |
        .double   0                 @ | 68.39   10.76 |
        .double   0                 @
