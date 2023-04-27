.model small
.data
a db 05H
b db 05H 
ans dw ?
 
.code 
START:
mov ax, @data
mov ds, ax 

mov ah,0000H
mov al,a
lea si,b
mov cx,0008H

back:
ror ax,1
jnc zero
rol ax,1
add ah,[si]
shr ax,1

zero:
loop back
mov ans,ax

END START       


