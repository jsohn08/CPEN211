// recursive binary search function
// r0 - int* numbers   - pointer to the array
// r1 - int key        - the thing we're looking for
// r2 - int startIndex - starting index to search
// r3 - int endInex    - ending index
// r4 - int NumCalls   - "depth" of recursion

// r5 - middle index

binary_search:
    // save arguments
    SUB sp, sp, #20
    STR lr, [sp, #16]
    STR r3, [sp, #12]
    STR r2, [sp, #8]
    STR r1, [sp, #4]
    STR r0, [sp, #0]

    // numcalls++
    ADD r4, r4, #1

    // calculate midpoint
    SUB r5, r3, r2
    ADD r5, r2, r5, RSL #1

    // compare
    CMP r2, r3

    // return -1 if r2 > r3
    BLE L1
    MOV r0, #-1
    ADD sp, sp, #20
    MOV pc, lr

    // r6 - numbers[middle index]
L1: LDR r6, [r0, r5, LSL #2]

    // compare key vs numbers[middleIndex] value
    CMP r6, r1

    // if midpoint is the key we're looking for
    MOVEQ r0, r5

    // if numbers[middleIndex] < key
    BLT L2

    // if numbers[middleIndex] > key
    LDR r0, [sp, #0]
    LDR r1, [sp, #4]
    LDR r2, [sp, #8]
    SUB r3, r5, #1
    BL  binary_search
    MOV r12, r0 // save return value

L2: LDR r0, [sp, #0]
    LDR r1, [sp, #4]
    ADD r2, r5, #1
    LDR r3, [sp, #8]
    BL  binary_search
    MOV r12, r0 // save return value

    // set numbers[m index] to -numcalls
    LDR r0, [sp, #0]  // get address to array
    MOV r6, #0        // set r6 -1
    SUB r6, r6, #1
    MUL r7, r4, r6    // r7 = numcalls * -1
    STR r7, [r0, r5, LSL #2]

    // return key index
    MOV r0, r12
    ADD sp, sp, #20 // restore stack
    MOV pc, lr
