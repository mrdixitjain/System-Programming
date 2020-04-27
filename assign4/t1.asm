		global	type
		extern	printf

		section	.text

type:
		push	ebp
		mov		ebp, esp
		
		mov		ecx, DWORD[esp+12]
		mov		ecx, [ecx]
		cmp		ecx, 0
		jz		n1
		jmp		n2
		
n1:
		push	msg0
		call	printf
		jmp		end

n2:
		cmp		ecx, 0
		jns		n3
		push	msg2
		call	printf
		jmp		end
n3:
		push	msg1
		call	printf
		jmp		end
		
end:
		add		esp,4
		mov		esp, ebp
		pop		ebp
		ret
		
		section	.data
		msg0: db "it is zero",0,10
		msg1: db "it is positive",0,10
		msg2: db "it is negative",0,10
