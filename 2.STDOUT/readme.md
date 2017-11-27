# LESSON 2

## DB - What does it mean?
  ```assemply
  section .data
    text db "Hello World"
  ```
  `db` stands for **define bytes**. In this line we define **6 bytes** for label `text`

## sys_write
- ### mov rax, 1
  `syscall` will search in `rax` register what **system call** to make. `1` stands for `sys_write`
- ### mov rdi, 1
  1st Argument is either `stdin` = 0, `stdout` = 1 or `stderr` = 2
- ### mov rsi, text
  2nd Argument is the buffer. Obviously we want to copy the bytes from `text` to `rsi`
- ### mov rdx, 13
  3rd Argument is the length of the buffer. `Hello World\n` is `12 + '\0' = 13`
  
## sys_exit
- ### mov rax, 60
  `syscall` will search in `rax` register what **system call** to make. `60` stands for `sys_exit`
- ### mov rdi, 0
  1st Argument is the Exit Error. If `rdi` = 0, then there is **no error**
