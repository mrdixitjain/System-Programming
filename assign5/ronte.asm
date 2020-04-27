;Macro

%macro sum 1

	mov rax,[num1]

	cmp rax,1

	js end

	sub eax,1

	mov [num1],rax

	mov rax,[num2]

	add eax,[result]

	mov [result],rax

	jmp multiply

%endmacro

section .data

section .bss

	num1: resw 4

	num2: resw 4

	result: resw 4

section .text

	global mul

	extern printf

mul:

	push rbp

	mov rbp,rsp

	push rbx

	

	mov rax,rdi

	mov [num1],rax

	mov rbx,rsi

	mov [num2],rbx

	mov rbx,0

	mov [result],rbx

	jmp multiply

	

multiply:

	sum result

end:

	mov rax,[result]

	mov rsp,rbp

	pop rbp

	ret
