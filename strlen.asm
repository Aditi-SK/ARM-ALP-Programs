				AREA STRLEN, CODE, READONLY
				ENTRY
				LDR R0,=MYSTRING				; load the address of the memory location of MYSTRING
				MOV R1,#-1
HERE		LDRB R2,[R0],#1					;load the byte data held by the memory location in R0 into the regiater R2
				ADD R1,R1,#1						;increment the pointer R1
				CMP R2,#0							;check if R2 ==0
				BNE HERE							;branch to the label HERE if R2==0 
				
				AREA STRLEN, DATA, READWRITE
MYSTRING DCB "HELLO"
				END