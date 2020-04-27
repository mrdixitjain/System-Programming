;Macro
%macro sum 2
	;mov eax,[a]
	mov	eax, %1
	mov	ecx, %1
	mov	ebx, %2
	%rep 100
		cmp ebx,1
		js end
		sub ebx,1
		add eax, ecx
	%endrep
	
	;mov [a],eax
	;mov eax,[b]
	;mov [answer],eax
	;mov eax,[answer]
	
	
%endmacro

section .text

	global multiply

	extern printf

multiply:
	push ebp
	mov ebp,esp
	;push ebx
	mov eax,[ebp+8]
	;mov [a]eax
	mov ebx,[ebp+12]
	;mov [b],ebx
	mov ecx,eax
	;mov [answer],ebx
	jmp xyz



xyz:

	sum ebx, ecx

end:
;mov ecx,[answer]
	
	
	push eax
	push msg
	call printf
	add esp,8
	mov esp,ebp
	pop ebp
	ret
	
	section .data
	msg: db "%d", 0, 10

