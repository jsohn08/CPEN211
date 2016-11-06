.org 0
	MOV R0,#0
	MOV R1,#1
	MOV R2,#1
	MOV R3,#2
	MOV R4,#5


L0:		MOV R6,#100
			CMP R1,R2
			BEQ L1
			CMP R1,R3
			BEQ L2
			CMP R1,R4
			BEQ L3

L1:			MOV R5,#28
			ADD R2,R2,R2
			BLX R5
			STR R0,[R6]
			B L4

L2:			MOV R5,#30
			ADD R2,R2,R2
			BLX R5
			STR R0,[R6]
			B L4

L3:			MOV R5,#32
			ADD R2,R2,R2
			BLX R5
			STR R0,[R6]
			B L4

L4:			HALT


Object1: 	MOV R0,#10
          BX R7
Object2: 	MOV R0,#20
          BX R7
Object3: 	MOV R0,#30
          BX R7
