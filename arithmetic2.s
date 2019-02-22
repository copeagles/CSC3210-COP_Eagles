@arithmetic program: Register = val2 + 9 + val3 - val1

.section .data

a: .word 9		@32-bit variable a in memory
b: .word 0		@32-bit variable b in memory
val1: .word 6		@32-bit variable val1 in memory
val2: .word 11		@32-bit variable val2 in memory
val3: .word 16		@32-bit variable val3 in memory

.section .text
.globl _start

_start: 

	ldr r1, =val1		@load the memory address of val1 into r1
	ldr r1, [r1]		@load the value val1 into r1
	ldr r2, =val2		@load the memory address of val2 into r2
	ldr r2, [r2]		@load the value val2 into r2
	ldr r3, =val3		@load the memory address of val3 into r3
	ldr r3, [r3]		@load the value val3 into r3
	ldr r4, =a		@load the memory address of a into r4
	ldr r4, [r4]		@load the value a into r4
	add r2, r2, r4		@add r2 to r4 and store into r2
	add r2, r2, r3		@add r2 to r3 and store into r2
	sub r1, r2, r1		@subtract r2 to r1 and store r1
	ldr r2, =b		@load the memory address of b into r2
	str r1, [r2]		@store r1 into memory c

	mov r7, #1		@Program Termination: exit syscall
	svc #0			@Program Termination: wake kernel
	

.end
