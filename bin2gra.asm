DATA SEGMENT
NUM EQU 34H
RESULT DB (?)
DATA ENDS
CODE SEGMENT
ASSUME CS:CODE,DS:DATA
START:
MOV AX,DATA
MOV DS,AX
MOV AL,NUM
MOV BL,NUM
MOV BL,AL
CLC
RCR AL,1
XOR BL,AL
MOV RESULT,BL
INT 3
CODE ENDS
END START