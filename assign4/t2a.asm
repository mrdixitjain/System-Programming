%define add(a,b) ((a+1+b))
%macro name 2
	%assign i 1 
	;%assign no %1
	mov eax, 0
	mov edi, 0
	mov edi, %1
	mov ecx, %2
	%rep 10000
		cmp ecx, i
		JS end
		add eax, edi
		%assign i i+1
	%endrep
%endmacro

	section .data
	msg1: dd "multiplication is %d",10,0
	msg2: dd "%d ",10,0
	
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
	;JMP end

end:
	push eax
	push msg1
	call printf
	add esp, 4
	mov esp, ebp
	pop ebp
	ret
