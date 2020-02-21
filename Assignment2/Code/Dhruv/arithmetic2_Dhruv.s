@arithmetic2 program: register = val2 + 9 + val3 - val1 
.section .data
val1: .word 6
val2: .word 11
val3: .word 16
val4: .word 0
.section .text
.globl _start
_start:
ldr r1, =val1
ldr r1, [r1]
ldr r2, =val2
ldr r2, [r2]
ldr r3, =val3
ldr r3, [r3]
add r2, #9
add r3, r2
sub r3, r1


mov r7, #1
svc #0
.end

