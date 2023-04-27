.model small
.stack 100

.data
    no1 dw 40000   ;
    no2 dw 40000   ;
    res dw ?     ; 
    carry dw 0   ;
         
.code
START:
    MOV ax,@data ;
    Mov ds,ax;  
    mov ax,no1;
    add ax,no2;
    mov res,ax;
    jnc set;
    mov carry,1;
    set:
    end START;