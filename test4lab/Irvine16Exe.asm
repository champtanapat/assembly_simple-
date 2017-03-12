TITLE      (.asm)

; Program Description:
; Author:
; Date Created:
; Last Modification Date:

Include Irvine16.inc

IncludeLib \masm32\lib\Irvine16.lib

; (insert symbol definitions here)

.data

; (insert variables here)

.code
main PROC
	mov ax,@data
	mov ds,ax

	call DumpRegs
	exit
main ENDP
END main