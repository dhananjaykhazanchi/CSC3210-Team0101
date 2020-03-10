.section .data
X: .int 1
.section .text
.globl _start
_start:
	ldr r0, =X
	ldr r1, =X
	ldr r0, [r0]

	cmp r0, #3
	bgt thenpart

body:
	sub r0, #1
	str r0, [r1]
	b endofif

thenpart:
	sub r0, #2
	str r0, [r1]

endofif:
	mov r7, #1
	svc #0
	.end
