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

myByte byte 0FFh,0

.code
main PROC
	;mov eax,0
	mov al,myByte 
	call DumpRegs
	mov	ah,[myByte+1]
	call DumpRegs
	dec ah 
	call DumpRegs
	inc ax
	call DumpRegs
	call WaitMsg
	exit
main ENDP
END main