code segment
assume cs:code
start:
        mov si, 7000h
        mov al, [si]
        inc si
        mov bl, [si]
        mul bl
        inc si
        mov [si], ax
        int 3
        code ends
end start
