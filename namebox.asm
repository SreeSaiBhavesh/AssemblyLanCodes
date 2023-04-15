code segment
assume cs: code
start:
    mov ah, 00h
    mov al, 0dh
    int 10h

    mov ah, 0ch
    mov al, 0110b
    mov cx, 100
    mov dx, 50

    l1: int 10h
        inc cx
        cmp cx, 200
        jne l1

    l2: int 10h
        inc dx
        cmp dx, 150
        jne l2

    l3: int 10h
        dec cx
        cmp cx, 100
        jne l3

    l4: int 10h
        dec dx
        cmp dx, 50
        jne l4

    mov ah, 02h
    mov dh, 12
    mov dl, 16
    int 10h

    mov ah, 09h
    mov bl, 0110b
    mov cx, 1

    mov al, 'N'
    int 10h
    inc dl

    mov ah, 02h
    int 10h
    mov ah, 09h
    mov al, 'A'
    int 10h
    inc dl

    mov ah, 02h
    int 10h
    mov ah, 09h
    mov al, 'V'
    int 10h
    inc dl

    mov ah, 02h
    int 10h
    mov ah, 09h
    mov al, 'E'
    int 10h
    inc dl

    mov ah, 02h
    int 10h
    mov ah, 09h
    mov al, 'E'
    int 10h
    inc dl

    mov ah, 02h
    int 10h
    mov ah, 09h
    mov al, 'N'
    int 10h
    

    code ends
end start