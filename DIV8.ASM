data segment
a db 44h
b db 02h
c dw ?
data ends
code segment
assume ds:data, cs:code
start:
mov ax, data
mov ds, ax
mov ax, 0000h
mov bx, 0000h
mov al, a
mov bl, b
div b
mov c, ax
int 3
code ends
end start
