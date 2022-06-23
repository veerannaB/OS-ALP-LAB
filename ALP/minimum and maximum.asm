ASSUME DS:DATA, CS:CODE
DATA SEGMENT
     ARR DB 5,3,7,1,9,2,6,8,4
     LEN DW $-ARR
     MIN DB ?
     MAX DB ?
DATA ENDS

CODE SEGMENT
START:
       MOV AX,DATA
       MOV DS,AX

       LEA SI,ARR
       MOV AL,ARR[SI]
       MOV MIN,AL
       MOV MAX,AL

       MOV CX,LEN
       REPEAT:
               MOV AL,ARR[SI]
               CMP MIN,AL
               JL CHECKMAX
               MOV MIN,AL

       CHECKMAX:
                CMP MAX,AL
                JG DONE
                MOV MAX,AL

       DONE:
               INC SI
               LOOP REPEAT

               MOV BL,MIN
               MOV CL,MAX
               MOV AH,4CH
               INT 03H

       CODE ENDS
       END START
              
