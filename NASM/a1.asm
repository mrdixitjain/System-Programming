	SECTION .data
msg:	db "You Entered - %s", 10, 0 ; print argv[1] data
	SECTION .text

	extern printf
	global main

main:         ; set-up phase
	push rbp
	mov rbp, rsp

	; get the command-line data

	mov rbx, [rsp + 12] ; get argv starting address
	mov rbx, [rbx + 4] ; get the second argument data

	; print the value

	push rbx ; put data on stack for call
	push msg ; print the value
	call printf
	; finish phase
	
	add rsp, 8 ; esp back to start
	mov rsp, rbp
	pop rbp
	ret
