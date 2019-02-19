@ Math program for doing math
.section .data
.section .text
.globl _start
_start:
    mov r2,#10
    mov r3, #11
    mov r4, #7
    mov r5, #2
    add r0, r2, r3
    mul r1, r4, r5
    sub r2, r0, r1
.end
