DATA SEGMENT
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE, DS:DATA
BEGIN: MOV AX,DATA
MOV DS,AX
MOV CX,10
MOV DL,48
L1:MOV AH,2
INT 21H
INC DL
LOOP L1

MOV AH,4CH
INT 21H
CODE ENDS
END BEGIN