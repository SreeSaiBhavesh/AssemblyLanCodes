code segment
assume cs:code
start:
mov ax, 0000h
mov bx, ax
mov dx, ax
mov si, 3000h
mov ax, [si]
add si, 02h
mov bx, [si]
add si, 02h
add ax, bx
mov [si], ax
jc store
add si, 02h
mov [si], dx
int 3
store:
inc dx

inc si
inc si
mov [si], dx
int 3
code ends
end start
