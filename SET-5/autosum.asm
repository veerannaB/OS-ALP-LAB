ASSUME CS:CODE, DS:DATA
DATA SEGMENT
        VAL1    DB      ?
        NL1     DB      0AH,0DH,'ENTER HOW MANY NO U WANT:','$'
        NL2     DB      0AH,0DH,'ENTER NO:','$'        
DATA ENDS
CODE SEGMENT
MAIN    PROC
        MOV AX,DATA
        MOV DS,AX

        LEA DX,NL1
        MOV AH,09H
        INT 21H

        MOV AH,01H
        INT 21H
        SUB AL,30H

        MOV CL,AL
        MOV BL,AL
        MOV AL,00
        MOV VAL1,AL

LBL1:
        LEA DX,NL2
        MOV AH,09H
        INT 21H

        MOV AH,01H
        INT 21H
        SUB AL,30H

        ADD AL,VAL1
        MOV VAL1,AL
        LOOP LBL1

        MOV AX,00
        MOV BL,VAL1
        MOV AH,4CH
        INT 03H
        
MAIN ENDP
CODE ENDS
END MAIN