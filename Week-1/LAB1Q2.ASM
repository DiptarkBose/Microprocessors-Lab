data segment
a dw 0304h
b dw 0405h
c dw ?
data ends
code segment
assume cs:code, ds:data
start: mov ax, data
mov ds, ax
mov ax, a
add ax, b
mov c, ax
mov ah, 4ch
int 21h
code ends
end start
