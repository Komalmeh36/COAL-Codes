.model small
.stack 100h
.data
pos db "Positive$"
neg db "Negative$"

.code
main proc
    mov ax, @data
    mov ds, ax

    ; take input
    mov ah, 01h
    int 21h

    ; check if '-' sign
    cmp al, '-'
    je is_negative

is_positive:
    mov ah, 09h
    lea dx, pos
    int 21h
    jmp end_prog

is_negative:
    mov ah, 09h
    lea dx, neg
    int 21h

end_prog:
    mov ah, 4ch
    int 21h
main endp
end main