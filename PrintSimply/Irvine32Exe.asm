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

txt byte "Hello World",0

.code
main PROC
	mov edx,offset txt
	call WriteString 

	call ReadInt
	exit
main ENDP
END main