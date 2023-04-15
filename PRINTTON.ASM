code segment
assume cs:code
start:
mov cx, 9
mov dl, 1
ite:
mov ah, 2
int 21h
inc dl
loop ite

mov ah, 4ch
int 21h
code ends
end start
