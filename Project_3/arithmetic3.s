.section .data
a: .byte 3


.section .text
.globl _start
_start:




mov r0, #0xB					@Put value of 11 in r0
mov r1, #0x10					@Put value of 16 in r1
movt r2, #0xffc4
 					@Put value of -60 in r2
ldr r3,= a					@Load memory address of a into r3
ldr r3,[r3]					@Load value of a into r3

add r0,r3,r0					@Add r0 to r3 and store in r0
sub r1,r2,r1					@Subtract r1 from r2 and store in r1
add r0,r1,r0					@Add r0 to r1 and store in r0
str r0, [r0]					@Store value into memory of r0


mov r7,#1
svc #0
.end
