; Maximum element of the array is calculated and stored at memory 2000H
; The size of the array is stored at memory location 2010H
; The array starts from memory location 2011H and continues till the size provided

	LXI H, 2010H
	MOV C,M			; Stores size of array
	SUB A
LOOP:   INX H			; Traverses through array
	CMP M
	JNC AHEAD
	MOV A,M
AHEAD: 	DCR C			; Keeps count of element traversed
	JNZ LOOP
	STA 2000H
	HLT	
	
