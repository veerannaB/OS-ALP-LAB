ASSUME CS:CODE, DS:DATA
DATA SEGMENT
      LIST DB 02H,01H,04H,03H
      COUNT EQU 0003H
DATA ENDS

CODE SEGMENT
START:
        MOV AX,DATA
        MOV DS,AX
        MOV AX,0000H
        MOV CX,COUNT
        MOV SI,OFFSET LIST
        MOV AL,[SI]

AGAIN:
        CMP AL,[SI+1]
        JL NEXT
        MOV AL,[SI+1]

NEXT:
        INC SI
        DEC CX
        JNZ AGAIN
        INT 03H

CODE ENDS
END START
