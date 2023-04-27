.model small
.stack 100

.data
    arr db 7, 3, 9, 1, 5, 8, 4, 5, 4, 2
    arr_size dw 10        
    iter dw 9;
    temp dw 0;

.code
START:
    MOV ax, @data
    MOV ds, ax


sort_loop:
    MOV si, 0              
    MOV di, 1              
    mov cx,arr_size;
    dec cx;
    inner:
        mov al,arr[si];
        mov bl,arr[di];
        cmp al,bl;
        JGE noswap;
        mov arr[si],bl;
        mov arr[di],al;
        noswap:
        inc si;
        inc di;
        dec cx;
        JNZ inner;
    dec iter
    JNE sort_loop

end START
