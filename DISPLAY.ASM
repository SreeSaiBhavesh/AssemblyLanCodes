data segment
array db 'Good Morning$'
data ends
code segment
assume cs:code, ds:data
start:
mov ax, data
mov ds, ax
lea dx, array
mov ah, 09
int 21h
mov ah, 4ch
int 21h
code ends
end start
