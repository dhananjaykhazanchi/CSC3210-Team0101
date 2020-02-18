.section .data
.section .text
.globl _start
_start:
 
	mov r1, #10
	add r1, #11
	mov r2, #7
	mov r3, #2
	mul r2, r3
	sub r1, r2
	svc #0
.end

