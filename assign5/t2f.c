	global	multiply
	extern	printf
	section	.text
multiply:
	push	ebp
	mov		ebp, esp
	
	mov		eax, DWORD[esp+12]
	mov		eax, [eax]
	mov		esp, ebp
	pop		ebp
	ret
	;mult	ebx, eax

end:
	add		esp, 4
	mov		esp, ebp
	pop		ebp
	ret
	
	section	.data
	msg: db "%d ", 0, 10
