.model small
.stack 100h
.data
msg db "Cube = $"

.code
main proc
    mov ax, @data
    mov ds, ax

    mov al, 3      ; number
    mov bl, al

    mul bl         ; AL = n^2
    mul bl         ; AL = n^3

    mov dl, al
    add dl, 48

    mov ah, 09h
    lea dx, msg
    int 21h

    mov ah, 02h
    int 21h

    mov ah, 4ch
    int 21h
main endp
end main