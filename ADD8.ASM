code segment
assume cs:code
start:
mov al, 0000h
mov si, 3000h
mov al, [si]
inc si
mov bl, [si]
add al, bl
inc si
mov [si], al
jc l1
inc si
mov [si], ah
int 3h
l1:
inc al
mov [si], al
int 3
code ends
end start
