.text
.align 2
.global main
.type main,%function

main:
	stmfd sp!, {lr}	/* SP = R13 link register */
	
	/*Instruccion para mostrar una cadena*/
	ldr r0, =num1
	ldr r1, =num2
	bl puts
	
	/* salida correcta */
	mov r0, #0
	mov r3, #0
	ldmfd sp!, {lr}	/* R13 = SP */
	bx lr

.data
.align 2
num1:
	.load 5

.data
.align 2
num2:
	.load 5