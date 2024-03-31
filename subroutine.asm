			AREA SUB, CODE, READONLY
			ENTRY
			MOV R6,#0X45000000
			MOV R7,#0X10000000
			BL ADDITION
			MOV R1,#0X22				// LR stores the address of this line 
			MOV R2,R1
			
ADDITION ADDS R8,R6,R7
			MOV PC, LR 				// LR moves to PC, PC performs the next function
STOP 	B STOP
			END