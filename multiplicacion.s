/* Programa multiplicacion.s*/
/* David Valenzuela 171001*/

@Datos
.data
string: .asciz "El resultado es: %d\n" @String a imprimir
num1: .word 10
num2: .word 5

.text
.global main
.extern printf
main:
        push {ip, lr}

        ldr r0, =string
        ldr r5, adrn1
        ldr r6, adrn2
        ldr r1, [r5]
        ldr r2, [r6]
        mul r1, r1, r2
        bl printf

        pop {ip, pc}

adrn1: .word num1
adrn2: .word num2

