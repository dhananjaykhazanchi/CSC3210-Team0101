.section .data
x: .int 0
y: .int 0
.section .text
.globl _start
_start:
	ldr r1, =x
	ldr r1, [r1]
	
	cmp r1, #0
	bne endofif
thenpart: mov r2, #1
	  ldr r3, =y
 	  ldr r2, [r3]

endofif:  mov r7, #1
	  svc #0
	  .end
