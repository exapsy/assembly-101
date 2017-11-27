# LESSON 4

## .bss
  This section reserves empty space/bytes for future use
  
```assemply
section .bss
  name resb 16 ; reserve 16 bytes   ; reserve 16 empty bytes for label 'name'
```
## sys_read
- ### mov rax, 0
  (rax=0) == sys_read
- ### mov rdi, 0
  (rdi=0) == stdin
- ### mov rsi, name
  write in this buffer
- ### mov rdx, 16
  write 16 bytes (16th byte = '\0' no matter how many characters it read)
