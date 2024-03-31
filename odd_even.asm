	  AREA program,CODE,READONLY

      ENTRY
      MOV R5,#01 
      MOV R0,#01
      LDR R1,=array
      MOV R2,#06
LBL   LDR R0,[R1],#4

      ANDS R0,R5
      ADDEQ R3,R3,#01
      ADDNE R7,R7,#01
      SUBS R2,R2,#01
      CMP R2,#00
      BNE LBL
STP B STP     

array DCD  0x11, 0x02, 0x04, 0x06, 0x08, 0x12

      END