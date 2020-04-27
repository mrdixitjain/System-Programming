	global	mdays
	extern	printf
	section .text
	
mdays:
	push	ebp
	mov		ebp, esp
		
	mov		eax, DWORD[esp+12]
	mov		eax, [eax]
	cmp		eax, 1
	je		m1
	cmp		eax, 3
	je		m1
	cmp		eax, 5
	je		m1
	cmp		eax, 7
	je		m1
	cmp		eax, 8
	je		m1
	cmp		eax, 10
	je		m1
	cmp		eax, 12
	je		m1
	cmp		eax, 6
	je		m2
	cmp		eax, 11
	je		m2
	cmp		eax, 4
	je		m2
	cmp		eax, 9
	je		m2
	cmp		eax, 2
	je		m3
	push	eax
	push	eax
	push	msg2
	call	printf
	jmp		end
m1:
	mov		ebx, 31
	push	ebx
	push	eax
	push	msg
	call	printf
	jmp		end

m2:
	mov		ebx, 30
	push	ebx
	push	eax
	push	msg
	call	printf
	jmp		end

m3:
	mov		ebx, 28
	push	ebx
	push	eax
	push	msg
	call	printf
	jmp		end

end:
	add		esp, 12
	mov		esp, ebp
	pop		ebp
	ret
	
	section	.data
	msg: db "days in month %d are %d",0,10
	msg2: db "%d is not a valid month",0,10
	
	
