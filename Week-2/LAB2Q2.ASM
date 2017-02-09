data segment
a dw 0304h, 0102h
b dw 0607h
c dw ?, ?, ?
data ends
code segment
assume cs:code, ds:data
start: mov ax, data
mov ds, ax
mov ax, a
mul b
mov c, ax
mov c+2, ax
adc dx, 00h
mov c+4, dx
mov ah, 4ch
int 21h
code ends
end start
