.data  # "data section"  
str: .asciiz "Hello, World!\n" 

.text  # "text section" code and read-only data
.globl main # declare `main' as a global symbol

main:

            la $a0, str # load message into register a0

            li $v0, 4	# "print string" system call

	    syscall	
