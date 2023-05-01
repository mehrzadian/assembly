%include "asm_io.inc"
segment .text
global asm_main
asm_main:
enter 0,0
pusha
call read_int ; input1
mov ebx,eax; store input1 in ebx register
add ebx,ebx; *2
add ebx,ebx; *4
add ebx,eax; *5
add ebx,72; +72
mov eax,ebx;


call read_int; input2

sub eax, 78; sub -78
add eax, ebx; add two parenthesis
add eax,eax; *2
 
call print_int ; print EAX
call print_nl ; print a new line

popa
leave
ret