/* ********************************************************************************
 * Copied from ALTERA MONITOR PROGRAM example files
 * Other modifications are done based off of Lab 10 instructions
 ********************************************************************************/

        .include	"address_map_arm.s"
        .include	"interrupt_ID.s"

/* ********************************************************************************
 * This program demonstrates use of interrupts with assembly language code.
 * The program responds to interrupts from the pushbutton KEY port in the FPGA.
 *
 * The interrupt service routine for the pushbutton KEYs indicates which KEY has
 * been pressed on the HEX0 display.
 ********************************************************************************/

        .section .vectors, "ax"

        B 			_start					   @ reset vector
        B 			SERVICE_UND				 @ undefined instruction vector
        B 			SERVICE_SVC				 @ software interrrupt vector
        B 			SERVICE_ABT_INST	 @ aborted prefetch vector
        B 			SERVICE_ABT_DATA	 @ aborted data vector
        .word 	0							     @ unused vector
        B 			SERVICE_IRQ        @ IRQ interrupt vector
        B 			SERVICE_FIQ				 @ FIQ interrupt vector

/*--- GLOBAL VARIABLES --------------------------------------------------------*/
TIMER_LOAD_VALUE:         .word 0x05F5E100
TIMER_CONTROL_VALUE:      .word 0x00000007
TIMER_LED:                .word 0
CHAR_BUFFER:              .word 0
CHAR_FLAG:                .word 0
GLOBAL_PID:               .word 0
PD_ARRAY:                 .fill 17, 4, 0xDEADBEEF
                          .fill 13, 4, 0xDEADBEE1
                          .word 0x3F000000        @ SP
                          .word 0                 @ LR
                          .word PROC1+4           @ PC
                          .word 0x53              @ CPSR (0x53 means IRQ enabled, mode = SVC)

        .text
        .global	_start
