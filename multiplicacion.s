.data
string: .asciz "El resultado es: %d\n"
num1: .word 9
num2: .word 5

.text
.global main
.extern printf
main:
        push {ip, lr}

       /* ldr r0, =string
        ldr r5, adrn1
        ldr r6, adrn2
        str r1, [r5]
        str r2, [r6]*/
        mov r1, #3
        mov r2, #3
        mul r1, r1, r2
        bl printf

        pop {ip, pc}

adrn1: .word num1
adrn2: .word num2

