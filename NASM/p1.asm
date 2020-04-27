	global     main
	extern	   printf

	section    .text
main:
	push       rbp
        mov        rbp, rsp
	mov	   rbx, [rbx+4]
	push	   rbx
	push	   msg
	call	   printf
	ret


msg:    db         "you entered 10", 10, 0

	
