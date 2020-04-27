		global	    _add
		global	    _sub
		global		_mul
		global 		a
		global 		b
		
		section 	.bss
		a: resb		4
		b: resb 	4		
		
		section 	.text
_add:
		mov			[a], rdi
		mov			[b], rsi
		mov			rax, [a]
		mov 		rcx, [b]
		add 		rax, rcx
		inc			rdi
		mov			[a], rdi
		dec			rsi
		mov			[b], rsi
		ret
_sub:
		mov			rax, [a]
		mov 		rcx, [b]
		sub 		rax, rcx
		mov			rdi, [a]
		mov			rsi, [b]
		inc			rdi
		mov			[a], rdi
		dec			rsi
		mov			[b], rsi
		ret
_mul:
		mov			rax, [a]
		mov 		rcx, [b]
		mul 		rcx
		ret
