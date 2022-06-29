ORG 1000h
	LETRA_A DB "A"
	LETRA_C DB "C"
	TABLA DB "ORGANIZACION Y LA COMPUTACION"
	FIN_TABLA DB ?
ORG 2000h
	MOV AL, LETRA_A
	MOV AH, LETRA_C
	MOV BX, OFFSET TABLA - 1
	MOV CX, OFFSET FIN_TABLA
	MOV DH, 0 ; CONTADOR
LOOP: INC BX
	CMP BX, CX ; PREGUNTA SI LLEGO AL LIMITE
	JZ FIN
	MOV DL, [BX]
	CMP DL, AL ; IF BX = 'A'
	JNZ LOOP
	INC BX ; BX++
	CMP BX, CX ; PREGUNTA SI LLEGO AL LIMITE
	JZ FIN
	MOV DL, [BX] 
	CMP DL, AH ; IF BX = 'C'
	JNZ LOOP
	INC DH
	JMP LOOP
FIN: HLT
END