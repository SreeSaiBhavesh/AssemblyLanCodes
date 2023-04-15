code segment
assume cs:code
start:
mov ax, 0000h
mov dx, ax
mov al, 01h
mov si, 3000h
mov bl, [si]
l1:
mul bl
dec bl
jnz l1
add si, 02h
mov [si], ax
int 3
code ends
end start
