/* Generated by gensyscalls.py. Do not edit. */

#include <private/bionic_asm.h>

ENTRY(__getcwd)
    pushl   %ebx
    pushl   %ecx
    mov     12(%esp), %ebx
    mov     16(%esp), %ecx
    movl    $__NR_getcwd, %eax
    int     $0x80
    cmpl    $-MAX_ERRNO, %eax
    jb      1f
    negl    %eax
    pushl   %eax
    call    __set_errno
    addl    $4, %esp
    orl     $-1, %eax
1:
    popl    %ecx
    popl    %ebx
    ret
END(__getcwd)
