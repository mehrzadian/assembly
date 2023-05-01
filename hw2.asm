%include "asm_io.inc"
segment .text
global asm_main
asm_main:
enter 0,0
pusha

l1:
call read_int ;
sub eax, 0 
jz end 
mov edx,0
mov esi,eax
l2:
mov ebx,eax;

mov ecx,0
rem_div:
inc ecx
sub ebx,10
jnc rem_div
dec ecx
add ebx,10
mov eax,ebx
;call print_int ; print EAX reminder
;call print_nl
add edx,eax ;   add reminder to sum of reminders
mov eax,ecx 
;call print_int ; print EAX division
;call print_nl;
sub eax,0 
jnz l2 ;d divide until 0

; reminder of esi (original number ) to edx (sum of reminders)
mov ebx,esi
rem:
sub ebx, edx
jnc rem
add ebx,edx
mov  eax,ebx ;
call print_int ; print answer 
call print_nl
mov eax,edx
;call print_int ; print sum of reminders
;call print_nl 


jmp l1 ;


end:


popa
leave
ret