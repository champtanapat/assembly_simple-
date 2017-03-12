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
four byte 4 
one byte 1

; (insert variables here)

.code
main PROC
	mov ebx,0 
	mov bl,four
	neg one 
	add bl,one
	call DumpRegs
	call WaitMsg 
	
	exit
main ENDP
END main