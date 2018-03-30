/* Programa hello.word */
/* Autor: David Valenzuela */

.text
.align 2
.global main
.type main,%function

main:
	stmfd sp!, {lr}	/* SP = R13 link register */
	MUL R2, #3, #4
	bl puts