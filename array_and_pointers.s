// clear an array using indecies
clear1:
        MOV r2, #0      // r2 is i = 0
        MOV r3, #0      // r3 is 0 (for clearing)
loop1:  STR r3, [r0, r2, LSL #2]    // array[i] = 0
        ADD r2, r2, #1  // i++
        CMP r2, r1      // if i < size
        BLT loop1

// clera array using pointers
clear2:
        MOV r2, #0      // p = address of array[0]
        MOV r3, #0      // for clearing
        ADD r4, r0, r1, LSL #2  // r4 is the end address of array
loop2:  STR r3, [r2], #4        // *p = 0, then increment address by 4 bytes
        CMP r2, r4      // check if p < address of array[size]
        BLT loop2
