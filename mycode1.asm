; Program to add two 8-bit numbers

.model small
.stack 100h
.data
num1 db 05h
num2 db 03h
result db ?

.code
main proc
    mov ax, @data
    mov ds, ax

    mov al, num1     ; load first number
    add al, num2     ; add second number
    mov result, al  ; store result

    mov ah, 4Ch
    int 21h
main endp
end main