DATA SEGMENT
   OSTR DB 'COMPUTER','$'
   SLEN DW $-OSTR
   RSTR DB 20 DUP('COMPUTER')
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE,DS:DATA
BEGIN:
       MOV AX,DATA
       MOV DS,AX
       MOV ES,AX
       MOV CX,SLEN
       ADD CX,-2

       LEA SI,OSTR
       LEA DI,RSTR
       ADD SI,SLEN
       ADD SI,-2

       L1:
            MOV AL,[SI]
            MOV [DI],AL
            DEC SI
            INC DI
            LOOP L1

            MOV AL,[SI]
            MOV [DI],AL
            INC DI

            MOV DL,'$'
            MOV [DI],DL

       PRINT:
              MOV AH,09H
              LEA DX,RSTR
              INT 21H

        EXIT:
              MOV AX,4C00H
              INT 21H
  CODE ENDS
  END BEGIN
