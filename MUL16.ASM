code segment
assume cs:code
start:
mov si, 3000h
mov ax, [si]
add si, 02h
mov bx, [si]
mul bx
add si, 02h
mov [si], ax
mov ax, dx
add si, 02h
mov [si], ax
int 3
code ends
end start
