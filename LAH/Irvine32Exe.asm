TITLE  Lahf ‚À≈¥§Ë“¢Õß·ø≈°√’®‘  ‡°Á∫„π ah     (.asm)

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
	save byte ?

; (insert variables here)

.code
main PROC
	
	lahf 
	mov save,ah
	call DumpRegs
	call WaitMsg
	exit
main ENDP
END main