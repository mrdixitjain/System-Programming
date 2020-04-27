		global   swap
		section  .text
		
swap:
		mov 	 rax, [rdi]
		mov 	 rcx, [rsi]
		mov		 [rdi], rcx
		mov		 [rsi], rax
		ret
