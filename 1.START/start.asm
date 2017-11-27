section .text		; This section keeps the actual code
	global _start	; Global Label for the Linker to call

_start:				; Every linker ... links the libraries with this label
	mov rax, 60		; Stands for 'sys_exit' in Linux
	mov rdi, 0		; 1st syscall argument
	syscall			; sys_exit(0) since rax=0=exit & rdi=0=arg0

