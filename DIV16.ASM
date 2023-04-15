code segment
assume cs: code
start:
        mov ax, 00h
        mov bx, ax
        mov dx, ax
        mov si, 3000h
        mov ax, [si]
        add si, 02h
        mov bx, [si]
        add si, 02h
        div bx
        mov [si], ax
        add si, 02h
        mov [si], dx
        int 3
        code ends
end start