                     org 100h

mov ah,09h
mov dx,offset msg1
int 21h

mov ah,09h
mov dx,offset msg2
int 21h

mov ah,09h
mov dx,offset msg3
int 21h

mov ah,09h
mov dx,offset msg4
int 21h

mov ah,4ch
int 21h

msg1 db 'Full Name: Komal Mehmood',13,10,'$'
msg2 db 'SAP ID: 123456',13,10,'$'
msg3 db 'Batch: 2024',13,10,'$'
msg4 db 'Program: BS Software Engineering - 2nd Semester',13,10,'$'