DATA SEGMENT
NUM DW 0FFFFH
ANS DB 5 DUP(0)
DATA ENDS
CODE SEGMENT
ASSUME CS:CODE, DS:DATA
START:
MOV AX,DATA
MOV DS,AX
MOV AX,NUM
MOV CX,0AH
LEA SI,ANS
UP:
MOV DX,00H
DIV CX
MOV [SI],DL
INC SI
CMP AX,CX
JAE UP
MOV [SI],AL
INT 3
CODE ENDS
END START