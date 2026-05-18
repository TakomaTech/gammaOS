.section .multiboot2_header
.align 8
header_start:
    .long 0xE85250D6
    .long 0
    .long header_end - header_start

    .long 4
    .long 16
    .quad start

    .long 0
    .long 8

    .long 0
header_end:

.section .bss
.comm stack, 8192

.section .text
.global start
.type start, @function
start:
    xor %rax, %rax
    mov %rax, %ds
    mov %rax, %es
    mov %rax, %ss
    lea stack+8192(%rip), %rsp
    .extern kmain
    call kmain

hang:
    hlt
    jmp hang

.section .note.GNU-stack,"",@progbits
