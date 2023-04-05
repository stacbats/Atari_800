// Text to screen

	org $2000			; main part

SAVEMSG = $0058 		; screen mem address

	ldy #0
	
	lda text
	sta (SAVEMSG),y
	
	jmp *
	
;DATA
text
	.byte "A"


 
	 