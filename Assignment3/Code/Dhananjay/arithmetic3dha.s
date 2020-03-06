.section .data
val1: .byte -60
val2: .byte 11
val3: .byte 16

.section .text
.globl _start
_start:
	ldr r1, =val2
	ldrb r1, [r1]
	add r2, r1, #3
	ldr r3, =val3
	ldrb r3, [r3]
	add r4, r2, r3
	ldr r5, =val1
	ldrsb r5, [r5]
	sub r6, r4, r5

	mov r7, #1
	svc #0
	.end
