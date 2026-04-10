.model small
.stack 100h
.data
msgq db "Quotient = $"
msgr db 0Dh,0Ah,"Remainder = $"

.code
main proc
    mov ax, @data
    mov ds, ax

    mov ax, 27     ; number

    mov bl, 10
    div bl         ; AX / BL

    ; AL = quotient
    ; AH = remainder

    ; print quotient
    mov dl, al
    add dl, 48

    mov ah, 09h
    lea dx, msgq
    int 21h

    mov ah, 02h
    int 21h

    ; print remainder
    mov dl, ah
    add dl, 48

    mov ah, 09h
    lea dx, msgr
    int 21h

    mov ah, 02h
    int 21h

    mov ah, 4ch
    int 21h
main endp
end main