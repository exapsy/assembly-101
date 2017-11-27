section .data		; Section to writes bytes in memory
	text db "Hello World", 10	; 'text' is a variable label, db stands for define bytes, 10 Stands for '\n'

section .text
	global _start

_start:
	; sys_write( stdin=0/stdout=1/stderr=2, *buffer, length )
	mov rax, 1		; (rax = 1) == sys_write for syscall
	mov rdi, 1		; (rdi = 1) == stdout == 1st argument
	mov rsi, text	; (rsi = 'Hello World\n\0') == *buffer  == 2nd argument
	mov rdx, 13		; (rdx = 13) == length == 3rd argument
	syscall			; sys_write(stdout, "Hello World\n\0", 13)

	mov rax, 60
	mov rdi, 0
	syscall			; sys_exit(0)

