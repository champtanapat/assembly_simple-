TITLE dffg      (.asm)

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
txt1 byte "Input Upper: ",0
txt2 byte "Ouput Lower: ",0
.code
main PROC
	mov eax,0
	mov edx,offset txt1
	call WriteString
	
	call ReadChar 
	call WriteChar
	
	call Crlf
	mov edx,offset txt2
	call WriteString
	
	add al,20h
	call WriteChar 
	call ReadChar
	
	exit
main ENDP
END main