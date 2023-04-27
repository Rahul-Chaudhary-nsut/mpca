.model small
.stack 100

.data
    arr db 1, 2, 3, 4, 10 ;
    arr_size dw 5         ;
    even_arr db 5 dup(?)   ;
    odd_arr db 5 dup(?)    ;
    even_count dw 0        ;
    odd_count dw 0         ; 
    curr dw 0;  
    present db 0;

.code
START:
    MOV ax, @data;
    MOV ds, ax;
    MOV si, 0;

sort_loop:
    mov si,curr;
    MOV al, arr[si];
    mov present,al;
    AND al, 1;
    JZ even;
    mov si,odd_count;
    mov al,  present;
    MOV odd_arr[si], al;
    INC odd_count;
    JMP next;
even:      
    mov si,even_count;
    mov al,  present;
    MOV even_arr[si], al;
    INC even_count;
next:
    INC curr;
    mov ax,curr;
    CMP ax, arr_size;
    JNE sort_loop;

end START
