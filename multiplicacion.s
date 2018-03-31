/* Programa hello.word */
/* Autor: David Valenzuela 	 */

.text
.align 2
.global main
.type main,%function

main:	
	ldr r5, =num1
	ldr r6, =num2
	ldr r5, [r5]
	ldr r6, [r6]
	mul r5, r5, r6
	bl printf
	bx lr


.data
.align 2
num1:
	.word 5
num2:
	.word 4

