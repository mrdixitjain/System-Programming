%define add(a,b) ((a+b))
%macro name 2
	%assign i 0
	mov eax, 0
	mov edx, %1
	mov ecx, %2
	%rep 10000
		cmp ecx, i
		JS end
		add eax, edx
		%assign i i+1
	%endrep
%endmacro

	section .data
	msg: dd "%d",10,0
	
	section .text
	global multiply
	extern printf
	extern atoi
	global end



multiply:
	push ebp
	mov ebp,esp
	mov edx, [ebp + 8]
	mov ecx, [ebp + 12]
	name ecx,edx

end:
	push eax
	push msg
	call printf
	add esp, 4
	mov esp, ebp
	pop ebp
	ret
