ASSUME CS:CODE,DS:DATA
DATA SEGMENT
NL1 DB 10,'ENTER NUMBER'
NL2 DB,'$'
TEMP DB ?
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
       MOV CL,AL
       MOV AL,0
       MOV BL,1

       LBL1:
            MOV TEMP,AL
            LEA DX,NL2
            MOV AH,09H
            INT 21H

            ADD AX,3030H
            MOV DX,AX
            MOV AH,02H
            INT 21H

            MOV AL,TEMP
            ADD AL,BL
            MOV BL,TEMP

       LOOP LBL1
                  MOV AH,4CH
                  INT 21H

CODE ENDS
END START
