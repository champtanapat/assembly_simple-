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

; (insert variables here)

.code
main PROC

	mov ecx,26
	mov al,'A'

L1:  call WriteChar 
	inc al
	Loop L1
	call ReadInt 
	
	exit
main ENDP
END main