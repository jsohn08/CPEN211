; Lab 9
    .include "address_map_arm.s"
    .text
    .global _main

; main function
_main:
    LDR r8, =LEDR_BASE      ; LED output

    ; setup array
    LDR r0, =array

    ; setup arguments for function call
    MOV r1, #55             ; looking for 55 - should return dec17
    MOV r2, #0              ; starting index
    MOV r3, #19             ; ending index
    MOV r4, #0              ; numcalls

    ; get return from function call
    BL  binary_search       ; call function, returned in r0

    ; put that return value onto LED
    STR r0, [r8]            ; display to LEDs

; recursive binary search function
; r0 - [PARAM 1] - int * numbers   -- pointer to the array
; r1 - [PARAM 2] - int key         -- thing we're looking for
; r2 - [PARAM 3] - int startIndex  -- starting index to search
; r3 - [PARAM 4] - int endIndex    -- ending index
; r4 - [PARAM 5] - int NumCalls    -- "depth" of recursion
;
; r5 - int middleIndex
; r6 - value of array at middleIndex
; r7 - (-)NumCalls
;
; !!IMPORTANT TODO!! - PARAM 4 NumCalls must be passed in via stack
binary_search:
    ; save changing registers
    SUB sp, sp, #8
    STR r0, [sp, #0]        ; backup r0 (since return value of functions override)
    STR lr, [sp, #4]        ; backup link register


    ; increment NumCalls
    ADD r4, r4, #1

    ; calculate midpoint
    SUB r5, r3, r2          ; middleIndex = endIndex - startIndex
    ADD r5, r2, r5, LSR #1  ; middleIndex = middleIndex / 2 + startIndex

    ; compare starting index and ending index
    CMP r2, r3

    ; return -1 (exception) if starting index is somehow bigger than ending index
    BLE L1                  ; else (startIndex <= endIndex)
    MOV r0, #0
    SUB r0, r0, #1          ; return (r0) -1
    B   LX                  ; end of function

    ; get value of array at middleIndex
L1: LDR r6, [r0, r5, LSL #2]

    ; compare if the key index matches value from middle index
    CMP r6, r1

    ; (if) key (r1) == value of midpoint (r6) then return midpoint
    BLT L2                  ; else if midpoint too small
    BGT L3                  ; else if midpoint too large
    MOV r0, r5              ; set return value to middle
    B   LX                  ; end of function

    ; (else if) midpoint too small, call binary search function
    ; binary_search(numbers, key, middleIndex+1, endIndex, NumCalls)
L2: LDR r0, [sp, #0]        ; set r0 to addr to array
    MOV r2, r5
    ADD r2, r2, #1          ; set startIndex to middleIndex + 1

    ; call recursive function, return value stored in r0
    BL  binary_search

    ; after function, go assign numbers[midpoint] to numcalls
    B   L4                  ; assign -numcalls

    ; (else if) midpoint too large, call binary search function
    ; binary_search(numbers, key, startIndex, middleIndex-1, NumCalls)
L3: LDR r0, [sp, #0]        ; set r0 to addr to array
    MOV r3, r5
    SUB r3, r3, #1          ; set endIndex to middleIndex - 1

    ; call function, returned value stored in r0
    BL  binary_search

    ; after function, go assign numbers[midpoint] to numcalls
    B   L4                  ; assign -numcalls

    ; set numeber[middlePoint] to -numcalls
L4: LDR r0, [sp, #0]          ; load back the addr to the array
    MOV r7, #0
    SUB r7, r7, r4            ; r7 = 0 - numcalls
    STR r7, [r0, r5, LSL #2]  ; array[middlePoint] = -NumCalls

    ; go to the end of function
    B   LX

    ; end of function
LX: LDR lr, [sp, #12]       ; loadback link register
    ADD sp, sp, #8          ; pop stack
    MOV pc, lr              ; return to caller


; array
array:
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
