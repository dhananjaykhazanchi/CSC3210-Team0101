@second Program
.section .data
.section .text
.globl _start
_start:
mov r1,#10
mov r2,#11
add r1, r2
mov r3 ,#7
mov r4, #2
mul r3, r4
sub r1, r3
svc #0
.end



