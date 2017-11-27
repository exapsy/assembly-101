section .data
	text db "hello!", 10

section .text
	global _start
_start:
	call _printHello

	mov rax, 60		; sys_exit
	mov rdi, 0
	syscall			; sys_exit(0)

_printHello:
	mov rax, 1 		; sys_write
	mov rdi, 1		; stdout
	mov rsi, text		; rsi = "hello!\n\0"
	mov rdx, 8		; length = 8 bytes
	syscall			; sys_write(stdout, text, 8)
	ret			; return
