data segment
count dw 10
star db '*'
data ends

code segment
assume cs:code, ds:data
start:
mov ax, data
mov ds, ax
mov bx, count
loop_rows:
mov cx, bx
loop_cols:
mov ah, 02h
mov dl, star
int 21h

dec cx
cmp cx, 0
jne loop_cols

mov ah, 02h
mov dl, 0Dh
int 21h
mov dl, 0Ah
int 21h
dec bx
cmp bx, 0
jne loop_rows

mov ah, 4ch
int 21h
code ends
end start
