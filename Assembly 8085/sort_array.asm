; Program to sort an array of numbers (using bubblesort technique)



START:	LXI H,2000H	; iteration 
	MVI D,00H
	MOV C,M
	DCR C		; c contains size of the array
	INX H
CHECK: 	MOV A,M
	INX H
	CMP M
	JC NEXTBYTE	; if 2 consecutive value already sorted
	JZ NEXTBYTE	; if 2 consecutive values equal
	MOV B,M
	MOV M,A
	DCX H
	MOV M,B
	INX H
	MVI D,01H
NEXTBYTE: DCR C		; Go to the next byte
	JNZ CHECK
	MOV A,D
	CPI 01H
	JZ START	; next iteration
	HLT
