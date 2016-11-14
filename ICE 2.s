; QUESTION 1      ; address
      MOV r2, #0  ; 0
      CMP r0, r1  ; 4
      BLT ELSE    ; 8
      B   DONE    ; 12
ELSE: MOV r2, #2  ; 16
DONE:

; QUESTION 1 CONDITIONAL
      MOV r2, E0
      CMP r0, r1
      MOVLT r2, #2

; QUESTION 2
      MOV r4, #10
      CMP r0, r4
LP:   BGE END
      LDR r5, [r3, r0, LSL #2]
      ADD r5, r5, r1
      STR r5, [r2, r0, LSL #2]
      ADD r0, r0, #1
      B LP
END:

; QUESTION 3
; [1110 00 1 1101 0 0000 0010 000000000000]==> 0xE3A02000
; [1110 00010101 0000 0000 000000000001]==>    0xE1500001
; [1011 1010 000000000000000000000000]==>      0xDA000000
; [1110 1010 000000000000000000000000]==>      0xEA000000
; [1110 00 1 1101 0 0000 0010 000000000010]==> 0xE3A02002