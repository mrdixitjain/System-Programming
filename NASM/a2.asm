	section  .data
msg:	db	 "you entered - %s",10,0
msg2:	db	 "you entered - %d",10,0

	section  .text
	extern   printf
	global   main
main:
	push     rbp
	mov	 rbp, rsp
	
	mov	 rax, [rsp+12]
	mov	 rbx, [rsp+8]
	mov	 rcx, 0
	
beginlooping:
	push	 rax
	push	 rbx
	push	 rcx
	push	 [rax]
	push	 msg
	call	 printf
	add	 rsp, 8
	
	pop	 rcx
	pop	 rbx
	pop	 rax
	
	add	 rcx, 1
	add	 rax,4
	
	cmp	 rcx, rbx
	jne	 beginlooping
	
	mov	 rsp,rbp
	pop	 rbp
	ret
