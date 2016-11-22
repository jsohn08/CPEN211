@ next steps will overwrite R0, R1 over existing IRQ registers
@ PUSH  {R0-R7}

@ save R0 - R15 and CPSR to PD_ARRAYs
LDR   R0, =PD_ARRAY           @ use R0 as base address to PD_ARRAY
LDR   R1, [SP, #0]            @ read each R0-R7 in stack
STR   R1, [R0, #0]            @ R0
LDR   R1, [SP, #4]            @ R1
STR   R1, [R0 ,#4]
LDR   R1, [SP, #8]            @ R2
STR   R1, [R0 ,#8]
LDR   R1, [SP, #12]           @ R3
STR   R1, [R0 ,#12]
LDR   R1, [SP, #16]           @ R4
STR   R1, [R0 ,#16]
LDR   R1, [SP, #20]           @ R5
STR   R1, [R0 ,#20]
LDR   R1, [SP, #24]           @ R6
STR   R1, [R0 ,#24]
LDR   R1, [SP, #28]           @ R7
STR   R1, [R0 ,#28]

STR   R8, [R0, #32]           @ R8
STR   R9, [R0, #36]           @ R9
STR   R10, [R0, #40]          @ R10
STR   R11, [R0, #44]          @ R11
STR   R12, [R0, #48]          @ R12

LDR   R1, =EXIT_IRQ
STR   R1, [R0, #60]           @ R15 (PC)

MRS   R1, SPSR                @ copies status register
STR   R1, [R0, #64]

@ Change to SVC (supervisor) mode with interrupts disabled
@ to save SP and LR
MOV		R1, #0b11010011					@ interrupts masked, MODE = SVC
MSR		CPSR, R1								@ change to supervisor mode
STR   SP, [R0, #52]           @ R13 (SP)
STR   LR, [R0, #56]           @ R14 (LR)
MOV		R1, #0b11010010					@ interrupts masked, MODE = IRQ
MSR		CPSR_c, R1							@ change back to IRQ mode

@ update CURRENT_PID
LDR   R1, =CURRENT_PID
LDR   R2, [R1]
CMP   R2, #1                  @ toggle CURRENT_PID
MOVEQ R3, #0
MOVNE R3, #1
STR   R3, [R1]

@ restore registers from the other process
ADD   R0, R0, #68             @ move base address to the second half of DP_ARRAY
LDR   R1, [R0, #4]
LDR   R2, [R0, #8]
LDR   R3, [R0, #12]
LDR   R4, [R0, #16]
LDR   R5, [R0, #20]
LDR   R6, [R0, #24]
LDR   R7, [R0, #28]
LDR   R8, [R0, #32]
LDR   R9, [R0, #36]
LDR   R10, [R0, #40]
LDR   R11, [R0, #44]
LDR   R12, [R0, #48]          @ load R1-R12, we still need R0

@ Change to SVC (supervisor) mode with interrupts disabled
@ to load SP and LR
MOV		R1, #0b11010011					@ interrupts masked, MODE = SVC
MSR		CPSR, R1								@ change to supervisor mode
LDR   SP, [R0, #52]           @ R13 (SP)
LDR   LR, [R0, #56]           @ R14 (LR)
MOV		R1, #0b11010010					@ interrupts masked, MODE = IRQ
MSR		CPSR_c, R1							@ change back to IRQ mode

LDR   R1, [R0, #64]           @ load and move status reg into SPSR
MSR   SPSR, R1

LDR   R0, [R0]                @ finally load R0

@ SUBS  PC, LR, #4              @ restore
