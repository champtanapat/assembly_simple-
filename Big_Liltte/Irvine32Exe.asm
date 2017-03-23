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

myDword dword 12345678h
myByte	byte 12h
.code
main PROC
	mov eax,myDword
	call DumpRegs
	mov al,myByte
	call WaitMsg
	exit
main ENDP
END main