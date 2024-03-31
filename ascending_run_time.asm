				AREA ASCENDING, CODE, READONLY
				ENTRY
				LDR R0,=0X40000000
				LDR R1,=0X40000040
				MOV R2,#5
LOOP		LDR R4,[R0],#4
				STR R4,[R1],#4
				SUBS R2,R2,#1
				BNE LOOP
				
				
CHECK		LDR R4,[R1],#4
				LDR R5,[R1]
				CMP R4,R5
				
				
				
				
				
STOP 		B STOP
				END
				
				

				
				