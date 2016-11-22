@ ... some stuff above

FPGA_IRQ2_HANDLER:
        /* CHANGED (part 2) */
        @ else if source of interrupt is from timer
        CMP   R5, #MPCORE_PRIV_TIMER_IRQ
        BNE   FPGA_IRQ3_HANDLER

        @ deal with timer interrupt
        LDR   R0, =MPCORE_PRIV_TIMER
        LDR   R1, [R0, #0xC]          @ read edge capture register at offset 12
        MOV   R2, #0xF
        STR   R2, [R0, #0xC]          @ write to offset 12 to clear interrupt

        /* CHANGED (part 4) */
        @ check if process 1 or 0
        LDR   R0, =CURRENT_PID
        LDR   R1, [R0]
        CMP   R1, #0
        BEQ   STR_P0                  @ if current PID is 0
        BNE   STR_P1                  @ if current PID is 1

STR_P0: @ get base addrses for first half
        LDR   R0, =PD_ARRAY
        B     IRQPA
STR_P1: @ get base address for second half
        LDR   R0, =PD_ARRAY
        ADD   R0, #68
        B     IRQPA

IRQPA:   @ store regs into first half and load the second half
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

        @ Change to SVC (supervisor) mode with interrupts disabled
        @ to save SP and LR
        MOV		R1, #0b11010011					@ interrupts masked, MODE = SVC
        MSR		SPSR, R1								@ change to supervisor mode
        STR   SP, [R0, #52]           @ R13 (SP)
        STR   LR, [R0, #56]           @ R14 (LR)
        MOV		R1, #0b11010010					@ interrupts masked, MODE = IRQ
        MSR		CPSR_c, R1							@ change back to IRQ mode

        @ store PC value to exit when returned to this process
        LDR   R1, =EXIT_IRQ
        STR   R1, [R0, #60]           @ R15 (PC)

        @ store status
        MRS   R1, CPSR                @ copies status register
        STR   R1, [R0, #64]

        @ check for the second part
        LDR   R1, =PD_ARRAY
        CMP   R0, R1
        BEQ   IRQP0B                  @ process 0 -> process 1
        BNE   IRQP1B                  @ process 1 -> process 0

IRQP0B: @ process 0
        ADD   R0, R0, #68             @ change base address to second half
        MOV   R1, #1                  @ change process to 1
        B     IRQPB
IRQP1B: @ process 1
        SUB   R0, R0, #68             @ change base addresss to first half
        MOV   R1, #0                  @ change process to 0
        B     IRQPB

IRQPB:  @ store new process ID
        LDR   R2, =CURRENT_PID
        STR   R1, [R2]

        @ load registers from other half of DP_ARRAY
        LDR   R1, [R0, #4]            @
        LDR   R2, [R0, #8]            @
        LDR   R3, [R0, #12]           @
        LDR   R4, [R0, #16]           @
        LDR   R5, [R0, #20]           @
        LDR   R6, [R0, #24]           @
        LDR   R7, [R0, #28]           @
        LDR   R8, [R0, #32]           @
        LDR   R9, [R0, #36]           @
        LDR   R10, [R0, #40]          @
        LDR   R11, [R0, #44]          @
        LDR   R12, [R0, #48]          @
        LDR   R13, [R0, #52]          @
        LDR   R14, [R0, #56]          @ load R1-R14, we still need R0s

        LDR   R1, [R0, #64]           @ load and move status reg into SPSR
        MSR   SPSR, R1
        LDR   R0, [R0]                @ load R0, overwritting base address

        B     EXIT_IRQ                @ break out and restore PC and CPSR

@ ... some stuff below
