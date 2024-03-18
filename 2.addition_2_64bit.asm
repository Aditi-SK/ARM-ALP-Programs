				AREA ADD_64BIT, CODE, READONLY
				ENTRY 
				LDR R0,UVAL1					;load the value of UVAL1 in regoster R0						
				LDR R1,LVAL1
				LDR R2,UVAL2
				LDR R3,LVAL2
				ADDS R5,R1,R3				;add and set Carry flag if generated
				ADC R6,R0,R2					;add with carry generated from addition of lower word
				
				AREA ADD_64BIT, DATA, READWRITE
UVAL1		DCD 0XFFFFFFFF				;UPPER WORD(32 BIT) OF 1ST 64 BIT NUMBER      since the registers can store 32 bit data only
LVAL1		DCD 0XAAAAAABB		;LOWER WORD OF 1ST 64 BIT NUMBER
UVAL2		DCD 0X22446688				;UPPER WORD(32 BIT) OF 2nd 64 BIT NUMBER 
LVAL2		DCD 0X87654321				;LOWER WORD OF 2nd 64 BIT NUMBER
				END
