@Kirby Liu Program A=(A+B)-(C*D)  with A=10,B=11,C=7 and D=2 
.section .data
.section .text
.globl _start
_start:
	mov r1,#10	@load r1,A with 10
	mov r2,#11	@load r2,B with 11
	mov r3,#7	@load r3,C with 7
	mov r4,#2	@load r4,D with 2
	add r1,r2	@Add A+B, store in r1,21
	mul r3,r4	@multiply C with D, store in C=14
	sub r1,r3	@subtract B from A, store in A=7

	svc #0		@Program Termination: Wake kernel

.end
