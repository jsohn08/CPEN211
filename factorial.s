fact:
    SUB sp, sp, #8    // adjust stackpointer for 2 items
    STR lr, [sp, #4]  // store return address
    STR r0, [sp, #0]  // store current 'n'
    CMP r0, #1        // if (n >= 1) then recursive
    BGE L1

    MOV r0, #1        // else return 1
    ADD sp, sp, #8    // remove 2 items from stack by adding sp
    MOV pc, lr        // return to caller

L1: SUB r0, r0, #1    // argument gets n-1
    BL  fact          // call recursive function
    MOV r12, r0       // save the return value
    LDR r1, [sp, #0]  // restore 'n' argument
    LDR lr, [sp, #4]  // restore lr return addr
    ADD sp, sp, #8    // pop 2 items from stack
    MUL r0, r1, r12   // mutliply r0 = r1*r12
    MOV pc, lr        // return to caller
