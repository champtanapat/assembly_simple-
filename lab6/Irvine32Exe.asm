TITLE      (.asm)

; Program Description:
; Author:
; Date Created:
; Last Modification Date:

Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib

; (insert symbol definitions here)

.data
word1	word	0A69Bh
byte1 	byte 	9bh


byte2 	byte		-100
word2	word	500


; (insert variables here)

.code

main PROC
	movzx 	eax,word1
	call 		DumpRegs
	
	movzx 	edx,byte1
	call 		DumpRegs
	
	movzx 	cx,byte1
	call 		DumpRegs
	
;	mov		eax,10000
;	call		Delay
	
	
	movsx	eax,word2
	call		WriteInt	
	call		DumpRegs
	
	movsx	edx,byte2
	call		WriteInt	
	call		DumpRegs
	
	
	
;	movsx	edx,byte1
	movsx	cx,byte2
	call 		DumpRegs
;	mov		eax,10000
	call		ReadInt
	
	exit
main ENDP
END main