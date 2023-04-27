.model small
.stack 100

.data
    no1 db 43H   ;
    no2 db 43H   ;
    res dw ?     ; 
         
.code
START:
    MOV ax,@data ;
    Mov ds,ax;  
    mov al,no1;
    add al,no2;
    mov ah,00h;
    adc ah,00h; 
    mov res,ax;
    end start;
    