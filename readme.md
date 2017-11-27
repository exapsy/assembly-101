# Assemply 101 - Learn Assemply

## Requirements:
- **Linux** installed

## How do I compile it dammit?
All you have to do is
1. ### Install nasm 
  (it's an assempler - compiles assemply)
```bash
sudo apt-get install asm
```
    
    
2. ### Compile 
  ... your **.asm**/**.as**/**.s** [assemply code] into a **.o** [object file]
  ```bash
    nasm -f elf64 -o assemply.o assemply.asm
  ```
  
  
3. ### Link
  ... your **.o** [object file] with the local kernel libraries
  ```bash
    ld assemply.o
  ```
  
### And I here you asking ... 

**'What is the `-f elf64` stands for?'**
See for yourself
```bash
  nasm -hu
```
There are bunch of other output formats you can compile your assemply code into other than **elf64**.
