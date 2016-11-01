.org 0
main:
    MOV R0,#10 // R0 = 10
    MOV R1,#2 // R1 = 2
    BL sum // Link register (R7) = PC+1 = 3; Result 12 is returned in R0
    MOV R1,#8 // R1 = 8
    BL sum // Link register (R7) = PC+1 = 5; Result 20 is returned in R0
    HALT // special instruction to stop the processor (opcode=111)
sum:
    ADD R0,R0,R1 // R0 = R0 + R1
    BX R7 // PC = R7
