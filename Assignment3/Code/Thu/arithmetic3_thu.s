.section .data
val1: .byte -60
val2: .byte 11
val3: .byte 16

.section .text
.globl _start
_start:

ldr r1, =val1
ldrsb r1,[r1]
ldr r2, =val2
ldrb r2,[r2]
ldr r3, =val3
ldrsb r3,[r3]
mov r0, r2	@r0 = val2
add r0, #3	@r0 = val2 + 3
add r0, r3	@r0 = val2 + 3 + val3
sub r0, r1  	@r0 = val2 + 3 + val3 - val1 
 
mov r7, #1
svc #0
.end
