// recursive binary search function
// r0 - [PARAM 1] - int * numbers   -- pointer to the array
// r1 - [PARAM 2] - int key         -- thing we're looking for
// r2 - [PARAM 3] - int startIndex  -- starting index to search
// r3 - [PARAM 4] - int endIndex    -- ending index
// r4 - [PARAM 5] - int NumCalls    -- "depth" of recursion

// r5 - int middleIndex
// r6 - value of array at middleIndex

// r12 - return value from function call

binary_search:
    // save changing registers
    SUB sp, sp, #16
    STR r0, [sp, #0]        // backup r0 (since return value of functions override)
    STR r2, [sp, #4]        // backup starting index
    STR r3, [sp, #8]        // backup ending index
    STR lr, [sp, #12]       // backup link register


    // increment NumCalls
    ADD r4, r4, #1

    // calculate midpoint
    SUB r5, r3, r2          // middleIndex = endIndex - startIndex
    ADD r5, r2, r5, RSL #1  // middleIndex = middleIndex / 2 + startIndex

    // compare starting index and ending index
    CMP r2, r3

    // return -1 (exception) if starting index is somehow bigger than ending index
    BLE L1                  // else (startIndex <= endIndex)
    MOV r0, #0
    SUB r0, r0, #1          // return (r0) -1
    ADD sp, sp, #16         // pop stack
    MOV pc, lr              // return to caller function

    // get value of array at middleIndex
L1: LDR r6, [r0, r5, LSL #2]

    // compare if the key index matches value from middle index
    CMP r6, r1

    // return midpoint if key (r1) matches the value (r6)
    BLT L2                  // else if midpoint too small
    BGT L3                  // else if midpoint too large
    MOV r0, r5              // set return value to middle
    ADD sp, sp, #16         // restore stack
    MOV pc, lr              // return to caller

    // if midpoint too small, call binary search function
    // binary_search(numbers, key, middleIndex+1, endIndex, NumCalls)
L2: LDR r0, [sp, #0]        // set r0 to addr to array
    MOV r2, r5
    ADD r2, r2, #1          // set startIndex to middleIndex + 1

    // call recursive function, return value stored in r0
    BL  binary_search

    // after calling, go to the end of the function
    B   L4
L3:

L4:

LX: LDR lr, [sp, #12]       // loadback link register
    ADD sp, sp, #16         // restore stack pointer
    MOV pc, lr              // return to caller
