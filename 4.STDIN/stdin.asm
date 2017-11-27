section .db
	question db "What is your name? "
	response db "Hello, "

section .bss
	name resb 16 ; reserve 16 bytes

section .text
	global _start
_start:
	call _printQuestion
	call _getName
	call _printResponse
	call _printName

	mov rax, 60
	mov rdi, 0
	syscall

_printQuestion:
	mov rax, 1
	mov rdi, 1
	mov rsi, question
	mov rdx, 19
	syscall				; sys_write(stdout, question, 19)
	ret					; return

_getName:
	mov rax, 0			; sys_read
	mov rdi, 0			; stdin
	mov rsi, name		; buffer
	mov rdx, 16			; length
	syscall				; sys_read(stdin, name, 16)
	ret					; return

_printResponse:
	mov rax, 1
	mov rdi, 1
	mov rsi, response
	mov rdx, 8
	syscall				; sys_write(stdout, response, 8)
	ret					; return

_printName:
	mov rax, 1
	mov rdi, 1
	mov rsi, name
	mov rdx, 16			
	syscall				; sys_write(stdout, name, 16)
	ret					; return
