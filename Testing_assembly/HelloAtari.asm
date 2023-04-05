// Text to screen

	org $2000			; main part

SAVEMSG = $0058 		; screen mem address

	ldy #0

LOOP	
	lda text,y
	sta (SAVEMSG),y
	iny
	cpy #12				; comparing Y with the value (12)
	bne	LOOP			; keep branching until equal
	jmp *
	
						;DATA
text
	.byte "HELLO ATARI!"
