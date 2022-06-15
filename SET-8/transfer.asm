ORG 100H
ASSUME CS:CODE
CODE SEGMENT
START:
       MOV CX,08H
       MOV BX,10H
       MOV DX,21H

       MOV SI,BX
       MOV DI,DX
       MOV AL,CL

STORE:
       MOV BYTE PTR[SI],AL
       DEC AL
       CMP AL,0H
       JNE STORE

AGAIN:
       MOV AL,BYTE PTR[SI]
       MOV BYTE PTR[DI],AL
       LOOP AGAIN
       MOV AH,4CH
       INT 21H

CODE ENDS
END START

