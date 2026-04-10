.model small
.stack 100h
.data
str db 'HELLO$'

.code
main proc
    mov ax, @data
    mov ds, ax

    mov si, offset str
    mov cx, 0          ; counter = 0

count_loop:
    mov al, [si]
    cmp al, '$'
    je done

    push ax            ; push character
    inc cx             ; count++
    inc si
    jmp count_loop

done:
    ; CX has total characters
    ; convert to ASCII and print

    add cx, 48
    mov dl, cl
    mov ah, 02h
    int 21h

    mov ah, 4ch
    int 21h
main endp
end main