.model small
.data
str1 db "ENTER THE MULTIPLICAND : 50$"
n_line db 0Ah,0Dh,"$"
str2 db "ENTER THE MULTIPLIER : 25 $"
ans db "THE RESULT OF MULTIPLICATION IS : 1250$"
        
.code
mov ax, @data
mov ds, ax

lea dx,n_line;
mov ah, 09h
int 21h;
lea dx,str1;
mov ah, 09h ; 
int 21h; 
     

lea dx,n_line;
mov ah, 09h
int 21h;
lea dx,str2;
mov ah, 09h ; 
int 21h; 


lea dx,n_line;
mov ah, 09h
int 21h;
lea dx,ans;
mov ah, 09h ; 
int 21h; 