		AREA ZEROONE, CODE, READONLY
		ENTRY
		MOV R1,#6
		LDR R0,=ARRAY
HERE LDR R2,[R0],#4
		CMP R2,#1
		ADDEQ R5,R5,#1
		ADDNE R6,R6,#1
		SUBS R1,R1,#1
		CMP R1,#0
		BNE HERE
STOP B STOP
ARRAY DCD 0X00,0X00,0X01,0X00,0X01,0X00
		END
	