# LESSON 1

## Comments
```assembly
mov rax, 1    ; Semicolon starts a comment
```

## Sections
assembly has **Sections**. What they do? They keep program information.

- **.text** keeps the program's code
```assembly
section .text
  global _start
_start:
...
_printHello:
...
_getName:
...
```

- **.db** keeps the predefined bytes for the program
```assembly
section .data
  text db "Hello"   ; define 6 bytes (NULL included) for label 'text'
```
- **.bss** predefines empty bytes for future use
```assembly
section .bss
  name resb 16       ; reserve 16 bytes for label 'name'
```

## Labels
This is a call label
```assembly
section .text
...
_printSomething:  ; Label
```
The code after it will be executed after calling it
```assembly
call _printSomething
```

## Commands
- ### mov R0, R1
Used to copy bytes from **R1 &rarr; R0**
- ### syscall
Used to call a **system call**.

**Every** kernel has different system calls.

[Linux X86 64 System Calls](http://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/)

#### syscall consists of
- **rax** = syscall command (ref Link Below)
- **rdi** = #1 Argument
- **rsi** = #2 Argument
- **rdx** = #3 Argument
- **r10** = #4 Argument
- **r8** = #5 Argument
- **r9** = #6 Argument
