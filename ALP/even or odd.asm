ASSUME CS:CODE,DS:DATA
DATA SEGMENT
     NL1 DB 10,'ENTER NUMBER:$'
     NL2 DB 10,'ODD$'
     NL3 DB 10,'EVEN$'
     SMLST DB ?
DATA ENDS

CODE SEGMENT
START:
      MOV AX,DATA
      MOV DS,AX
      LEA DX,NL1
      MOV AH,09H
      INT 21H
      MOV AH,01H
      INT 21H
      SUB AL,30H

      TEST AX,01H
      JE SKIP1
      LEA DX,NL2

      MOV AH,09H
      INT 21H
      JMP SKIP2
      SKIP1:
            LEA DX,NL3
            MOV AH,09H
            INT 21H

      SKIP2:
            MOV AH,4CH
            INT 21H

      CODE ENDS
      END START
