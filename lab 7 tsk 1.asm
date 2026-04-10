.model small
.stack 100h
.data
msg db "Area = $"

.code
main proc
    mov ax, @data
    mov ds, ax

    ; length = 5, width = 3 (example)
    mov al, 5
    mov bl, 3

    mul bl          ; AX = AL * BL

    mov dl, al
    add dl, 48      ; convert to ASCII

    mov ah, 09h
    lea dx, msg
    int 21h

    mov ah, 02h
    int 21h

    mov ah, 4ch
    int 21h
main endp
end main