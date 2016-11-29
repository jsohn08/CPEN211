/* Based off of Lab 11 instructions */
/* Written by: Muchen He */
/* BLOCKED Matrix multiplication - measure performance */
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
        LDR   R0, =matN
        LDR   R1, =matA
        LDR   R2, =matB
        LDR   R3, =matC
        LDR   R8, =blocksize

        MOV   R5, #0                  @ j = 0
JLOOPO: CMP   R5, R0                  @ check if j < n
        BGE   EXIT
        MOV   R4, #0                  @ i = 0
ILOOPO: CMP   R4, R0                  @ check if i < n
        ADDGE R5, R5, R8              @ j += BLOCKSIZE
        BGE   JLOOPO
        MOV   R6, #0                  @ k = 0
KLOOPO: CMP   R6, R0                  @ check if k < n
        ADDGE R4, R4, R8              @ i += BLOCKSIZE
        BGE   ILOOPO
        MOV   R9, R4                  @ i_inner = i
ILOOPI: ADD   R7, R4, R8              @ i + BLOCKSIZE
        CMP   R9, R7                  @ check if i_inner < i + BLOCKSIZE
        ADDGE R6, R6, R8              @ k += BLOCKSIZE
        BGE   KLOOPO
        MOV   R10, R5                 @ j_inner = j
JLOOPI: ADD   R7, R5, R8
        CMP   R10, R7                 @ check if j_inner < j + BLOCKSIZE
        ADDGE R9, R9, #1              @ i_innner++
        BGE   ILOOPI

        /* int cij = C[(jn * n) + in] */
        MUL   R7, R0, R9              @ in * n
        ADD   R7, R7, R10             @ (in * n) + jn
        ADD   R7, R3, R7, LSL #3      @ addr of C[in][jn]
        .word 0xED973B00              @ set D3 (cij) = C[in][jn]

        MOV   R11, R6                 @ kn = k
KLOOPI: ADD   R7, R6, R8
        CMP   R11, R7                 @ check if k_inner < k + BLOCKSIZE
        BGE   KEND

        /* cij += A[(in * n) + kn] * B[(kn * n) + jn] */
        MUL   R7, R0, R9              @ in * n
        ADD   R7, R7, R11             @ (in * n) + kn
        ADD   R7, R1, R7, LSL #3      @ addr of A[in][kn]
        .word 0xED970B00              @ set D0 = A[in][kn]
        MUL   R7, R0, R11             @ kn * n
        ADD   R7, R7, R10             @ (kn * n) + jn
        ADD   R7, R2, R7, LSL #3      @ addr of B[kn][jn]
        .word 0xED971B00              @ set D1 = B[kn][jn]
        .word 0xEE202B01              @ set D2 = D0 * D1
        .word 0xEE333B02              @ D3 (cij) += D2

        ADD   R11, R11, #1            @ k_inner++
        B     KLOOPI

        /* C[(in * n) + jn] = cij; */
KEND:   MUL   R7, R0, R9              @ in * n
        ADD   R7, R7, R10             @ (in * n) + jn
        ADD   R7, R3, R7, LSL #3      @ addr of C[i][j]
        .word 0xED873B00              @ C[i][j] = D3 (cji)

        ADD   R10, R10, #1            @ j_inner++
        B     JLOOPI

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
