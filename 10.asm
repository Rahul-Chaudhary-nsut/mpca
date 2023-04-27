ORG 100h
.MODEL SMALL 
.DATA
NUM_1 DW 0F213H
NUM_2 DW 41A8H
que DW ?
rem DW ?
.CODE   
MOV AX, NUM_1     ;Load numerator in AX  
DIV NUM_2         ;Divide AX by NUM_2
mov que,ax;
mov rem,dx;
RET