_start:
        /* Set up stack pointers for IRQ and SVC processor modes */
        MOV		R1, #0b11010010					@ interrupts masked, MODE = IRQ
        MSR		CPSR_c, R1							@ change to IRQ mode
        LDR		SP, =A9_ONCHIP_END - 3	@ set IRQ stack to top of A9 onchip memory
        /* Change to SVC (supervisor) mode with interrupts disabled */
        MOV		R1, #0b11010011					@ interrupts masked, MODE = SVC
        MSR		CPSR, R1								@ change to supervisor mode
        LDR		SP, =DDR_END - 3				@ set SVC stack to top of DDR3 memory

        BL		CONFIG_GIC						  @ configure the ARM generic interrupt controller

        @ write to the pushbutton KEY interrupt mask register
        LDR		R0, =KEY_BASE						@ pushbutton KEY base address
        MOV		R1, #0xF								@ set interrupt mask bits
        STR		R1, [R0, #0x8]					@ interrupt mask register is (base + 8)

        @ enable IRQ interrupts in the processor
        MOV		R0, #0b01010011					@ IRQ unmasked, MODE = SVC
        MSR		CPSR_c, R0

        /* CHANGED (part 2)
         * Setup timer interrupt on 2Hz */
        LDR   R0, =MPCORE_PRIV_TIMER      @ base address of timer config
        LDR   R1, =TIMER_LOAD_VALUE       @ 100M (immediate can't load it)
        LDR   R2, =TIMER_CONTROL_VALUE    @ prescaler 0, IAE = 111

        LDR   R3, [R1]                    @ load the values of the global variables
        LDR   R4, [R2]

        STR   R3, [R0]                    @ store timer load value
        STR   R4, [R0, #0x8]              @ store timer prescaler value

        /* CHANGED (part 3)
         * configure JTAG UART interrupt */
        LDR   R0, =JTAG_UART_BASE   @ base address of JTAG data register
        MOV   R1, #1                @ set RE to 1 for read interrupt
        STR   R1, [R0, #0x4]        @ write settings to JTAG config

IDLE:
        /* CHANGED (part 3)
         * modified IDLE loop to check for CHAR FLAG */
        LDR   R4, =CHAR_FLAG
        LDR   R5, [R4]

        CMP   R5, #1                @ check if CHAR_FLAG is 1
        BNE   IDLE                  @ if CHAR_FLAG is not 1, skip

        LDR   R6, =CHAR_BUFFER      @ load CHAR_BUFFER to R0 as argument
        LDR   R0, [R6]
        BL    PUT_JTAG              @ call write JTAG function for DE1->Host computer
        MOV   R7, #0
        STR   R7, [R4]              @ reset CHAR_FLAG to 0

        B 		IDLE									@ main program simply idles

PROC1:
        /* CHANGED (part 4)
         * second process for multitasking */
        .equ LARGE_N, 0xFFFFF       @ store large number
        LDR R3, =LARGE_N            @ load it back to register
        LDR R0, =LEDR_BASE          @ LED for output
        MOV R1, #0                  @ counter
L1:     ADD R1, R1, #1              @ add 1 to R1
        STR R1, [R0]                @ apply to LEDs
        MOV R2, #0                  @ set secondary counter for delay
L2:     ADD R2, R2, #1              @ i = i + 1
        CMP R2, R3                  @ compare R2 < R3
        BLT L2                      @ branch back to nested loop
        B   L1                      @ infinite loop

/* CHANGED
 * --- JTAG FUNCTION (From Lab 10 instructions) -------------------------------*/
PUT_JTAG:
        LDR   R1, =0xFF201000       @ JTAG UART base address
        LDR   R2, [R1, #4]          @ read the JTAG UART control register
        LDR   R3, =0xFFFF
        ANDS  R2, R2, R3            @ check for write space
        BEQ   END_PUT               @ if no space, ignore the character
        STR   R0, [R1]              @ send the character
END_PUT:
        BX    LR

/* Define the exception service routines */

/*--- Undefined instructions --------------------------------------------------*/
SERVICE_UND:
  			B SERVICE_UND

/*--- Software interrupts -----------------------------------------------------*/
SERVICE_SVC:
  			B SERVICE_SVC

/*--- Aborted data reads ------------------------------------------------------*/
SERVICE_ABT_DATA:
  			B SERVICE_ABT_DATA

/*--- Aborted instruction fetch -----------------------------------------------*/
SERVICE_ABT_INST:
  			B SERVICE_ABT_INST

/*--- IRQ ---------------------------------------------------------------------*/
SERVICE_IRQ:
  			PUSH		{R0-R7, LR}

        /* CHANGED
         * saves a copy of stack pointer at this point in R7 */
        MOV   R7, SP

  			/* Read the ICCIAR from the CPU interface */
  			LDR		R4, =MPCORE_GIC_CPUIF
  			LDR		R5, [R4, #ICCIAR]				@ read from ICCIAR

FPGA_IRQ1_HANDLER:
        /* CHANGED
        * Now it should handle more than just key exceptions including timer */
  			CMP		R5, #KEYS_IRQ           @ if interrupt is coming from button
        BNE   FPGA_IRQ2_HANDLER

        @ deal with key interrupt
        BL    KEY_ISR
        B     EXIT_IRQ                @ break out

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

        @ save R0 - R15 and CPSR to PD_ARRAYs
        @ LDR   R0, =PD_ARRAY           @ use R0 as base address to PD_ARRAY
        @ LDR   R1, [R7, #0]            @ read each R0-R7 in stack
        @ STR   R1, [R0, #0]
        @ TODO FIXME CONTINUE FROM HERE, store registers to PD_ARRAY

        @ increment global variable and update LEDs
        @ LDR   R0, =TIMER_LED
        @ LDR   R1, [R0]
        @ ADD   R1, R1, #1
        @ STR   R1, [R0]
        @ LDR   R0, =LEDR_BASE
        @ STR   R1, [R0]
        B     EXIT_IRQ                @ break out

FPGA_IRQ3_HANDLER:
        /* CHANGED (part 3) */
        @ else if source of interrupt is from JTAG UART
        CMP   R5, #JTAG_IRQ
        BNE   UNEXPECTED

        @ deal with JTAG interrupt
        LDR   R0, =JTAG_UART_BASE
        LDR   R1, =CHAR_BUFFER
        LDR   R2, =CHAR_FLAG
        LDR   R3, [R0]                @ read data register
        STR   R3, [R1]                @ store data register to CHAR_BUFFER
        MOV   R6, #1
        STR   R6, [R2]                @ set CHAR_FLAG to 1
        B     EXIT_IRQ                @ break out

UNEXPECTED:
        B     UNEXPECTED

EXIT_IRQ:
  			/* Write to the End of Interrupt Register (ICCEOIR) */
  			STR		R5, [R4, #ICCEOIR]			@ write to ICCEOIR

  			POP		{R0-R7, LR}
  			SUBS	PC, LR, #4

/*--- FIQ ---------------------------------------------------------------------*/
SERVICE_FIQ:
  			B			SERVICE_FIQ

        .end
