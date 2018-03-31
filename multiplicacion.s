/*
Universidad del Valle de Guatemala
Organizacion de computadoras y assembler
Archivo: multiplicacion.s
Programa toma dos numeros en memoria (num1 y num2), multiplica ambos
numeros y muestra el resultado en pantalla.
Autor: David Valenzuela 171001
*/

@Datos
.data
string: .asciz "El resultado es: %d\n" @String a imprimir
num1: .word 10 @Primer numero
num2: .word 5 @Segundo nimero

/* Funcion main del programa*/
.text
.global main
.extern printf @printf de la libreria de c para imprimir
main:
        push {ip, lr} @ip y lr son añadidos al stack

        /*cargamos los datos*/
        ldr r0, =string 
        ldr r5, adrn1
        ldr r6, adrn2
        ldr r1, [r5]
        ldr r2, [r6]
        /* Ejecutamos la instruccion*/
        mul r1, r1, r2
        bl printf @Imprimimos resultado

        pop {ip, pc} @pop del ip y pc al stack

/* direcciones de los numeros en memoria*/
adrn1: .word num1
adrn2: .word num2

