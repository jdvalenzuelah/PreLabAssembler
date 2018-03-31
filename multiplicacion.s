
/* Autor: David Valenzuela 	 */

.text
.align 2
.global main
.type main,%function

main:	
	ldr r5, =num1
	ldr r6, =num2
	mul r5, r5, r6
	bl puts

	bx lr


.data
.align 2
num1:
	.word 5
num2:
	.word 4
form:
	.asciz "%f"

