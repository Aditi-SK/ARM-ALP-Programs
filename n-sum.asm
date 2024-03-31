	area nSUM, code, readonly
	entry
	MOV R0, #0x0A
	MOV R1, #0x0A
HERE	SUBS R0, R0, #0x01
	ADD R1, R1, R0
	CMP R0, #0x00
	BNE HERE
STOP	B STOP
	end
	