/* Generated by gensyscalls.py. Do not edit. */

#include <private/bionic_asm.h>

ENTRY(pread64)
    mov     ip, sp
    .save   {r4, r5, r6, r7}
    stmfd   sp!, {r4, r5, r6, r7}
    ldmfd   ip, {r4, r5, r6}
    ldr     r7, =__NR_pread64
    swi     #0
    ldmfd   sp!, {r4, r5, r6, r7}
    cmn     r0, #(MAX_ERRNO + 1)
    bxls    lr
    neg     r0, r0
    b       __set_errno
END(pread64)
