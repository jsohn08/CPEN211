.org 0
    MOV R0, #1
    MOV R1, #64
L1: ADD R0, R0, R0
    CMP R0, R1
    BLE L1
    HALT
