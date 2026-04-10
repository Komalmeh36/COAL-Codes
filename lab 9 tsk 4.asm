.model small
.stack 100h
.data
greater db "Greater$"
smaller db "Smaller$"
equal db "Equal$"

.code
main proc
    mov ax, @data
    mov ds, ax

    ; input first number
    mov ah, 01h
    int 21h
    mov bl, al

    ; input second number
    mov ah, 01h
    int 21h
    mov bh, al

    cmp bl, bh
    je equal_case
    ja greater_case
    jb smaller_case

greater_case:
    mov ah, 09h
    lea dx, greater
    int 21h
    jmp end_prog

smaller_case:
    mov ah, 09h
    lea dx, smaller
    int 21h
    jmp end_prog

equal_case:
    mov ah, 09h
    lea dx, equal
    int 21h

end_prog:
    mov ah, 4ch
    int 21h
main endp
end main