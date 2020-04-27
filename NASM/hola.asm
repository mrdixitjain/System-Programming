          
          section   .text
	  extern    puts
	  global    main
main:                                       ; This is called by the C library startup code
          mov       rdi, message 
	  mov	    rcx, 5
	  push	    rcx           ; First integer (or pointer) argument in rdi
          call      puts                    ; puts(message)
          ret                               ; Return from main back into C library wrapper
message:
          db        "Hola, mundo", 10,0   
