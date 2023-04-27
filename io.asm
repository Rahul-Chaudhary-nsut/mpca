.model small
.data
str1 db "Enter a 2-digit number: $"
n_line db 0Ah,0Dh,"$"
str2 db "Enter another 2-digit number: $"
ans db "Answer is $" 
ends
        
.code
mov ax, @data
mov ds, ax
xor ax, ax 

lea dx, str1
mov ah, 09h
int 21h          

mov ah, 01h
int 21h

sub al, 30h
mov bl, 10
mul bl

mov ah, 01h
int 21h

sub al, 30h
mov bh, al
add bl, bh

lea dx, n_line
mov ah, 09H
int 21h

lea dx, str2
mov ah, 09h
int 21h          

mov ah, 01h
int 21h

sub al, 30h
mov cl, 10
mul cl

mov ah, 01h
int 21h

sub al, 30h
mov ch, al
add cl, ch

add bl, cl 

lea dx, n_line
mov ah, 09H
int 21h

lea dx, ans
mov ah, 09h
int 21h

mov ah, 02h
mov dl, ' '
int 21h

mov ah, 02h
mov dl, '0'
int 21h

mov ah, 0
mov al, bl
mov bh, 10
div bh
add ax, 3030h
mov dx, ax
mov ah, 02h
int 21h

mov ah, 02h
mov dl, al
add dl, 30h
int 21h

mov ah, 02h
mov dl, n_line
int 21h

mov ah, 0
mov al, bl
mov bh, 16
div bh
cmp al, 10
jge hex_convert
add al, 30h
jmp print_hex
hex_convert:
add al, 37h
print_hex:
mov dl, al
mov ah, 02h
int 21h

mov ah, 02h
mov dl, bl
and dl, 0Fh
cmp dl, 10
jge hex_convert2
add dl, 30h
jmp print_hex2
hex_convert2:
add dl, 37h
print_hex2:
mov ah, 02h
mov dl, dl
int 21h

mov ah, 02h
mov dl, n_line
int 21h

mov ah, 4Ch
int 21h



                

 


