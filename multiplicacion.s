/* Programa hello.word */
/* Autor: David Valenzuela 	 */

.text
.align 2
.global main
.type main,%function

main:
	mov R2, #3
	mov R3, #3
	MUL R2, R3, R2
	bx R2