.model small
.stack 100h
.data
str db 'MADAM$'
msg1 db "Palindrome$"
msg2 db "Not Palindrome$"

.code
main proc
    mov ax, @data
    mov ds, ax

    mov si, offset str

; ?? push all characters into stack
push_loop:
    mov al, [si]
    cmp al, '$'
    je check

    push ax
    inc si
    jmp push_loop

; ?? reset pointer
check:
    mov si, offset str

compare_loop:
    mov al, [si]
    cmp al, '$'
    je is_palindrome

    pop bx
    cmp al, bl
    jne not_palindrome

    inc si
    jmp compare_loop

is_palindrome:
    mov ah, 09h
    lea dx, msg1
    int 21h
    jmp exit

not_palindrome:
    mov ah, 09h
    lea dx, msg2
    int 21h

exit:
    mov ah, 4ch
    int 21h
main endp
end main