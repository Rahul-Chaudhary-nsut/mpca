.model small
.stack 100

.data
    xl dw 12;
    xh dw 12;      
    yl dw 12;
    yh dw 12;
    res0 dw  0; 
    res1 dw  0;  
    res2 dw  0;  
    res3 dw  0;   

.code
START:
    MOV ax, @data;
    MOV ds, ax;
    
    mov ax,xl;
    mov bx,yl;
    mul bx;
    mov res0,ax;
    mov res1,dx;  

    mov ax,xh;
    mov bx,yh;
    mul bx;
    mov res2,ax;
    mov res3,dx;  


    mov ax,xh;
    mov bx,yl;
    mul bx;
    add res1,ax;
    JNC skip1
    inc res2;
    JNC skip1
    inc res3;
skip1:
    add res2,dx;
    JNC skip2
    inc res3;
skip2: 

    mov ax,xl;
    mov bx,yh;
    mul bx;
    add res1,ax;
    JNC skip3
    inc res2;
    JNC skip3
    inc res3;
skip3:
    add res2,dx;
    JNC skip4
    inc res3;
skip4:
end START
