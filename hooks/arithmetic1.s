@arithmetic1 program
.section .data
.section .text
.globl _start
_start:
	mov r1,#10	@load r1 with 10, A=10
	mov r2,#11	@load r2 with 11, B=11
	mov r3,#7	@load r3 with 12, C=7
	mov r4,#2	@load r4 with 2, D=2
	add r1,r1,r2	@add A + B, store in A
	mul r3,r4,r3	@multiply C*D, store in C
	sub r1,r1,r3	@subtract (A+B)-(C*D)=A

	svc #0		@Terminate
.end

