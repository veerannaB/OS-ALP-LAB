DATA SEGMENT
         LIST DB 01H,09H,07H
         COUNT EQU 02H
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE, DS:DATA
START:
        MOV AX,DATA
        MOV DS, AX
        MOV SI,OFFSET list
        MOV CL,COUNT
        MOV AL,[SI]
AGAIN:
        CMP AL, [SI+1]
        JG NEXT
        MOV AL, [SI+1]
NEXT:
        INC SI
        DEC CL
        CMP CL,0H
        JG AGAIN

        MOV BL,AL
        ADD AL, 30H
        MOV DL,AL
        MOV AH,02H
        INT 21H
        MOV AH, 4CH
        INT 21H

CODE ENDS
END START
