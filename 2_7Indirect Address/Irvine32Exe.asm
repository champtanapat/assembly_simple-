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
	byteVal byte 10h	;,20h

.code
main PROC
	mov esi,offset byteVal
	mov al,[esi]
	call DumpRegs
	call WaitMsg
	exit
main ENDP
END main