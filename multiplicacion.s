/* Programa hello.word */
/* Autor: David Valenzuela 	 */

.text
.align 2
.global main
.type main,%function

main:
	stmfd sp!, {lr}	/* SP = R13 link register */
	mov R2, #0
	mov R3, #3
	mov R4, #4
	add R2, R3, R4
	bl puts
	bx lr
