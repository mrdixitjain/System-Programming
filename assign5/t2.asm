%macro	multz 2
;	mov		ebx, %1
;	mov		edx, %2
;	mov		eax, ebx
;	mul		edx
	%assign i, 5
	%assign	j, 0
	%assign k, 2
	%rep    100
	    %if i<0
	       %exitrep
	    %endif
	    %assign i, i-1
	    %assign j, j+k
	%endrep
	mov		eax, j
	push	eax
	push	msg
%endmacro

	global	multiply
	extern	printf
	section	.text
multiply:
	push	ebp
	mov		ebp, esp
	
	mov		eax, [ebp+8]
	mov		ecx, [ebp+12]
	multz	ecx, eax
	jmp		end

end:
	call	printf
	add		esp, 8
	mov		esp, ebp
	pop		ebp
	ret
	
	section	.data
	msg: db "%d "
