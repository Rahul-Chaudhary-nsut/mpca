.model small
.stack 100

.data
    arr db 1, 2, 3, 4, 10;
    arr_size dw 5;
    sum db 0;

.code
START:
    MOV ax, @data
    MOV ds, ax;
    MOV si, 0;
sum_loop:
    MOV al, arr[si]
    ADD sum, al
    INC si
    cmp arr_size,si;
    jne sum_loop
end START
