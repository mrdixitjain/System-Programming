		global	_add
		global	_sub
		global	_mul
		section	.text

_add:
		mov		rax, rdi
		mov		rcx, rsi
		add		rax, rcx
		ret

_sub:
		inc		rdi
		dec		rsi
		mov		rax, rdi
		mov		rcx, rsi
		sub		rax, rcx
		ret

_mul:
		inc		rdi
		dec		rsi
		mov		rax, rdi
		mov		rcx, rsi
		mul		rcx
		ret

