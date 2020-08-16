%define MACHSYSCALL(nb) 0x2000000 | nb
%define WRITE 4
%define READ 3
%define BUF_SIZE 4096
%define STDOUT 1

section .bss
    buf: resb BUF_SIZE

section .text
    global _ft_cat

_ft_cat:
    lea rsi, [rel buf]
    mov rdx, BUF_SIZE
    mov rax, MACHSYSCALL(READ)
    syscall

write_file:
    push rdi
    mov rdx, rax
    mov rax, MACHSYSCALL(WRITE)
    mov rdi, STDOUT
    lea rsi, [rel buf]
    syscall
    pop rdi
    cmp rax, BUF_SIZE
    je _ft_cat
    ret