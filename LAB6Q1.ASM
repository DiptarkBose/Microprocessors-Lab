data segment
buffer db 15, ?, 15 dup(0)
str1 db 'Enter any String'
data ends

code segment
assume cs:code, ds:data, es:data
start: mov ax, data
mov ds, ax
mov es, ax
mov ah, 09h
mov dx, offset str1
int 21h

;input
mov ah, 0ah
mov dx, offset buffer
int 21h

lea si, buffer+2
mov cl, buffer+1
mov ch, 00h

mov al, ' '
go: cmp [si], al
jz check
inc si
dec dl
jnz go
jmp last

check:inc ch
inc si
dec cl
jmp go


last:
inc ch
add ch, 30h
mov dl, ch
mov ah, 02h
int 21h
mov ah, 4ch
code ends
end start

