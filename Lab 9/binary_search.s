/* Lab 9 */
    .include "address_map_arm.s
    .text
    .global _start

// r0 - address to array and return of binary search
// r1 - key
// r2 - startIndex
// r3 - end index
// r4 - num calls
// r5 - LEDR base
// r6 - SW base
// r7 - SW values


/* main function */
@_start:
@    LDR r8, =LEDR_BASE      // LED output
@
@    // setup array
@    LDR r0, =array_three
@
@    // setup arguments for function call
@    MOV r1, #60             // looking for 8
@    MOV r2, #0              // starting index
@    MOV r3, #22             // ending index
@    MOV r4, #0              // numcalls
@
@    // get return from function call
@    BL  binary_search       // call function, returned in r0
@
@    // put that return value onto LED
@    STR r0, [r8]            // display to LEDs
@
@HT: B  HT                   // halt the program

/* main function */
_start:
    // setup switches
    LDR r5, =LEDR_BASE
    LDR r6, =SW_BASE
B1: LDR r7, [r6]            // wait for switches

    // check all the switches are off
    MOV r8 #0
    CMP r7, r8

    // if off
    BEQ B1

    // else setup arguments for first test
    LDR r0, =array_one      // first test
    MOV r1, #32             // looking for 32, should return 0
    MOV r2, #0
    MOV r3, #0              // start & end index 0 since only 1 item

    // call function, returned at r0
    BL  binary_search

    // display to LED
    STR r0, [r5]

B2: LDR r7, [r6]            // wait for switches to turn 0
    CMP r7, r8
    BNE B2

B3: LDR r7, [r6]            // wait for switches to turn 1
    CMP r7, r8
    BEQ B3

    // second test
    LDR r0, =array_two
    MOV r1, #4              // looking for 4, should return 2
    MOV r2, #0
    MOV r3, #7              // 8 items
    BL  binary_search
    STR r0, [r5]

B4: LDR r7, [r6]            // wait for switches to turn 0
    CMP r7, r8
    BNE B4

B5: LDR r7, [r6]            // wait for switches to turn 1
    CMP r7, r8
    BEQ B5

    // third test
    LDR r0, =array_three
    MOV r1, #60             // looking for 60, should return 19 (13)
    MOV r2, #0
    MOV r3, #22             // 23 items
    BL  binary_search
    STR r0, [r5]

HT: B HT                    // halt program

// recursive binary search function
// r0 - [PARAM 1] - int * numbers   -- pointer to the array
// r1 - [PARAM 2] - int key         -- thing we're looking for
// r2 - [PARAM 3] - int startIndex  -- starting index to search
// r3 - [PARAM 4] - int endIndex    -- ending index
// r4 - [PARAM 5] - int NumCalls    -- "depth" of recursion
//
// r5 - int middleIndex
// r6 - value of array at middleIndex
// r7 - (-)NumCalls
//
// r12 - return store
// !!IMPORTANT TODO!! - PARAM 4 NumCalls must be passed in via stack
binary_search:
    // save changing registers
    SUB sp, sp, #8
    STR r0, [sp, #0]        // backup r0 (since return value of functions override)
    STR lr, [sp, #4]        // backup link register

    // increment NumCalls
    ADD r4, r4, #1

    // calculate midpoint
    SUB r5, r3, r2          // middleIndex = endIndex - startIndex
    ADD r5, r2, r5, LSR #1  // middleIndex = middleIndex / 2 + startIndex

    // compare starting index and ending index
    CMP r2, r3

    // return -1 (exception) if starting index is somehow bigger than ending index
    BLE L1                  // else (startIndex <= endIndex)
    MOV r0, #0
    SUB r0, r0, #1          // return (r0) -1
    B   LX                  // end of function

    // get value of array at middleIndex
L1: LDR r6, [r0, r5, LSL #2]

    // compare if the key index matches value from middle index
    CMP r6, r1

    // (if) key (r1) == value of midpoint (r6) then return midpoint
    BLT L2                  // else if midpoint too small
    BGT L3                  // else if midpoint too large
    MOV r0, r5              // set return value to middle
    B   LX                  // end of function

    // (else if) midpoint too small, call binary search function
    // binary_search(numbers, key, middleIndex+1, endIndex, NumCalls)
L2: LDR r0, [sp, #0]        // set r0 to addr to array
    MOV r2, r5
    ADD r2, r2, #1          // set startIndex to middleIndex + 1

    // call recursive function, return value stored in r0
    BL  binary_search

    // after function, go assign numbers[midpoint] to numcalls
    B   LA                  // assign -numcalls

    // (else if) midpoint too large, call binary search function
    // binary_search(numbers, key, startIndex, middleIndex-1, NumCalls)
L3: LDR r0, [sp, #0]        // set r0 to addr to array
    MOV r3, r5
    SUB r3, r3, #1          // set endIndex to middleIndex - 1

    // call function, returned value stored in r0
    BL  binary_search

    // after function, go assign numbers[midpoint] to numcalls
    B   LA                  // assign -numcalls

    // set numeber[middlePoint] to -numcalls
LA: MOV r12, r0               // backup the return to r12
    LDR r0, [sp, #0]          // load back the addr to the array
    MOV r7, #0
    SUB r7, r7, r4            // r7 = 0 - numcalls
    STR r7, [r0, r5, LSL #2]  // array[middlePoint] = -NumCalls
    MOV r0, r12               // move back the return value

    // go to the end of function
    B   LX

    // end of function
LX: LDR lr, [sp, #4]        // loadback link register
    ADD sp, sp, #8          // pop stack
    MOV pc, lr              // return to caller


// arrays
array_one:
    .word 32

array_two:
    .word 1
    .word 2
    .word 4
    .word 8
    .word 15
    .word 16
    .word 23
    .word 42

array_three:
    .word 4
    .word 7
    .word 11
    .word 14
    .word 16
    .word 17
    .word 18
    .word 22
    .word 26
    .word 30
    .word 33
    .word 37
    .word 40
    .word 44
    .word 47
    .word 49
    .word 52
    .word 55
    .word 59
    .word 60
    .word 69
    .word 72
    .word 111
