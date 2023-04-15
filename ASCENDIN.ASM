code segment
assume cs:code
start:
xor ax, ax
mov bl, al
mov cl, al
mov si, 2000h
mov bl, [si]
dec bl
l3:
mov cl, bl
mov si, 3000h
l2:
mov al, [si]
cmp al, [si+1]
jle l1
xchg al, [si+1]
mov [si], al
l1:
inc si
loop l2
dec bl
jnz l3
int 3
code ends
end start
