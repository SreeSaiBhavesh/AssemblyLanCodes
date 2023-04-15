code segment
assume cs:code
start:
mov al, 00h
mov si, 500h
mov [si], al
inc si
add al, 01h
mov [si], al
mov cx, [600h]
sub cx, 02h
l1:
mov al, [si-1]
add al, [si]
inc si
mov [si], al
loop l1
int 3
code ends
end start
