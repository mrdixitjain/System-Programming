SECTION .data
msg: db "You Entered - %s", 10, 0 ; print argv[1] data
SECTION .text

extern printf
global main

main:
		; set-up phase
push ebp
mov ebp, esp

mov ebx, DWORD [esp + 12] ; get argv starting address
mov ebx, [ebx + 4] ; get the second argument data

push ebx ; put data on stack for call
push msg ; print the value
call printf
add esp, 8 ; esp back to start
mov esp, ebp
pop ebp
ret
