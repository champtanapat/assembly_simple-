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
oneByte byte 78h
oneWord word 1234h
oneDword dword 12345678h
.code
main PROC
	mov eax,0
	call DumpRegs
	mov al,oneByte
	call DumpRegs
	mov ax,oneWord
	call DumpRegs
	mov eax,oneDword
	call DumpRegs
	call WaitMsg
	exit
main ENDP
END main