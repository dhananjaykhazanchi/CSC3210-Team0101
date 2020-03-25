.section .data
x: .int 1
.section .text
.globl _start
_start:
	ldr r0, =x
	ldr r1, =x
	ldr r1, [r1]

	cmp r1, #3
	bgt else

	sub r1, #1
	str r1, [r0]
	b end

else:
	sub r1, #2
	str r1, [r0]

end:
	mov r7, #1
	svc #0
	.end

