	global	_mul
	extern 	printf
	
	section .text
	
_mul:
	;multiplyin with 12
	push	ebp
	mov		ebp, esp
	
	mov		eax, DWORD[esp+12]
	mov		eax, [eax]
	mov		eax, ebx
	lea		eax, [eax*4]
	lea		eax, [eax + eax*2]
	push	eax
	push	ebx
	push 	msg
	call	printf
	
	add		esp, 12
	mov		esp, ebp
	pop		ebp
	ret
	
	section	.data
	msg: db "%d*12 = %d",0,10
	
	
