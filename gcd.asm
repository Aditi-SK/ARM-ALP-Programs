			AREA GCD, CODE, READONLY
			ENTRY
			MOV R1,#150
			MOV R2,#18
NOWHERE 	CMP R1,R2
			BGT HERE
			BLT THERE
	
HERE	SUBS R1,R1,R2
			BNE NOWHERE
THERE	SUBS R2,R2,R1
			BNE NOWHERE
	
STOP	B STOP
			END