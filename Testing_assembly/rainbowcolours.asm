// The most famous effect

SDMACT1 = 559
COLBK  = $d01a ; background colour
VCOUNT = $d40b ; verticol counter

	org $2000		; main part
	
start	lda #0
		sta SDMACT1
	
loop	lda VCOUNT
		sta COLBK
		jmp loop
	
	run start 
	