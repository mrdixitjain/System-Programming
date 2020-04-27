	global	month
	extern	printf
	section	.text
	
	
month:
	push	ebp
	mov		ebp, esp
	
	mov		eax, DWORD[esp+12]
	mov		eax, [eax]
	
	dec		eax
	jmp		DWORD[jt+eax*4]
	

end:
	call	printf
	add		esp, 4
	mov		esp, ebp
	pop		ebp
	ret
a1:
	push	msg1
	jmp		end
a2:
	push	msg2
	jmp		end
a3:
	push	msg3
	jmp		end
a4:
	push	msg4
	jmp		end
a5:
	push	msg5
	jmp		end
a6:
	push	msg6
	jmp		end
a7:
	push	msg7
	jmp		end
a8:
	push	msg8
	jmp		end
a9:
	push	msg9
	jmp		end
a10:
	push	msg10
	jmp		end
a11:
	push	msg11
	jmp		end
a12:
	push	msg12
	jmp		end

	section	.data
jt:
	dd	a1
	dd	a2
	dd	a3
	dd	a4
	dd	a5
	dd	a6
	dd	a7
	dd	a8
	dd	a9
	dd	a10
	dd	a11
	dd	a12
	
		
		
	msg1: db "Jan ", 0, 10
	msg2: db "Feb ", 0, 10
	msg3: db "March ", 0, 10
	msg4: db "April ", 0, 10
	msg5: db "May ", 0, 10
	msg6: db "June ", 0, 10
	msg7: db "July ", 0, 10
	msg8: db "Aug ", 0, 10
	msg9: db "Sept ", 0, 10
	msg10: db "Oct ", 0, 10
	msg11: db "Nov ", 0, 10
	msg12: dd "Dec ", 0, 10
