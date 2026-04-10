                            .model small
.stack 100h
.data

.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, 5        ; counter

start:
    mov dl, 'A'
    mov ah, 02h
    int 21h

    dec cx
    cmp cx, 0
    jne start        ; jump back

    mov ah, 4ch
    int 21h
main endp
end main