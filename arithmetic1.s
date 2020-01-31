.section .data
.section .text
.globl _start
_start:
        mov r1, #10
        add r1, r1, #11
        mov r2, #7
        mov r3, #2
        mul r4, r2, r3
        sub r5, r1, r4
        svc #0
.end


