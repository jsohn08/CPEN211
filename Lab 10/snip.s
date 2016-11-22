        LDR   R0, =PD_ARRAY
        LDR   R1, [R0, #0]
        STR   R1, [SP, #0]
        LDR   R1, [R0, #4]
        STR   R1, [SP, #4]
        LDR   R1, [R0, #8]
        STR   R1, [SP, #8]
        LDR   R1, [R0, #12]
        STR   R1, [SP, #12]
        LDR   R1, [R0, #16]
        STR   R1, [SP, #16]
        LDR   R1, [R0, #20]
        STR   R1, [SP, #20]
        LDR   R1, [R0, #24]
        STR   R1, [SP, #24]
        LDR   R1, [R0, #28]
        STR   R1, [SP, #28]           @ up to R7 here

        STR   R8, [SP, #32]
        STR   R9, [SP, #36]           @ R9
        STR   R10, [SP, #40]          @ R10
        STR   R11, [SP, #44]          @ R11
        STR   R12, [SP, #48]          @ R12

        LDR   LR, [R0, #60]
        STR   LR, [SP, #32]
